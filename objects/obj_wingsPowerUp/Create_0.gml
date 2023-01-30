/// @description Destroys self if already collected.
if (global.maxJumps > 2)
{
	instance_destroy();
}

// Inherit the parent event
event_inherited();

