/// @description Rotates weapon by arc amount.

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

//Rotates self by spd.
angle += dir * spd;
image_angle = angle;

//Sets owner's arm angle to match own angle variable.
var _angle = angle;
with (owner)
{
	angle = _angle;
}

//Decrements arc. Destroys self upon finishing its arc.
arc -= spd;
if (arc < 0)
{
	instance_destroy();
}