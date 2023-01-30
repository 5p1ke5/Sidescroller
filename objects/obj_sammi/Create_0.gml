/// @description Inherits, initialize variables for specific npc.
event_inherited();

npc_initialize("Sammi", "You can use the sticky hand in the giant tree to grapple. Just click the left mouse button.");

//Randomly generates some of them.
var _face = global.faces[14];
var _hair = global.hairs[9];
var _undershirt =  global.undershirts[6];
var _overshirt =  global.overshirts[0];
var _sleeves = global.sleeves[1];
var _pants = global.pants[0];

var _skinColor =  global.npcSkinColors[3];
var _hairColor =   c_green;
var _undershirtColor =  c_blue;
var _overshirtColor =  c_white
var _sleevesColor = c_blue;
var _pantsColor =  c_black;

doll_create(1000, 1000, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsColor );
