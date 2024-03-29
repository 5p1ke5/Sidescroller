/// @description Inherit, initialize npc-specific variables.
event_inherited();

//Randomly generates some of them.
var _face = global.faces[irandom(array_length(global.faces) - 1)];
var _hair = global.hairs[irandom(array_length(global.hairs) - 1)];
var _undershirt =  global.undershirts[irandom(array_length(global.undershirts) - 1)];
var _overshirt =  global.overshirts[irandom(array_length(global.overshirts) - 1)];
var _sleeves = global.sleeves[0];
var _pants = global.pants[0];

var _skinColor =  make_color_hsv(irandom(255), 255, 255);
var _hairColor = make_color_hsv(irandom(255), 255, 255);
var _undershirtColor =   make_color_hsv(irandom(255), 255, 255);
var _overshirtColor =   make_color_hsv(irandom(255), 255, 255);
var _sleevesColor = _undershirtColor;
var _pantsColor =  make_color_hsv(irandom(255), 255, 255);

doll_create(100, 100, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, 
							_overshirtColor, _sleevesColor, _pantsColor);

npc_initialize("", "");
