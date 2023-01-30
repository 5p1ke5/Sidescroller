/// @description Move with owner, fire rounds.

//If owner can't be found destroys itself without calling destroy code and exits immediately.
if (!instance_exists(owner))
{
	show_debug_message("Owner not found.");
	instance_destroy(id, false);
	exit;
}


//Links position to owner's position.
x = owner.x - (2 * owner.facing);
y = owner.y;

cooldownTimer--;
if (cooldownTimer < 0)
{
	var _projectile = instance_create_depth(x, y, depth, projectile);
	var _angle = angle;
	
	with (_projectile)
	{
			hsp = dsin(_angle) * spd;
			vsp = dcos(_angle) * spd;
	}
	
	rounds--;
	if (rounds <= 0)
	{
		instance_destroy();
	}
	
	cooldownTimer = cooldown;
}
		
	