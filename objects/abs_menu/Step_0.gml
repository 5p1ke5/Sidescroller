/// @description allows swapping menu items.
var _arraySize = array_length_1d(options);

optionSelected += DOWN_BUTTON_PRESSED - UP_BUTTON_PRESSED;

//Close but not quite. 
//TODO: Fix later? Will probably be better.
//optionSelected = abs(optionSelected) % _arraySize;

//If option goes beyond bounds of array loops to other side.
if (optionSelected < 0)
{
	optionSelected = _arraySize - 1;
}

if (optionSelected >= _arraySize)
{
	optionSelected = 0;
}