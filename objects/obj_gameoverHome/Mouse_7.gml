if(isPressed) {
	scr_soundEffect(snd_gameStart, 1.5, 1, false);
	scr_roomTransition(TRANS_MODE.GOTO, room_title);
}

scale_state = 2;
isPressed = false;