/// @function transition_create(_room, _x, _y)
/// @description initializes variables for a transition object.
/// @param room The room the player will be moved to.
/// @param x the x coordinate the play3er will be moved to.
/// @param y the y coordinate the player will be moved to.
function transition_create(_room, _x, _y) 
{
	roomTo = _room;
	xTo = _x;
	yTo = _y;
}


/// @function transition_board(x, y, room)
/// @description sends the player to a new board. Also positions the PLAYER object at x, y
/// @param x The x coordinate the player object will be moved to.
/// @param y the Y coordinate the player object will be moved to.
/// @param room The room that will be moved to.
function transition_board(argument0, argument1, argument2) {

	global.playerSpawnX = argument0;
	global.playerSpawnY = argument1;
	var _room = argument2;


	room_goto(_room)
}
