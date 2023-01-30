/// @description Insherits, lets player pick clothing options.
event_inherited();

//Sets optionSelected with the color sliders.



var _increment = RIGHT_BUTTON_RELEASED - LEFT_BUTTON_RELEASED;
			
//Set colors.
var _red = sliderRed.val;
var _green = sliderGreen.val;
var _blue = sliderBlue.val;
			

switch (optionSelected)
{
		case 0: //Face
			global.playerFaceIndex += _increment;
			
			if (global.playerFaceIndex < 0)
			{
				global.playerFaceIndex = array_length(global.faces) - 1;	
			}
			
			if (global.playerFaceIndex >= array_length(global.faces))
			{
				global.playerFaceIndex = 0;
			}

			face = global.faces[global.playerFaceIndex];

			if (MOUSE_LEFT_BUTTON)
			{
				skinColor = make_color_rgb(_red, _green, _blue);
				global.playerSkinColor = skinColor;
			}
			
			options[optionSelected] =  "FACE: " + string(global.playerFaceIndex);
		break;
		
		case 1: //Hair
			global.playerHairIndex += _increment;
			
			if (global.playerHairIndex < 0)
			{
				global.playerHairIndex = array_length(global.hairs) - 1;	
			}
			
			if (global.playerHairIndex >= array_length(global.hairs))
			{
				global.playerHairIndex = 0;
			}
			
			hair = global.hairs[global.playerHairIndex];
			backHair = global.backHairs[hair];

			if (MOUSE_LEFT_BUTTON)
			{
				hairColor = make_color_rgb(_red, _green, _blue);
				global.playerHairColor = hairColor;
			}
			
			options[optionSelected] = "HAIR: " + string(global.playerHairIndex);
		break;
		
		case 2: //Undershirt
			global.playerUndershirtIndex += _increment;
			
			if (global.playerUndershirtIndex < 0)
			{
				global.playerUndershirtIndex = array_length(global.undershirts) - 1;	
			}
			
			if (global.playerUndershirtIndex >= array_length(global.undershirts))
			{
				global.playerUndershirtIndex = 0;
			}

			if (MOUSE_LEFT_BUTTON)
			{
				undershirtColor = make_color_rgb(_red, _green, _blue);
				global.playerUndershirtColor = undershirtColor;
			}
			
			
			undershirt = global.undershirts[global.playerUndershirtIndex];
			options[optionSelected] = 	"UNDERSHIRT: " + string(global.playerUndershirtIndex);
		break;
		
		case 3: //Overshirt
			global.playerOvershirtIndex += _increment;
			
			if (global.playerOvershirtIndex < 0)
			{
				global.playerOvershirtIndex = array_length(global.overshirts) - 1;	
			}
			
			if (global.playerOvershirtIndex >= array_length(global.overshirts))
			{
				global.playerOvershirtIndex = 0;
			}
			
			if (MOUSE_LEFT_BUTTON)
			{
				overshirtColor = make_color_rgb(_red, _green, _blue);
				global.playerOvershirtColor = overshirtColor;
			}
			
			
			overshirt = global.overshirts[global.playerOvershirtIndex];
			options[optionSelected] = "OVERSHIRT: " + string(global.playerOvershirtIndex);
		break;
		
		case 4: //Sleeves
			global.playerSleevesIndex += _increment;
			
			if (global.playerSleevesIndex < 0)
			{
				global.playerSleevesIndex = array_length(global.sleeves) - 1;	
			}
			
			if (global.playerSleevesIndex >= array_length(global.sleeves))
			{
				global.playerSleevesIndex = 0;
			}
			
			if (MOUSE_LEFT_BUTTON)
			{
				sleevesColor = make_color_rgb(_red, _green, _blue);
				global.playerSleevesColor = sleevesColor;
			}
			
			sleeves = global.sleeves[global.playerSleevesIndex];
			sleevesASprite = global.sleevesARun[sleeves];
			sleevesBSprite = global.sleevesBRun[sleeves];
			options[optionSelected] = "SLEEVES: " + string(global.playerSleevesIndex);
		break;
		
		case 5: //Pants
			global.playerPantsIndex += _increment;
			
			if (global.playerPantsIndex < 0)
			{
				global.playerPantsIndex = array_length(global.pants) - 1;	
			}
			
			if (global.playerPantsIndex >= array_length(global.pants))
			{
				global.playerPantsIndex = 0;
			}
			
			if (MOUSE_LEFT_BUTTON)
			{
				pantsColor = make_color_rgb(_red, _green, _blue);
				global.playerPantsColor = pantsColor;
			}
			
			pants = global.pants[global.playerPantsIndex];
			options[optionSelected] = "PANTS: " + string(global.playerPantsIndex);
		break;
		
		case 6: //Exit
			if (FACE_BUTTON_RELEASED)
			{
				room_goto(ROOM_INTRO_SCREEN);
			}
		break;
}
