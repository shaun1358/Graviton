/// @description Converts delta_time to milliseconds.
/// @param delta_time The delta_time value in microseconds.
/// @return The converted time in milliseconds.
function scr_delta_to_ms(argument0){
	return argument0 / 1000; // Divide by 1000 to convert microseconds to milliseconds
}