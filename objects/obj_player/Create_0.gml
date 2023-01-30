/// @description inherits,  reinitializes doll variables.
event_inherited();

doll_create(global.maxHP, global.hp, global.faces[global.playerFaceIndex], global.hairs[global.playerHairIndex], 
global.undershirts[global.playerUndershirtIndex], global.overshirts[global.playerOvershirtIndex], global.sleeves[global.playerSleevesIndex], 
global.pants[global.playerPantsIndex], 
//Colors
global.playerSkinColor, global.playerHairColor, global.playerUndershirtColor, global.playerOvershirtColor, global.playerSleevesColor, global.playerPantsColor);

//Jumps
jumps = global.maxJumps;

//Sets the player to spawn at the targetted location.
x = global.playerSpawnX;
y = global.playerSpawnY;
