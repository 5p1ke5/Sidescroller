/// @description moves, does particle things


event_inherited();

var _angle = point_direction(x, y, x - hsp, y - vsp);

particle_electric(global.particleSystem, 1, x, y, x, y, _angle - 5, _angle + 5, ps_shape_ellipse, ps_distr_gaussian);
