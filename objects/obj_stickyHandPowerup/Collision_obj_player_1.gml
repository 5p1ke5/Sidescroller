/// @description Gives the play a double jump.

	global.powers[0] = power_struct(0, obj_casterTether, 0, "Tether", noone);

with (other)
{
	array_copy(powerSet, 0, global.powers, 0, array_length(global.powers) )
}

// Inherit the parent event
event_inherited();

