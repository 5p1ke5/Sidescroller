/// @function globals();
/// @description Initializes global variables.
function globals() 
{
	
	//Player stats.
	global.maxHP = 100;
	global.maxPP = 100;
	global.hp = global.maxHP;
	global.pp = global.maxPP;
	
	//How many times the player can jump.
	global.maxJumps = 1;
	
	//Stars collected.
	global.stars = 0;
	
	//Total stars in the game.
	global.maxStars = 100;
	
	//List of stars collected so far.
	global.starsCollected = ds_list_create();
	
	//Where the player spawns/
	global.playerSpawnX = 0;
	global.playerSpawnY = 0;
	
	
	//List of powers in the game.
	
	//Alt powers, used when pressing the right mouse button. Only some powers have these. If a power doesn't have an alt, it will be noone.
	//npcs can't usually use alt powers or may use a different version.
	global.tether = power_struct(0, obj_casterTether, 0, "Tether", noone);
	
	global.inventory = inventory_initialize();
	
	/*
	global.powers[0] = power_struct(0, noone, 0, "None", noone);
	
	global.powers[0] = power_struct(0, obj_casterTether, 0, "Sticky Hand", noone);
	global.powers[1] = power_struct(0, obj_casterPencil, game_get_speed(gamespeed_fps) / 2, "Pencil", noone);
	*/

	//Indexes for player clothing options.
	global.playerFaceIndex = 0;
	global.playerHairIndex = 0;
	global.playerUndershirtIndex = 0;
	global.playerOvershirtIndex = 0;
	global.playerSleevesIndex = 0;
	global.playerPantsIndex = 0;
	
	//Color indexes.
	global.playerSkinColor = c_orange;
	global.playerHairColor = c_aqua;
	global.playerUndershirtColor = c_red;
	global.playerOvershirtColor = c_blue;
	global.playerSleevesColor = c_blue;
	global.playerPantsColor = c_green;



	//Story variables.
	global.tetherCollected = false;






	//Time and skybox variables.
	global.time = 0;
	
	//Things for NPCs to say while idle.
	global.npcQuotesIdle[0] = "I sure love the beatles!";
	
	//Things for NPCs to say when they're fighting you.
	global.npcQuotesAggro[0] = "DIE DIE DIE DIE DIE DIE!";
	global.npcQuotesAggro[1] = "You're dead, kiddo!";
	global.npcQuotesAggro[2] = "Welcome to die!";
	global.npcQuotesAggro[3] = "Jerk!";
	global.npcQuotesAggro[4] = "You're finished!";
	global.npcQuotesAggro[5] = "I'll mutilate you!";
	global.npcQuotesAggro[6] = "Get wrecked!";
	global.npcQuotesAggro[7] = "You suck!";
	global.npcQuotesAggro[8] = "You stink!";
	global.npcQuotesAggro[9] = "I'LL CONSUME YOUR SOUL";
	
	//Values to be put in randomly generated NPCs.
	global.npcNames[0] = "Abby";
	global.npcNames[1] = "Andy";
	global.npcNames[2] = "Betty";
	global.npcNames[3] = "Bob";
	global.npcNames[4] = "Carla";
	global.npcNames[5] = "Cody";
	global.npcNames[6] = "Denise";
	global.npcNames[7] = "Don";
	global.npcNames[8] = "Eloise";
	global.npcNames[9] = "Ed";
	global.npcNames[10] = "Franciska";
	global.npcNames[11] = "Ford";
	global.npcNames[12] = "Gertrude";
	global.npcNames[13] = "Gareth";
	global.npcNames[14] = "Hilda";
	global.npcNames[15] = "Hector";
	global.npcNames[16] = "Ivana";
	global.npcNames[17] = "Isaac";
	global.npcNames[18] = "Jessica";
	global.npcNames[19] = "Jack";
	global.npcNames[20] = "Karen";
	global.npcNames[21] = "Kyle";
	global.npcNames[22] = "Lois";
	global.npcNames[23] = "Levi";
	global.npcNames[24] = "Michelle";
	global.npcNames[25] = "Mike";
	global.npcNames[26] = "Nikki";
	global.npcNames[27] = "Nathan";
	global.npcNames[28] = "Octavia";
	global.npcNames[29] = "Oliver";
	global.npcNames[30] = "Phyllis";
	global.npcNames[31] = "Percy";
	global.npcNames[32] = "Polly";
	global.npcNames[33] = "Quincy";
	global.npcNames[34] = "Rachel";
	global.npcNames[35] = "Roger";
	global.npcNames[36] = "Sally";
	global.npcNames[37] = "Sam";
	global.npcNames[38] = "Tiffany";
	global.npcNames[39] = "Todd";
	global.npcNames[40] = "Unique";
	global.npcNames[41] = "Ulysses";
	global.npcNames[42] = "Veronica";
	global.npcNames[43] = "Vance";
	global.npcNames[44] = "Wendy";
	global.npcNames[45] = "Wallace";
	global.npcNames[46] = "Xena";
	global.npcNames[47] = "Xavier";
	global.npcNames[48] = "Yvette";
	global.npcNames[49] = "Yuri";
	global.npcNames[50] = "Zoe";
	global.npcNames[51] = "Zach";
	
	global.npcSkinColors[0] = c_black1;
	global.npcSkinColors[1] = c_black2;
	global.npcSkinColors[2] = c_black3;
	global.npcSkinColors[3] = c_white1;
	global.npcSkinColors[4] = c_white2;
	global.npcSkinColors[5] = c_white3;
	global.npcSkinColors[6] = c_hispanic1;
	global.npcSkinColors[7] = c_hispanic2;
	global.npcSkinColors[8] = c_hispanic3;
	global.npcSkinColors[9] = c_asian1;
	global.npcSkinColors[10] = c_asian2;
	global.npcSkinColors[11] = c_asian3;
	
	
	global.npcHairColors[0] = c_blonde;
	global.npcHairColors[1] = c_black;
	global.npcHairColors[2] = c_brunette;
	global.npcHairColors[3] = c_darkBrunette;
	global.npcHairColors[4] = c_lightBrunette;
	global.npcHairColors[5] = c_ginger;
	
	
	//Clothes sets. Each one is a different sprite.
	
	//Faces.
	var _index = 0;
	while  (asset_get_index("spr_dollFace" + string(_index)) != -1)
	{
		global.faces[_index] = asset_get_index("spr_dollFace" + string(_index));
		_index++;
	}
	
	
	//Hairs.
	var _index = 0;
	while  (asset_get_index("spr_dollHair" + string(_index)) != -1)
	{
		global.hairs[_index] = asset_get_index("spr_dollHair" + string(_index));
		if (asset_get_index("spr_dollBackHair" + string(_index)) != -1)
		{
			global.backHairs[global.hairs[_index]] = asset_get_index("spr_dollBackHair" + string(_index));
		}
		else
		{
			global.backHairs[global.hairs[_index]] = spr_dollBlank;
		}
		_index++;
	}
		
	//Undershirts.
	var _index = 0;
	while  (asset_get_index("spr_dollUndershirt" + string(_index)) != -1)
	{
		global.undershirts[_index] = asset_get_index("spr_dollUndershirt" + string(_index));
		_index++;
	}
	
	
	//Overshirts.
	var _index = 0;
	while  (asset_get_index("spr_dollOvershirt" + string(_index)) != -1)
	{
		global.overshirts[_index] = asset_get_index("spr_dollOvershirt" + string(_index));
		_index++;
	}
	
	//Pants and sleeves are split into different sprite sets.
	//Pants
	var _index = 0;
	while  (asset_get_index("spr_dollPants" + string(_index) + "Stand") != -1)
	{
		global.pants[_index] = asset_get_index("spr_dollPants" + string(_index) + "Stand");
		global.pantsStand[global.pants[_index] ] = asset_get_index("spr_dollPants" + string(_index) + "Stand");
		global.pantsRun[global.pants[_index] ] = asset_get_index("spr_dollPants" + string(_index) + "Run");
		global.pantsJumpUp[global.pants[_index] ] = asset_get_index("spr_dollPants" + string(_index) + "JumpUp");
		global.pantsJumpDown[global.pants[_index] ] =  asset_get_index("spr_dollPants" + string(_index) + "JumpDown");;
		_index++;
	}
	
	//Sleeves
	var _index = 0;
	while  (asset_get_index("spr_dollSleeve" + string(_index) + "AStand") != -1)
	{
		global.sleeves[_index] = asset_get_index("spr_dollSleeve" + string(_index) + "AStand") ;
		global.sleevesAStand[global.sleeves[_index] ] = asset_get_index("spr_dollSleeve" + string(_index) + "AStand") ;
		global.sleevesARun[global.sleeves[_index] ] = asset_get_index("spr_dollSleeve" + string(_index) + "ARun") ;
		global.sleevesAJumpUp[global.sleeves[_index] ] = asset_get_index("spr_dollSleeve" + string(_index) + "AJumpUp") ;
		global.sleevesAJumpDown[global.sleeves[_index] ] =  asset_get_index("spr_dollSleeve" + string(_index) + "AJumpDown") ;
		
		global.sleevesBStand[global.sleeves[_index] ] = asset_get_index("spr_dollSleeve" + string(_index) + "BStand") ;
		global.sleevesBRun[global.sleeves[_index] ] = asset_get_index("spr_dollSleeve" + string(_index) + "BRun") ;
		global.sleevesBJumpUp[global.sleeves[_index] ] = asset_get_index("spr_dollSleeve" + string(_index) + "BJumpUp") ;
		global.sleevesBJumpDown[global.sleeves[_index] ] =  asset_get_index("spr_dollSleeve" + string(_index) + "BJumpDown") ;
		_index++;
	}
	

	//Animation states. Each one corresponds to a 'pose' the doll can do.
	global.animstateRun = doll_animstate_struct(spr_dollArmBRun, spr_dollBodyRun, spr_dollArmARun, global.sleevesBRun, global.pantsRun, global.sleevesARun);
	global.animstateIdle = doll_animstate_struct(spr_dollArmBStand, spr_dollBodyStand, spr_dollArmAStand, global.sleevesBStand, global.pantsStand, global.sleevesAStand);
	global.animstateJumpUp = doll_animstate_struct(spr_dollArmBJumpUp, spr_dollBodyJumpUp, spr_dollArmAJumpUp, global.sleevesBJumpUp, global.pantsJumpUp, global.sleevesAJumpUp);
	global.animstateJumpDown = doll_animstate_struct(spr_dollArmBJumpDown, spr_dollBodyJumpDown, spr_dollArmAJumpDown, global.sleevesBJumpDown, global.pantsJumpDown, global.sleevesAJumpDown);
	


	//Particle system.
	global.particleSystem = part_system_create();
	
	//Background music.
	global.bgm = noone;
}
