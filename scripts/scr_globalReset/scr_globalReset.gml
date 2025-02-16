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
	
	global.shopSchema = "Classic";
	
	global.skinBGClassicColor1   = 0;
	global.skinBGClassicColor2   = 0;
	global.skinBGElevatorColor1  = 0;
	global.skinBGElevatorColor2  = 0;
	global.skinBGClassicPattern  = 0;
	global.skinBGElevatorPattern = 0;
	for (var i = 0; i < 32; i++) global.skinBGColorOwn[i] = 0;
	for (var i = 0; i < 6;  i++) global.skinBGPatternOwn[i] = 0;
	global.skinBGColorOwn[7]  = 1;
	global.skinBGColorOwn[15] = 1;
	global.skinBGClassicColor1 = 7;
	global.skinBGClassicColor2 = 15;
	global.skinBGElevatorColor1 = 7;
	global.skinBGElevatorColor2 = 15;
	
	global.skinBGPatternOwn[0] = 1;
	global.skinBGClassicPattern = 0;
	global.skinBGElevatorPattern = 0;
}