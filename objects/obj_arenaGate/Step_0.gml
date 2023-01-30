/// @description Once all enemies are destroyed, opens the gate.
if (open)
{
	event_inherited();
}
else if (instance_number(abs_npc) == 0)
{
	image_speed = 1;
}