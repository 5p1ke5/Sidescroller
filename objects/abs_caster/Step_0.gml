/// @description casters destroy themselves at the beginning or end of their step events. Can be replaced with just instance destroy to make it so cost is incremented some other way.

//Reduces power points by cost.
var _cost = cost;
with (owner)
{
	pp -= _cost;
}

instance_destroy();