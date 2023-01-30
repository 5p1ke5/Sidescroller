/// @function particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution) 
/// @param _partSystem The particle system
/// @param  _partType The type of particle being craeted.
/// @param  _number number of particles to be created.
/// @param  _x1	Leftmost x coordinate.
/// @param  _y1 Topmost y coordinate.
/// @param  _x2 Rightmost x cordinate.
/// @param  _y2 Bottommost y coordinate.
/// @param  _shape Shape of the burst field.
/// @param  _distribution Distribution of the field.
function particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution) 
{
	//Shoots out a set amount of particles and then destroys itself.
	var _emitter = part_emitter_create(_partSystem);

	//Creates a burst of ectoplasm.
	part_emitter_region(_partSystem, _emitter, _x1, _x2, _y1, _y2, _shape, _distribution);
	part_emitter_burst(_partSystem, _emitter, _partType, _number);

	//Destroys the emitter.
	part_emitter_destroy(_partSystem, _emitter);



}

/// @function particle_color_burst(_partSystem, _number, _x1, _y1, _x2, _y2, _col1, _col2, _minAngle, _maxAngle, _shape, _distribution)
/// @param _partSystem The particle system
/// @param  _number number of particles to be created.
/// @param  _x1	Leftmost x coordinate.
/// @param  _y1 Topmost y coordinate.
/// @param  _x2 Rightmost x cordinate.
/// @param  _y2 Bottommost y coordinate.
/// @param _col1 Color 1.
/// @param _col2 Color2
/// @param _minAngle Minimum angle the particles can be generaated at.
/// @param _maxAngle Maximum angle the particles can be generaated at.
/// @param  _shape Shape of the burst field.
/// @param  _distribution Distribution of the field.
function particle_color_burst(_partSystem, _number, _x1, _y1, _x2, _y2, _col1, _col2, _minAngle, _maxAngle, _shape, _distribution)
{
	//Creates particles for a fire effect

	var _partType = particle_pixel(_col1, _col2, _minAngle, _maxAngle, 0, 0, .1, .5, 0, 0, 0, 270, game_get_speed(gamespeed_fps) / 8, game_get_speed(gamespeed_fps)/2);

	particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution);
}



/// @function particle_color_burst(_partSystem, _number, _x1, _y1, _x2, _y2, _col1, _col2, _minAngle, _maxAngle, _shape, _distribution)
/// @param _partSystem The particle system
/// @param  _number number of particles to be created.
/// @param  _x1	Leftmost x coordinate.
/// @param  _y1 Topmost y coordinate.
/// @param  _x2 Rightmost x cordinate.
/// @param  _y2 Bottommost y coordinate.
/// @param _col1 Color 1.
/// @param _col2 Color2
/// @param _minAngle Minimum angle the particles can be generaated at.
/// @param _maxAngle Maximum angle the particles can be generaated at.
/// @param  _shape Shape of the burst field.
/// @param  _distribution Distribution of the field.
function particle_confetti_burst(_partSystem, _number, _x1, _y1, _x2, _y2, _col1, _col2, _minAngle, _maxAngle, _shape, _distribution)
{
	//Creates particles for a fire effect

	var _partType = particle_pixel(_col1, _col2, _minAngle, _maxAngle, 0, 0, 0, 0, 0, 0, .01, 270, game_get_speed(gamespeed_fps) / 8, game_get_speed(gamespeed_fps) / 2);

	particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution);
}


/// @function particle_flame(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
/// @param _partSystem The particle system
/// @param  _number number of particles to be created.
/// @param  _x1	Leftmost x coordinate.
/// @param  _y1 Topmost y coordinate.
/// @param  _x2 Rightmost x cordinate.
/// @param  _y2 Bottommost y coordinate.
/// @param _minAngle Minimum angle the particles can be generaated at.
/// @param _maxAngle Maximum angle the particles can be generaated at.
/// @param  _shape Shape of the burst field.
/// @param  _distribution Distribution of the field.
function particle_flame(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
{
	//Creates particles for a fire effect

	var _partType = particle_pixel(c_red, c_yellow, _minAngle, _maxAngle, 0, 0, .1, .5, 0, 0, 0, 270, game_get_speed(gamespeed_fps) / 8, game_get_speed(gamespeed_fps)/2);

	particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution);
}


/// @function particle_frost(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
/// @param _partSystem The particle system
/// @param  _number number of particles to be created.
/// @param  _x1	Leftmost x coordinate.
/// @param  _y1 Topmost y coordinate.
/// @param  _x2 Rightmost x cordinate.
/// @param  _y2 Bottommost y coordinate.
/// @param _minAngle Minimum angle the particles can be generaated at.
/// @param _maxAngle Maximum angle the particles can be generaated at.
/// @param  _shape Shape of the burst field.
/// @param  _distribution Distribution of the field.
function particle_frost(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
{
	//Creates particles for a fire effect

	var _partType = particle_pixel(c_blue, c_aqua, _minAngle, _maxAngle, 0, 0, .1, .5, 0, 0, 0, 270, game_get_speed(gamespeed_fps) / 8, game_get_speed(gamespeed_fps)/2);

	particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution);
}



/// @function particle_electric(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
/// @param _partSystem The particle system
/// @param  _number number of particles to be created.
/// @param  _x1	Leftmost x coordinate.
/// @param  _y1 Topmost y coordinate.
/// @param  _x2 Rightmost x cordinate.
/// @param  _y2 Bottommost y coordinate.
/// @param _minAngle Minimum angle the particles can be generaated at.
/// @param _maxAngle Maximum angle the particles can be generaated at.
/// @param  _shape Shape of the burst field.
/// @param  _distribution Distribution of the field.
function particle_electric(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
{
	//Creates particles for a fire effect

	var _partType = particle_pixel(c_aqua, c_yellow, _minAngle, _maxAngle, 0, 0, .1, .5, 0, 0, 0, 270, game_get_speed(gamespeed_fps) / 8, game_get_speed(gamespeed_fps)/2);

	particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution);
}



/// @function particle_star(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
/// @param _partSystem The particle system
/// @param  _number number of particles to be created.
/// @param  _x1	Leftmost x coordinate.
/// @param  _y1 Topmost y coordinate.
/// @param  _x2 Rightmost x cordinate.
/// @param  _y2 Bottommost y coordinate.
/// @param _minAngle Minimum angle the particles can be generaated at.
/// @param _maxAngle Maximum angle the particles can be generaated at.
/// @param  _shape Shape of the burst field.
/// @param  _distribution Distribution of the field.
function particle_star(_partSystem, _number, _x1, _y1, _x2, _y2, _minAngle, _maxAngle, _shape, _distribution)
{
	//Creates particles for a fire effect

	var _partType = particle_pixel(c_white, c_yellow, _minAngle, _maxAngle, 0, 0, 1, 2, 0, 0, 0, 359, game_get_speed(gamespeed_fps) / 8, game_get_speed(gamespeed_fps));

	particle_burst(_partSystem, _partType, _number, _x1, _y1, _x2, _y2, _shape, _distribution);
}



//Shapes

/// @function particle_pixel(color1, color2, min direction, max direction, direction increase, direction wiggle, min speed, max speed, speed inc, speed wiggle, gravity, gravity direction, min life, max life)
/// @param _color1 Color 1 of the particle.
/// @param _color2 Color 2.
/// @param  _minDirection Minimum direction in degress.
/// @param  _maxDirection Max direction in degrees.
/// @param  _dirIncrease amount the direction increases each step.
/// @param  _dirWiggle Direction variance each step.
/// @param  _minSpeed Minimum speed the particle can be generated at.
/// @param  _maxSpeed Max speed the particle can be generated at.
/// @param  _speedInc How much speed increases.
/// @param  _speedWiggle Speed variance.
/// @param  _gravity How much the particle is pulled in gravityDir
/// @param  _gravityDir The direction gravity pulls the particle
/// @param  _minLife minimum number of steps the particle can persist for.
/// @param  _maxLife Maximum number of steps the particle can persist for.
function particle_pixel(_color1, _color2, _minDirection, _maxDirection, _dirIncrease, _dirWiggle, _minSpeed, _maxSpeed, _speedInc, _speedWiggle, _gravity, _gravityDir, _minLife, _maxLife) 
{
	//A 1x1 pixel that fades away.

	//Creates the particle.
	var _particle = part_type_create();

	//Sets particle color 
	part_type_colour_mix(_particle, _color1, _color2); 
	//Sets the particle shape.
	part_type_shape(_particle, pt_shape_pixel)
	//part_type_sprite(_particle, par_pixel, false, false, false);
	

	//Sets the speed of the particle.
	part_type_speed(_particle, _minSpeed, _maxSpeed, 0, 0);

	//Set the direction of the particle.
	part_type_direction(_particle, _minDirection, _maxDirection, 0, 0);

	//Set how long the particle will remain onscreen.
	part_type_life(_particle, _minLife, _maxLife);

	//Set particle gravity.
	part_type_gravity(_particle, _gravity, _gravityDir);

	//Alpha value.
	part_type_alpha2(_particle, 1, 0);

	return _particle;
}
