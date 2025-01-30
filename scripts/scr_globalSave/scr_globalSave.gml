function scr_globalSave() {
	ini_open(SAVEFILE);
	
	ini_write_real("Score", "gameClassic", global.scoreClassic);
	ini_write_real("Score", "gameElevator", global.scoreElevator);
	
	ini_write_real("Option", "soundMusic", global.soundMusic);
	ini_write_real("Option", "soundEffect", global.soundEffect);
	ini_write_real("Option", "particle", global.optionParticle);
	
	ini_close();
}