/// @description Initializes physics things, pickup variables.
event_inherited();

//If refers to an instance, that instance is holding this. OTherwise is not being held.
owner = noone;

//Used to check if the object is still being held by its owner

held = false;