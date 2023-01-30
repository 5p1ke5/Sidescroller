/// @function hurtbox_initialize(_damage, _hKnockback, _vKnockback)
/// @description initializes variables a hurtbox will have.
/// @param _damage the damage this hurtbox will deal.
/// @param _hKnockback Horizontal knockback.
/// @param _vKnockback Vertical knockback.
/// @param _owner The instance that this object is aligned to.
function hurtbox_initialize(_damage, _hKnockback, _vKnockback, _owner)
{
	damage = _damage;
	hKnockback = _hKnockback;
	vKnockback = _vKnockback;
	owner = _owner;
}