if(isPressed){
	x1 = device_mouse_x(0);
	x = x1;
	x = clamp(x, owner.x + 325, owner.x + 325 + 460);

	global.soundMusic = (x - 325 - owner.x) / 460;
	scale_state = 1;
	scale_press = (1.2 + (scale_press * 2)) / 3;
}