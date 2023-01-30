/// @description Either tries to grab an object with telekinesis, or maintains telekinesis.


//Checks if a telekinesis object is already being held.
//If not fires a telekinesis projectile.
if (instance_exists(owner.myTK))
{
	
	var _missile = owner.myTK;

	//Temp variables to be put in missile.
	var _angle = angle;
	
	//Sends held object flying.
	with (_missile)
	{
		angle = _angle;
		hsp = dsin(_angle) * 16;
		vsp = dcos(_angle) * 16;
		owner = noone;
	}
	
	with (owner)
	{
		myTK = noone;
	}
}

show_debug_message("Alt created!");
//Note: Does NOT inherit. Just destroys self. PP cost is only incremented once the projectile hits a valid telekinesis target.
instance_destroy();