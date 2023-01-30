/// @description Destroys self if already collected.
if (global.tetherCollected)
{
	instance_destroy();
}

// Inherit the parent event
event_inherited();

