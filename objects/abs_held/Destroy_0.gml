/// @description If destroyed, unlinks self from the owner.
if (instance_exists(owner))
{
	with (owner)
	{
		myHeld = noone;
	}
}