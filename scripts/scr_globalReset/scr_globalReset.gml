// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_globalReset() {
	//global.maxScore = 0;
	global.coin = 0;
	global.coinGame = 0;
	global.sizeRatio = obj_title.windowHeight / 1920;
	
	global.scoreClassic = 0;
	global.scoreElevator = 0;
	global.scoreGame = 0;
	
	global.musicSource = -1; // Use -1
	global.soundMusic = 1;
	global.soundEffect = 1;
	
	global.optionParticle = 1;
	
	global.damage = 1
	
	global.back_pressed = false;
	
	global.statPower = 0;
	global.statBall  = 0;
	global.statDelay = 0;
	global.statLuck  = 0;
	global.statItemd = 0;
	
	global.skinBackColor       = 0;
	global.skinBackColorOwn    = 0;
	global.skinBackPattern     = 0;
	global.skinBackPatternOwn  = 0;
}