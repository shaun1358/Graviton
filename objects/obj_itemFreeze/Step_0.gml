if( place_meeting(x, y, obj_ball) && obtained = 0) {
    obtained = 1;
	visible = false;
	time = 0;
	global.isFreeze = true;
}

if(obtained == 1) {
	time++;
	if(time >= endTime){
		global.isFreeze = false;
		instance_destroy();
	}
}