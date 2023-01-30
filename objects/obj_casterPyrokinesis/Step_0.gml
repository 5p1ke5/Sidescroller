/// @description Creates a missile object, then destroys self.
var _missile = instance_create_depth(x, y, depth, obj_fireball);

//Temp variables to be put in missile.
var _angle = angle;
var _owner = owner;

with (_missile)
{
	angle = _angle;
	hsp = dsin(_angle) * 4;
	vsp = dcos(_angle) * 4;
	owner = _owner;
}
// Inherit the parent event
event_inherited();

