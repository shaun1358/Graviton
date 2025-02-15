function scr_globalSave() {
	ini_open(SAVEFILE);
	
	ini_write_real("Score", "gameClassic" , global.scoreClassic);
	ini_write_real("Score", "gameElevator", global.scoreElevator);
	
	ini_write_real("Option", "soundMusic" , global.soundMusic);
	ini_write_real("Option", "soundEffect", global.soundEffect);
	ini_write_real("Option", "particle"   , global.optionParticle);
	
	ini_write_real("Shop", "coin", global.coin);
	ini_write_real("Shop", "BGClassicColor1",   global.skinBGClassicColor1);
	ini_write_real("Shop", "BGClassicColor2",   global.skinBGClassicColor2);
	ini_write_real("Shop", "BGElevatorColor1",  global.skinBGElevatorColor1);
	ini_write_real("Shop", "BGElevatorColor2",  global.skinBGElevatorColor2);
	ini_write_real("Shop", "BGClassicPattern",  global.skinBGClassicPattern);
	ini_write_real("Shop", "BGElevatorPattern", global.skinBGElevatorPattern);
	for (var i = 0; i < 32; i++) ini_write_real("Shop", "skinBGColor"   + string(i), global.skinBGColorOwn[i]);
	for (var i = 0; i < 6;  i++) ini_write_real("Shop", "skinBGPattern" + string(i), global.skinBGPatternOwn[i]);
	
	
	ini_write_real("Stat", "power", global.statPower);
	ini_write_real("Stat", "ball" , global.statBall);
	ini_write_real("Stat", "delay", global.statDelay);
	ini_write_real("Stat", "luck" , global.statLuck);
	ini_write_real("Stat", "itemd", global.statItemd);
	
	ini_close();
}