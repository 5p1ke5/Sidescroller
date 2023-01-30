/// @description Initializes starting variables.

// Inherit the parent event
event_inherited();

hurtbox_initialize(5, 4, 4, noone);

//Assigns physics
phys_initialize(0, 0, 0, 0, false);

//Can bounce  3 times before disappearing.
bounces = 3;