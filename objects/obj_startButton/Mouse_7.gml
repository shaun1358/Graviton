// Go to the next room when the object is clicked
if (room_exists(target)) { // Check if the room exists
	if not instance_exists(obj_optionParant) scr_roomTransition(TRANS_MODE.GOTO, target);; // Transition to the specified room
} else {
    show_message("The room does not exist!"); // Debugging message (optional)
}