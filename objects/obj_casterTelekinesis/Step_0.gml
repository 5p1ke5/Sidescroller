/// @description Either tries to grab an object with telekinesis, or maintains telekinesis.


//Checks if a telekinesis object is already being held.
//If not fires a telekinesis projectile.
if (!instance_exists(owner.myTK))
{
	
	var _missile = instance_create_depth(x, y, depth, obj_tkProjectile);

	//Temp variables to be put in missile.
	var _angle = angle;
	var _owner = owner;

	with (_missile)
	{
		angle = _angle;
		hsp = dsin(_angle) * 10;
		vsp = dcos(_angle) * 10;
		owner = _owner;
	}
}

//Note: Does NOT inherit. Just destroys self. PP cost is only incremented once the projectile hits a valid telekinesis target.
instance_destroy();