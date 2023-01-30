/// @description Makes color change when you change option.

// Inherit the parent event
event_inherited();

if (UP_BUTTON_RELEASED) || (DOWN_BUTTON_RELEASED)
{
	optionSelected = owner.optionSelected;
	switch (optionSelected)
	{
		case 0: //Skin
			val = color_get_green(global.playerSkinColor);
		break;
		case 1: //Hair
			val = color_get_green(global.playerHairColor);
		break;
		case 2: //Undershirt
			val = color_get_green(global.playerUndershirtColor);
		break;
		case 3: //Overshirt
			val = color_get_green(global.playerOvershirtColor);
		break;
		case 4: //Sleeves
			val = color_get_green(global.playerSleevesColor);
		break;
		case 5: //Pants
			val = color_get_green(global.playerPantsColor);
		break;
		default: //Other
		break;
		
	}
}
