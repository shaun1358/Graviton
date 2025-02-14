if(isPressed){
	scr_globalSave();
	scr_optionDelete();
	with (obj_gameElevator) {
	    mouseLock = true; // Lock input when exiting
	}
	scale_state = 2;
}