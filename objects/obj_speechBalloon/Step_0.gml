/// @description Overrides parent. Doesn't float up, just slowly fades. Always stays on same x as owner.

if (instance_exists(owner))
{
	x = owner.x;	
}

time--;

if (time < 0)
{
	instance_destroy();	
}