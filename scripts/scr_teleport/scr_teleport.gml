/// @function teleport_create(_xTo, _yTo)
/// @description initializes teleporter variables.
/// @param _xTo the x coordinate the colliding object is being teleported to. Setting to -1 means the  instance's x axis is not changed.
/// @param _yTo the y coordinate the colliding object is being teleported to. Setting to -1 means the  instance's y axis is not changed.
function teleport_create(_xTo, _yTo)
{
	xTo = _xTo;
	yTo = _yTo;
}

/// @function teleport(_xTo, _yTo, _instance)
/// @description teleports the passed object to the given coordinates.
/// @param _xTo the x coordinate the colliding object is being teleported to
/// @param _yTo the y coordinate the colliding object is being teleported to.
/// @param _instance the instance being created.
function teleport(_xTo, _yTo, _instance)
{
	if (_xTo != noone)
	{
		_instance.x = _xTo;
	}
	
	
	if (_yTo != -1)
	{
		_instance.y = _yTo;
	}
}