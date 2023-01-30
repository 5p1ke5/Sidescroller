/// @function doll_create(_maxHP, _hp, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsCr) 
/// @description initializes variables for a doll object.
/// @param _maxHP maximum hp for this doll.
/// @param _hp current hp
/// @param _face face sprite being used.
/// @param _hair hair sprite being used.
/// @param _undershirt undershirt sprite being used.
/// @param _overshirt overshirt sprite being used.
/// @param _sleeves sleeve sprite being used.
/// @param _pants pants sprite being used.
/// @param _skinColor skin color for this sprite.
/// @param _hairColor hair color for this sprite.
/// @param _undershirtColor color for torso clothing.
/// @param _sleevesColor Color for sleeves.
/// @param _pantsColor Color for pants.
function doll_create(_maxHP, _hp, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsColor) 
{
	//Initializes instance variables.
	living_create(_maxHP, _hp);
	
	//For now at 100 but will likely remove later.
	maxPP = 100;
	pp = 100;
	face = _face;
	hair = _hair;
	undershirt = _undershirt;
	overshirt = _overshirt;
	sleeves = _sleeves;
	pants = _pants;
	skinColor = _skinColor;
	hairColor = _hairColor;
	overshirtColor = _overshirtColor;
	undershirtColor = _undershirtColor;
	sleevesColor = _sleevesColor;
	pantsColor = _pantsColor;
	
	//Extra things that might be linked to certain clothing options.
	backHair = global.backHairs[hair];

	//initialize physics.
	phys_initialize(DOLL_GRAV, DOLL_FRICT, 0, 0, true);

	//Sprites. These ones are changed on the fly based on whether running or jumping.
	armBSprite = spr_dollArmBStand;
	bodySprite = spr_dollBodyStand;
	armASprite = spr_dollArmAStand;
	
	sleevesBSprite = global.sleevesBStand[sleeves];
	pantsSprite = global.pantsStand[pants];
	sleevesASprite = global.sleevesAStand[sleeves];


	//The item  currently being selected from global.inventory
	inventoryIndex = 0;
	
	//The angle the spell is being cast at. If no spell is being cast it is at -1.
	angle = -1;

	//How fast the player can accelerate. Is added to hsp, to a limit of maxSpeed.
	accel = DOLL_ACCEL;

	//The highest the player can accelerate themselves to.
	maxSpeed = DOLL_MAX_SPEED;

	//The force appled when the player character jumps. Subtracted from vsp.
	jumpHeight = DOLL_JUMP_HEIGHT;

	//Which direction the doll is attempting to move.
	hdir = 0;
	
	//Which direction the doll is facing.
	facing = sign(image_xscale);

	image_speed = 0.25;

	///Timers
	//TODO: Make these into structs.
	//Number of seconds to regenerate 1 SP. Lower is faster.
	ppRegen = .2 ;
	ppRegenTimer = 0;
	
	//Amount of time needed to cast a spell again.
	delayTimer = 0;

	//Tether being used.
	myTether = noone;
	
	//Pointer to object being held with Telekinesis.
	myTK = noone;
	
	//Object being held.
	myHeld = noone;
	
	
	
	//Instance being targetted. For players this is set when they're clicked on. For NPCs it's whoever they want to attack.
	target = noone;
}

/// @function doll_animstate_struct(_armBSprite, _bodySprite, _armASprite, _sleevesBArray, _pantsArray, _sleevesAArray)
/// @description Data structure that holds sprites for animating.
/// @param _armBSprite The sprite to set armB to.
/// @param _bodySprite The sprite to set the body to.
/// @param _armASprite The sprite to set armA to.
/// @param _sleevesBArray The array containing sprite variants for the sleevesB sprite.
/// @param _bodyArray The array containing sprite variants for the body sprite.
/// @param _sleevesAArray The array containing sprite variants for the sleevesA sprite
function doll_animstate_struct(_armBSprite, _bodySprite, _armASprite, _sleevesBArray, _pantsArray, _sleevesAArray)
{
	var _myStruct = 
	{
		armBSprite : _armBSprite,
		bodySprite : _bodySprite,
		armASprite : _armASprite,
		sleevesBArray : _sleevesBArray,
		pantsArray : _pantsArray,
		sleevesAArray : _sleevesAArray,
	}
	
	return _myStruct;
}

