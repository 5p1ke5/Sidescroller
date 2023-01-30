/// @description Creates a balloon

if (!instance_exists(obj_balloon))
{
	var _balloon = instance_create_depth(x, y, depth, obj_balloon);
	
	//Temp variables to be put in missile.
	var _angle = angle;
	var _owner = owner;
	
	with (_balloon)
	{
		angle = _angle;
		owner = _owner;
	}
}
// Inherit the parent event
event_inherited();

