/// @description Inherits, initialize variables for specific npc.
event_inherited();

npc_initialize("Jill", "I lost my wings in the castle and now I can't get back down! If I had my wings I could just fly.");

//Randomly generates some of them.
var _face = global.faces[5];
var _hair = global.hairs[7];
var _undershirt =  global.undershirts[1];
var _overshirt =  global.overshirts[0];
var _sleeves = global.sleeves[1];
var _pants = global.pants[0];

var _skinColor =  global.npcSkinColors[1];
var _hairColor =   c_black;
var _undershirtColor =  c_red;
var _overshirtColor =  c_red;
var _sleevesColor = c_red;
var _pantsColor =  c_black;

doll_create(1000, 1000, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsColor );
