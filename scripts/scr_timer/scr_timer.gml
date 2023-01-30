/// @function Timer(_time, _repeating)
/// @description Creates a timer that can be decremented.
/// @param _time Starting number of ticks left. Decremented by 1 every time Tick() is called unless its -1 (inactive). Once it ticks on 0 calls Ring(). If not repeating, goes to -1, otherwise resets. 
/// @param _repeating Whether the timer should reset. If true will set time to maxTime. If false will set to -1 (inactive).
function Timer(_time, _repeating) constructor
{
	time = _time;
	maxTime = time;
	
	repeating = _repeating;
	
	static Tick = function(_decrement = 1)
	{
		if (Active())
		{
			if (time == 0)
			{
				Ring();
				
				if (repeating)
				{
					Reset();
				}
			}
			
			time -= _decrement;
		}
	}
	
	static Ring = function()
	{
		show_debug_message("Alarm rung!");
	}	
	
	static Active = function()
	{
		return time  >= 0;
	}
	
	static Reset = function()
	{
		SetTime(maxTime);
	}
	
	static GetTime = function()
	{
		return time;
	}
	
	static SetTime = function(_time)
	{
		time = _time;
	}
}