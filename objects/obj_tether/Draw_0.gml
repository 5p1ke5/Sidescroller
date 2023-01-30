/// @description Draws line between self and owner.

//May destroy self .
if !instance_exists(owner) || (owner.myTether != id)
{
	instance_destroy();
}

//Draws line.
draw_line_color(x, y, owner.x, owner.y, c_red, c_red);

var _angle = point_direction(owner.x, owner.y, x, y);

//Draws the hand.
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, _angle, c_white, 1);