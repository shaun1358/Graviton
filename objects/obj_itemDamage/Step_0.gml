if( place_meeting(x, y, obj_ball) && obtained = 0) {
    obtained = 1;
	visible = false;
	global.damage = 2;
	time = 0;
}

if(obtained == 1) {
	time++;
	if(time >= endTime) {
		global.damage = 1;
		instance_destroy();
	}
}