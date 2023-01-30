/// @description Makes color change when you change option.

// Inherit the parent event
event_inherited();

if (UP_BUTTON_RELEASED) || (DOWN_BUTTON_RELEASED)
{
	optionSelected = owner.optionSelected;
	switch (optionSelected)
	{
		case 0: //Skin
			val = color_get_red(global.playerSkinColor);
		break;
		case 1: //Hair
			val = color_get_red(global.playerHairColor);
		break;
		case 2: //Undershirt
			val = color_get_red(global.playerUndershirtColor);
		break;
		case 3: //Overshirt
			val = color_get_red(global.playerOvershirtColor);
		break;
		case 4: //Sleeves
			val = color_get_red(global.playerSleevesColor);
		break;
		case 5: //Pants
			val = color_get_red(global.playerPantsColor);
		break;
		default: 
		break;
		
	}
}
