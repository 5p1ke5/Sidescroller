/// @description Allows player to progress to main game.

if (ANY_BUTTON_RELEASED) && (time > game_get_speed(gamespeed_fps) )
{
	transition_board(xTo, yTo, roomTo);
	audio_play_sound(sfx_sound_confirm, 0, false);
	audio_play_sound(bgm_theme, 0, true);
}

time++;