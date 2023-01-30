/// @description Insert description here
var _array;
_array[0] = "FACE: " + string(global.playerFaceIndex);
_array[1] = "HAIR: " + string(global.playerFaceIndex);
_array[2] = "UNDERSHIRT: " + string(global.playerFaceIndex);
_array[3] = "OVERSHIRT: " + string(global.playerFaceIndex);
_array[4] = "SLEEVES: " + string(global.playerFaceIndex);
_array[5] = "PANTS: " + string(global.playerFaceIndex);
_array[6] = "START GAME";

//For now highlighting an option lets you change its color.
/*
_array[6] = "SKIN COLOR";
_array[7] = "HAIR COLOR";
_array[8] = "UNDERSHIRT COLOR";
_array[9] = "OVERSHIRT COLOR";
_array[10] = "SLEEVES COLOR";
_array[11] = "PANTS COLOR";
*/
menu_create(_array);


doll_create(global.maxHP, global.maxHP, global.faces[global.playerFaceIndex], global.hairs[global.playerHairIndex], 
global.undershirts[global.playerUndershirtIndex], global.overshirts[global.playerOvershirtIndex], global.sleeves[global.playerSleevesIndex], 
global.pants[global.playerPantsIndex], 
//Colors
global.playerSkinColor, global.playerHairColor, global.playerUndershirtColor, global.playerOvershirtColor, global.playerSleevesColor, global.playerPantsColor);

//Sets the preview doll to run.
doll_animstate_set(global.animstateRun)

//Sliders.
sliderRed = instance_find(obj_colorSliderRed, 0);
sliderGreen = instance_find(obj_colorSliderGreen, 0);
sliderBlue = instance_find(obj_colorSliderBlue, 0);