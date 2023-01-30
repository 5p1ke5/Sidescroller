/// @description Inherits, initialize variables for specific npc.
event_inherited();

npc_initialize("Jade", "You can hold space to jump higher.");

//Randomly generates some of them.
var _face = global.faces[14];
var _hair = global.hairs[2];
var _undershirt =  global.undershirts[1];
var _overshirt =  global.overshirts[1];
var _sleeves = global.sleeves[1];
var _pants = global.pants[0];

var _skinColor =  global.npcSkinColors[9];
var _hairColor =   global.npcHairColors[1];
var _undershirtColor =  c_white;
var _overshirtColor =   make_color_rgb(230, 255, 0);
var _sleevesColor = _overshirtColor;
var _pantsColor =  make_color_rgb(0, 120, 170);

doll_create(1000, 1000, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsColor);
