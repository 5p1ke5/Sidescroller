/// @description sets as active while intersecting with the player.

active = false;
	
if (place_meeting(x, y, obj_player))
{
	active = true;
}
	
//While active, can be used by the player to call event 0.
if (active)
{
	if ((X_BUTTON_RELEASED))
	{
		//Calls event 0.
		event_user(0);
	}
}