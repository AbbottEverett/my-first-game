/// Wave(from, to, duration, offset)
/// @description Wave(from, to, duration, offset)
/// @param from
/// @param to
/// @param duration
/// @param offset

// Returns a value that will wave back and forth between "from" and "to" over "duration" seconds
// Ex:
//		image_angle = Wave(-45,45,1,0) -> rock back and forth 90 degrees in a second
//		x = Wave(-10,10,0.25,0)	-> move left and right quickly

// Squish an Object
//		image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
//		image_yscale = Wave(2.0, 0.5, 1.0, 0.0)

var a4 = (argument1 - argument0) * 0.5;
return argument0 + a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * a4;