/// @function doll_animstate_set(_animstate)
/// @description Sets the doll's sprite to correspond to that contained in the passed animstates.
/// @param _animstate animstate struct being used to set the object's sprite.
function doll_animstate_set(_animstate)
{
	
			armBSprite = _animstate.armBSprite;
			bodySprite = _animstate.bodySprite;
			armASprite = _animstate.armASprite;
			
			sleevesBSprite = _animstate.sleevesBArray [sleeves];
			pantsSprite = _animstate.pantsArray[pants];
			sleevesASprite = _animstate.sleevesAArray[sleeves];
	
}

/// @function doll_movement()
/// @description Makes the doll move. Returns true if the player character is being ordered to move.
/// @param _hdir Horizontal direction the doll is trying to move. -1, 0, or 1.
function doll_movement(_hdir) 
{
	/// Left and right controls.
	//Gets controller input for horizontal direction.
	hdir = _hdir


	//Sets the direction the object is facing. This will be used when animating the sprite.
	if (hdir != 0)
	{
		//Modifies the hsp variable.
		hsp = phys_force_add(hsp, hdir * accel, maxSpeed);
		
		if (grounded)
		{
			facing = hdir;
		}
	}

	
	/*
	if (abs(hsp + (hdir * accel)) < maxSpeed)
	{
	    hsp += hdir * accel;
	}
*/
	return abs(hdir);
}



/// @function doll_animate()
/// @description Changes the doll's animstate.
function doll_animate()
{

	//Makes sure the sprite is facing the right way.
	image_xscale = facing;

	//Changes parts of the sprite that need to be changed by the animation.
	if (hdir == 0)
	{
		doll_animstate_set(global.animstateIdle)
	}
	else
	{
		doll_animstate_set(global.animstateRun)
	}

	if !(grounded)
	{
		if (vsp <= 0)
		{
			doll_animstate_set(global.animstateJumpUp)
		}


		if (vsp > 0)
		{
			doll_animstate_set(global.animstateJumpDown)
		}
	}

	if (angle != -1)
	{
		armASprite = spr_dollArmAStand;
		sleevesASprite = global.sleevesAStand[sleeves];
	}
}



