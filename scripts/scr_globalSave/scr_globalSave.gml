function scr_globalSave() {
	ini_open(SAVEFILE);
	
	ini_write_real("Score", "gameClassic" , global.scoreClassic);
	ini_write_real("Score", "gameElevator", global.scoreElevator);
	
	ini_write_real("Option", "soundMusic" , global.soundMusic);
	ini_write_real("Option", "soundEffect", global.soundEffect);
	ini_write_real("Option", "particle"   , global.optionParticle);
	
	ini_write_real("Stat", "power", global.statPower);
	ini_write_real("Stat", "ball" , global.statBall);
	ini_write_real("Stat", "delay", global.statDelay);
	ini_write_real("Stat", "luck" , global.statLuck);
	ini_write_real("Stat", "itemd", global.statItemd);
	
	ini_close();
}