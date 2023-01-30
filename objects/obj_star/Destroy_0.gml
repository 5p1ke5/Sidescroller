/// @description Creates particle effect when collected.
particle_star(global.particleSystem, 64, bbox_left, bbox_top, bbox_right, bbox_bottom, 0, 359, ps_shape_ellipse, ps_distr_gaussian);

//Play the sound effect.
audio_play_sound(sfx_sound_confirm, 0, false);