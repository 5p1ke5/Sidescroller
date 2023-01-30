/// @description Inherits, initialize variables for specific npc.
event_inherited();

npc_initialize("Gene", "If you see '!' above your head, you can press E to interact with objects. Interact with your ship to go into space. In space, you can steer your spaceship by right clicking.");

//Randomly generates some of them.
var _face = global.faces[3];
var _hair = global.hairs[2];
var _undershirt =  global.undershirts[1];
var _overshirt =  global.overshirts[0];
var _sleeves = global.sleeves[1];
var _pants = global.pants[0];

var _skinColor =  global.npcSkinColors[3];
var _hairColor =   c_white;
var _undershirtColor =  c_red;
var _overshirtColor =  c_white
var _sleevesColor = c_red;
var _pantsColor =  c_black;

doll_create(1000, 1000, _face, _hair, _undershirt, _overshirt, _sleeves, _pants, _skinColor, _hairColor, _undershirtColor, _overshirtColor, _sleevesColor, _pantsColor );
