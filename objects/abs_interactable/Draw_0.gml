/// @description Draws self, interactable icon over player if active.
//draw_self();

if (active)
{
	if (instance_exists(obj_player))
	{
		draw_sprite(spr_interactIcon, 0, obj_player.x, obj_player.y - 8);
	}
}