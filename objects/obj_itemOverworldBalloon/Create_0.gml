/// @description Initialize item variables.
var _color = make_color_hsv(irandom(255), 255, 255);
image_blend = _color;

item = new ItemConsumableInstancerColored("Balloon", noone, spr_balloon, 1, "Floats away when used.", 10, obj_balloon, 3, _color);