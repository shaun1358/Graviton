// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_globalReset() {
	global.maxScore = 0;
	global.coin = 0;
	global.sizeRatio = obj_title.windowHeight / 1920;
	
	global.scoreClassic = 0;
	global.scoreElevator = 0;
	global.scoreGame = 0;
	
	global.soundMusic = 1;
	global.soundEffect = 1;
}