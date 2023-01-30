/// @description Allows player to progress to main game.

if (ANY_BUTTON_RELEASED) && (time > game_get_speed(gamespeed_fps) )
{
	game_restart();
}

time++;