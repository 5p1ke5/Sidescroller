/// @description Inherit the parent event, destroy self if mouse is not being pressed.

//If the owner is destroyed, terminates self without destroy event.
if (!instance_exists(owner))
{
	instance_destroy(id, false);
	exit;
}

//Destroys self if mouse button is released or beyoned range, but in this case does activate destroy event.
var _distance = point_distance(x, y, owner.x, owner.y);

if (!MOUSE_LEFT_BUTTON) || (_distance > range)
{
	instance_destroy();
	return;
}

//Pulls owner towards self.

var _targetAngle = point_direction(owner.x, owner.y, x, y) + 90;

//Checks for collision with ground object.
if (collision_line(x, y, x + hsp, y + vsp, abs_ground, true, true))
{
	hsp = 0;
	vsp = 0;
}

if (hsp == 0) && (vsp == 0)
{
	if (_distance <= 16)
	{
		instance_destroy();
		return;
	}
	
	var _hspIncrease = dsin(_targetAngle) * 3;
	var _vspIncrease = dcos(_targetAngle) * 2;
	
	with (owner)
	{
		/*
		hsp = phys_force_add(hsp, _hspIncrease, TERMINAL_VELOCITY + 6);
		vsp = phys_force_add(vsp, _vspIncrease, TERMINAL_VELOCITY + 6);
		*/
		
		if (abs(hsp + _hspIncrease) <= TERMINAL_VELOCITY)
		{
			hsp += _hspIncrease;
		}
		
		if (abs(vsp + _vspIncrease) <= TERMINAL_VELOCITY + 6)
		{
			vsp += _vspIncrease;
		}
		
	}	
}

x += hsp;
y += vsp;