/// @function doll_draw()
/// @description draws the doll object.
function doll_draw() 
{
	//offset. 
	//TODO: Find a slightly better way to check if running or not.
	var _yOffset = ((image_index % 6) < 3) * (bodySprite == spr_dollBodyRun);
	
	//Some clothes have values added to y when moving.
	draw_sprite_ext(armBSprite, image_index, x, y, image_xscale, image_yscale, image_angle, skinColor, image_alpha);
	draw_sprite_ext(sleevesBSprite, image_index, x, y, image_xscale, image_yscale, image_angle, sleevesColor, image_alpha);
	draw_sprite_ext(backHair, image_index, x, y + _yOffset, image_xscale, image_yscale, image_angle, hairColor, image_alpha);
	draw_sprite_ext(bodySprite, image_index, x, y, image_xscale, image_yscale, image_angle, skinColor, image_alpha);
	draw_sprite_ext(undershirt, image_index, x, y + _yOffset, image_xscale, image_yscale, image_angle, undershirtColor, image_alpha);
	draw_sprite_ext(pantsSprite, image_index, x, y, image_xscale, image_yscale, image_angle, pantsColor, image_alpha);
	draw_sprite_ext(overshirt, image_index, x, y + _yOffset, image_xscale, image_yscale, image_angle, overshirtColor, image_alpha);
	draw_sprite_ext(face, image_index, x, y + _yOffset, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	draw_sprite_ext(hair, image_index, x, y + _yOffset, image_xscale, image_yscale, image_angle, hairColor, image_alpha);
		
	if (angle != -1)
	{
		draw_sprite_ext(spr_dollArmACast, image_index, x - (2 * facing), y, image_xscale, image_yscale, angle, skinColor, image_alpha);
		draw_sprite_ext(sleevesASprite, image_index, x, y, image_xscale, image_yscale, angle, sleevesColor, image_alpha);
	}
	else
	{
		draw_sprite_ext(armASprite, image_index, x, y, image_xscale, image_yscale, image_angle, skinColor, image_alpha);
		draw_sprite_ext(sleevesASprite, image_index, x, y, image_xscale, image_yscale, image_angle, sleevesColor, image_alpha);
	}
}


/// @function doll_timers()
/// @description decrements timers.
function doll_timers() 
{
	
	//Delay before a spell can be cast again.

	//Regenerates SP.
	if (ppRegenTimer < (ppRegen * game_get_speed(gamespeed_fps)))
	{
		ppRegenTimer++;
	}
	else
	{
		if (pp < maxPP)
		{
			pp++;	
		}
		ppRegenTimer = 0;
	}


	//Casting delay timer.
	if (delayTimer > 0)
	{
		delayTimer--;
	}
}


/// @function doll_myHeld()
/// @description Processes the object being held by the doll, does different things based on that.
function doll_myHeld()
{
	if (!instance_exists(myHeld))
	{
		myHeld = noone;
		return noone;
	}
	
	_index = myHeld.object_index;
	switch (_index)
	{
	    case obj_tether:
			angle = point_direction(x, y, myHeld.x, myHeld.y) + 90;
	        break;
	    default:
	        // code here
	        break;
	}
	
	return myHeld;
}


/// @function doll_instance_create(_doll, _object, _spd = 0)
/// @description Creates an instance of _object at the x, y coordinates of a specified _doll instance. Sets owner and angle variables on the created instance. Returns created instance.
/// @param _doll Doll object. 
/// @param _object Object to create an instance of.
/// @param spd Speed for object to move towards 'angle' at.   If 'undefined' does not define physics for the object.
function doll_instance_create( _doll, _object, _spd)
{
		//Maybe put in some manner of non-static doll_instance_create(_doll, _object, _spd = 0) function?
		// would return created instance so in the Use() function for children could be further modified.
		var _x = _doll.x;
		var _y = _doll.y;
		var _depth = _doll.depth - 1;
		var _angle = _doll.angle;
		
		var _instance = instance_create_depth(_x, _y, _depth, _object);
		
		with (_instance)
		{
			owner = _doll;
			angle = _angle;
			
			if (_spd != undefined)
			{
				hsp = dsin(_angle) * _spd;
				vsp = dcos(_angle) * _spd;
			}
		}
		
		return _instance;
}

/// @function doll_meleeInstance_initialize(_owner, _sprite, _damage, _arc, _spd, _angle)
/// @description initialized a held melee instance
/// @param _owner Instance index of creating object (usually a doll)
/// @param _sprite sprite index to be assigned to the created melee instance.
/// @param _damage damage the melee instance will deal.
/// @param _arc degrees the arc the instance will swing across
/// @param _spd How fast the instance will swing across that arc
/// @param _angle the angle the instance starts at.
function doll_meleeInstance_initialize(_owner, _sprite, _damage, _arc, _spd, _angle)
{
	owner = _owner;
	//Todo: Actually program knockback values.
	hurtbox_initialize(_damage, 3, 3, owner);
	
	sprite_index = _sprite;
	mask_index = _sprite;
	
	damage = _damage;
	
	arc = _arc;
	spd = _spd;
	
	angle = _angle;
	image_angle = angle;
	
	dir = -power(-1, angle div 180);
}

/// @function doll_firearmInstance_initialize(_owner, _sprite, _damage, _cooldown, _rounds, _angle, _projectile = obj_round)
/// @param _owner Instance index of creating object (usually a doll)
/// @description Creates a firearm instance held by a doll object.
/// @param _sprite sprite index to be assigned to the created firearm instance.
/// @param _damage damage the melee instance will deal.
/// @param _cooldown time in between firing bullets.
/// @param _rounds number of bullets to be fired per burst.
/// @param _angle Angle to start at
/// @param [_projectile] Object to be fired. By default a bullet but you could do a rocket or something too.
function doll_firearmInstance_initialize(_owner, _sprite, _damage, _cooldown, _rounds, _angle, _projectile = obj_round)
{
	//Make instance and owner reference each other.
	owner = _owner;
	
	
	sprite_index = _sprite;
	damage = _damage;
	cooldown = _cooldown;
	cooldownTimer = cooldown/4;
	rounds = _rounds;
	angle = _angle;
	image_angle = angle;
	
	projectile = _projectile;
}