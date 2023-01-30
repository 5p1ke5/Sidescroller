/// @description Insert description here

// Inherit the parent event
event_inherited();

hurtbox_initialize(5, 4, 4, self);

//Assigns physics
phys_initialize(0.1, 0, 0, 0, false);

//Can bounce 4 times before disappearing.
bounces = 3;