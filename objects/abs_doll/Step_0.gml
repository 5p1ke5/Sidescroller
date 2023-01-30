/// @description Inherits physics, living, decrements timers.

//Processes held item. Might need to split into player/npc variants.
doll_myHeld();

doll_animate();

doll_timers();

// Inherit the parent event
event_inherited();

