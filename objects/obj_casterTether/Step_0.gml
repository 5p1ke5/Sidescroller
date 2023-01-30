/// @description Creates a missile object, then destroys self.


//Checks if a tether has already been spawned.
//TODO: Make this a little smarter I think.
if (instance_exists(owner.myTether))
{
	instance_destroy();
	exit;
}

var _missile = instance_create_depth(x, y, depth, obj_tether);
//Play sound effect.
audio_play_sound(sfx_stickyHand, 0, false);

//Temp variables to be put in missile.
var _angle = angle;
var _owner = owner;

with (_missile)
{
	angle = _angle;
	hsp = dsin(_angle) * 12;
	vsp = dcos(_angle) * 12;
	owner = _owner;
}

//Sets owner's myTether
with (owner)
{
	myTether = _missile;
}

// Inherit the parent event
event_inherited();

