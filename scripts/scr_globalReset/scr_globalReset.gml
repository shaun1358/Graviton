// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_globalReset() {
	//global.maxScore = 0;
	global.coin = 0;
	global.sizeRatio = obj_title.windowHeight / 1920;
	
	global.scoreClassic = 0;
	global.scoreElevator = 0;
	global.scoreGame = 0;
	
	global.soundMusic = 1;
	global.soundEffect = 1;
	
	global.optionParticle = 1;
	
	global.damage = 1
	
	
	global.back_pressed = false;
	global.is_paused = false;
	
	global.statPower = 1;
	global.statBall  = 1;
	global.statDelay = 1;
	global.statLuck  = 1;
	global.statItemd = 1;
}