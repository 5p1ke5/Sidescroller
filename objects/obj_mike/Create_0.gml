/// @description Inherits, initialize variables for specific npc.
event_inherited();

npc_initialize("Mike", "Hi! You can use WASD move. Space bar jumps.");

//Randomly generates some of them.
var _face = global.faces[19];
var _hair = global.hairs[12];
var _undershirt =  global.undershirts[0];
var _overshirt =  global.overshirts[3];
var _sleeves = global.sleeves[1];
var _pants = global.pants[0];

var _skinColor =  global.npcSkinColors[0];
var _hairColor =   global.npcHairColors[0];
var _undershirtColor =   make_color_rgb(0, 0, 150);
var _overshirtColor =   make_color_rgb(0, 90, 150);
var _sleevesColor = make_color_rgb(0, 90, 150);
var _pantsColor =  make_color_rgb(0, 0, 150);

doll_create(1000, 1000, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsColor );
