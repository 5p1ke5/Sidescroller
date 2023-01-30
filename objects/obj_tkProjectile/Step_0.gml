/// @description Inherit the parent event, destroy self if mouse is not being pressed.

//If the owner is destroyed, terminates self without destroy event.
if (!instance_exists(owner))
{
	instance_destroy(id, false);
	exit;
}

//Destroys self if mouse button is released or beyond range, but in this case does activate destroy event.
var _distance = point_distance(x, y, owner.x, owner.y);

if (_distance > range)
{
	instance_destroy();
	return;
}

//moves
x += hsp;
y += vsp;