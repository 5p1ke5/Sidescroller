/// @description Inherits, initialize variables for specific npc.
event_inherited();

npc_initialize("Roger", "If you can beat my obstacle course you can have the double jump boots.");

//Randomly generates some of them.
var _face = global.faces[0];
var _hair = global.hairs[6];
var _undershirt =  global.undershirts[5];
var _overshirt =  global.overshirts[0];
var _sleeves = global.sleeves[0];
var _pants = global.pants[0];

var _skinColor =  global.npcSkinColors[8];
var _hairColor =   global.npcHairColors[0];
var _undershirtColor =  c_white;
var _overshirtColor =  c_white
var _sleevesColor = c_white;
var _pantsColor =  make_color_rgb(0, 120, 220);

doll_create(1000, 1000, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsColor );
