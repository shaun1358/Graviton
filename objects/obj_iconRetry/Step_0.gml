x = _marginX + 100;
y = _marginY + 100;


if(timer.curTime >= timer.endTime){
	scr_roomTransition(TRANS_MODE.RESTART);
}
if (!mouse_check_button(mb_left)) {
	if(timer.curTime >= 2)
		timer.curTime -= 2; // slowly
	else
		timer.curTime = 0;
		
} 

