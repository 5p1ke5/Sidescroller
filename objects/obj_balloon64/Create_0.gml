/// @description Randomly generates a color for the balloon.
color = make_color_hsv(irandom(255), 255, 255);
image_speed = 0.25

if (ds_list_find_index(global.starsCollected, id) != -1)
{
	instance_destroy();
}
