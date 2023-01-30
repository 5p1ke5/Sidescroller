/// @function pause_enter()
/// @description Enters the pause menu
function pause_enter() {

	///Saves the current room. This must be reset upon return.
	room_persistent = true;

	///Saves the current room so that it can be returned to after exiting the pause menu.
	global.lastRoom = room;

	//Goes to the pause menu.
	//room_goto(pause menu)


}

/// @function pause_exit()
/// @description Exits the pause menu, returns to the previous room.
function pause_exit() {

	//Returns to previous room.
	room_goto(global.lastRoom);

	//Sets the room as non-persistent.
	room_persistent = false;


}
