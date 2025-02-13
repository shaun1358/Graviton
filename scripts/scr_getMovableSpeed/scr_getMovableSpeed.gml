// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getMovableSpeed(level) {
	if (global.stage <= 10) return 1;
	else if (global.stage <= 30) return 1 + ((level - 10) / 20);
	else if (global.stage <= 60) return 2 + ((level - 30) / 30);
	else if (global.stage <= 100) return 3 + ((level - 60) / 40);
	else return 4 + ((level - 100) / 50);
}