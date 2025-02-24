if(isPressed){
	scr_globalSave();
	scr_optionDelete();
	with (obj_ball) {
		phy_speed_x = xspdTemp;
		phy_speed_y = yspdTemp;
	}
	with (obj_gameElevator) {
	    mouseLock = true; // Lock input when exiting
	}
	scale_state = 2;
}