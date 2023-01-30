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

cooldown--;
if (cooldown < 0)
{
	/*
	Todo: code to fire a bullet
	*/
	
	rounds--;
	if (rounds <= 0)
	{
		instance_destroy();
	}
}