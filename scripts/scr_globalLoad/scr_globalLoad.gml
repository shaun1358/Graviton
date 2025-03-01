// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_globalLoad() {
	
	global.shopSchema = "Classic";
	
	if (file_exists(SAVEFILE)) {
		ini_open(SAVEFILE);
		
		global.scoreClassic  = ini_read_real("Score", "gameClassic" , 0);
		global.scoreElevator = ini_read_real("Score", "gameElevator", 0);
		
		global.musicSource = -1; // Use -1
		global.soundMusic     = ini_read_real("Option", "soundMusic" , 1);
		global.soundEffect    = ini_read_real("Option", "soundEffect", 1);
		global.optionParticle = ini_read_real("Option", "particle"   , 1);
		
		global.coin = ini_read_real("Shop", "coin", 0);
		global.skinBGClassicColor1   = ini_read_real("Shop", "BGClassicColor1"  , 0);
		global.skinBGClassicColor2   = ini_read_real("Shop", "BGClassicColor2"  , 0);
		global.skinBGElevatorColor1  = ini_read_real("Shop", "BGElevatorColor1" , 0);
		global.skinBGElevatorColor2  = ini_read_real("Shop", "BGElevatorColor2" , 0);
		global.skinBGClassicPattern  = ini_read_real("Shop", "BGClassicPattern" , 0);
		global.skinBGElevatorPattern = ini_read_real("Shop", "BGElevatorPattern", 0);
		
		for (var i = 0; i < 32; i++) global.skinBGColorOwn[i]   = ini_read_real("Shop", "skinBGColor"   + string(i), 0);
		for (var i = 0; i < 6;  i++) global.skinBGPatternOwn[i] = ini_read_real("Shop", "skinBGPattern" + string(i), 0);
		
		global.statPower = ini_read_real("Stat", "power", 1);
		global.statBall  = ini_read_real("Stat", "ball" , 1);
		global.statDelay = ini_read_real("Stat", "delay", 1);
		global.statLuck  = ini_read_real("Stat", "luck",  1);
		global.statItemd = ini_read_real("Stat", "itemd", 1);
		
		ini_close();
	}
}