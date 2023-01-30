/// @description on destruction unlinks self
if (instance_exists(owner))
{
	with (owner)
	{
		myTether = noone;
	}
}
