/// @description Makes all of owner's bolts home in on the target location.
var _i = 0, _targetX, _targetY;

show_debug_message(string(owner));

//TODO: Find out why I can't get this to detect when the owner is a player object.
if (owner != noone)
{
	_targetX = mouse_x;
	_targetY = mouse_y;
}
else
{
	/*
	_targetX = owner.target.x;
	_targetY = owner.target.y;
	*/
}		

//for now this only works for players. May give NPCs a different version.
while (instance_find(obj_electrobolt, _i) != noone)
{
	var _missile = instance_find(obj_electrobolt, _i);
	
	if (_missile.owner == owner)
	{
		with (_missile)
		{
			if (point_distance(x, y, _targetX, _targetY) > MELEE_RANGE)
			{
				var _targetAngle = point_direction(x, y, _targetX, _targetY) + 90;
				angle = _targetAngle;
				hsp = dsin(angle) * 3;
				vsp = dcos(angle) * 3 ;
			}
			/*
				angle += 5 * sign(angle - (point_direction(x, y, _targetX, _targetY)));
				hsp = dsin(angle) * 6;
				vsp = dcos(angle) * 6 ;
			if (point_distance(x, y, _targetX, _targetY) > MID_RANGE)
			{
				angle = point_direction(x, y, _targetX, _targetY) + 90;
				hsp = dsin(angle) * 6;
				vsp = dcos(angle) * 6 ;
			}
			*/
		}
	}
	
	_i++;
}



// Inherit the parent event
event_inherited();

