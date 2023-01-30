/// @description Inherits physics, reacts to having telekinesis used on it.

//Registers as true if a valid caster is found.
var _casterFound = false;

//Checks if the owner of this object has created a telekinesis object.
for (var _i = 0; _i < instance_number(obj_casterTelekinesis); _i++)
{
	var _caster = instance_find(obj_casterTelekinesis, _i);
	if (_caster.owner == owner)
	{
		_casterFound = true;
	}
}

// Inherit the parent event if a caster is not made .
if (!_casterFound)
{
	//If it had an owner, unlinks with them.
	if (instance_exists(owner))
	{
		with (owner)
		{
			myTK = noone;
		}
		owner = noone;
	}
	
	event_inherited();
}
else if (instance_exists(owner))
{
	//held state.
	x = owner.x +  dsin(owner.angle) * 20;
	y = owner.y +  dcos(owner.angle) * 20;
}

