// Go to the next room when the object is clicked
if(isPressed)
	if (room_exists(target)) { // Check if the room exists
		if (not instance_exists(obj_optionParent) && not instance_exists(obj_shopParent)) {
			scr_soundEffect(snd_gameStart, 1.5, 1, false);
			scr_roomTransition(TRANS_MODE.GOTO, target); // Transition to the specified room
		}
	} else {
	    show_message("The room does not exist!"); // Debugging message (optional)
	}

scale_state = 2;
