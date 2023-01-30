///@description Physics, control, animation

//Physics and changing sprites.
event_inherited();

//Merge these into just myHeld?
if !instance_exists(myHeld)
{
	angle = -1;

	if(MOUSE_LEFT_BUTTON_RELEASED)
	{
		angle = point_direction(x, y, mouse_x, mouse_y) + 90;
	
		if (ds_list_size(global.inventory) > 0)
		{
			var _item = global.inventory[|inventoryIndex];
			_item.Use(id);
		}
	}
}

doll_movement(RIGHT_BUTTON - LEFT_BUTTON);

player_jump();



//Select inventory item.
inventoryIndex += (UP_BUTTON_RELEASED - DOWN_BUTTON_RELEASED)

if (inventoryIndex >= ds_list_size(global.inventory))
{
	inventoryIndex = 0;
}
if (inventoryIndex < 0)
{
	inventoryIndex = ds_list_size(global.inventory) - 1;
}




view_control();
