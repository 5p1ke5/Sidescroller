/// @description Destroys self if already collected.
if (global.maxJumps > 1)
{
	instance_destroy();
}

// Inherit the parent event
event_inherited();

