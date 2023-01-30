/// @description 
image_speed = 0.25;

if (ds_list_find_index(global.starsCollected, id) != -1)
{
	instance_destroy(id, false);
}
