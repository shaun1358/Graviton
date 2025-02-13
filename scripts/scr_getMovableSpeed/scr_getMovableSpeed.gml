// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getMovableSpeed(level) {
	if (global.stage <= 10) return 1;
	else if (global.stage <= 30) return 1 + ((level - 10) / 20);
	else return 2 + ((level - 30) / 100);
}