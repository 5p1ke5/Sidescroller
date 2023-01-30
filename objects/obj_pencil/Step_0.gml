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

image_angle = point_direction(x, y, x + hsp, y + vsp);

//Particle effect.
//particle_frost(global.particleSystem, 4, bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, image_angle - 5, image_angle + 5, ps_shape_ellipse, ps_distr_linear);