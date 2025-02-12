// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getBallDirectionElevator(number, i) {
	var rangeMax = 15;
	var rangeShot = min(1, number / 10);
	var rangeReturn = -rangeShot + (rangeShot * 2 * ((i + 0.5) / number));
	return power(rangeReturn, 3) * rangeMax
}