
//Doll that created this object.
var _owner = owner;

//Object collided with, to be picked up by the doll.
var _pickUp = other;

//Links the picked up object to this object's owner.
with (_pickUp)
{
	owner = _owner;
	held = true; //Maybe just use instance_exists(owner)?
}

//Links this object's owner to the picked up object.
with (owner)
{
	myTK = _pickUp;
}