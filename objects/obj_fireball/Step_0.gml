/// @description Only uses some physics.

//Has gravity.
vsp = phys_gravity(vsp, grav, TERMINAL_VELOCITY);


//Instead of stopping when it hits a wall or floor, instead bounces off and decrements total bounces.
if (phys_floor_collision_bounce(vsp) == -vsp)
{
	vsp = -vsp;
	
	bounces--;
	if (bounces < 0)
	{
		instance_destroy();
	}
}


if (phys_wall_collision_bounce(hsp) == -hsp)
{
	hsp = -hsp;
	
	bounces--;
	if (bounces < 0)
	{
		instance_destroy();
	}
}

//Inherits.
event_inherited();

//Particle effect.
particle_flame(global.particleSystem, 3, bbox_left, bbox_top, bbox_right, bbox_bottom, 0, 359, ps_shape_rectangle, ps_distr_linear);
/*
var _col2 = make_color_hsv(hue / 2, 255, 255);
particle_confetti_burst(global.particleSystem, -2, bbox_left, bbox_top, bbox_right, bbox_bottom, image_blend, _col2, 0, 359, ps_shape_rectangle, ps_distr_linear);
*/

//Checks if the object is on the ground.
grounded = (place_meeting(x, y + 1, BLOCK)) || (bottom(bbox_bottom + 1, obj_oneWay));