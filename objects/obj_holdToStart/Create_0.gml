if instance_exists(obj_camera) {
	_marginX = obj_camera.cameraMarginX;
	_marginY = obj_camera.cameraMarginY;
	_width   = obj_camera.cameraWidth;
	_height  = obj_camera.cameraHeight;
}
else {
	_marginX = 0;
	_marginY = 0;
	_width   = 1080;
	_height  = 1920;
}

x = _width / 2;
y = _height / 2;

phase = 0;

draw_x = 0;
draw_y = -100;
draw_angle = 0;
draw_alpha = 1;
draw_scale = 1;

timer = 0;
timer_end = 0;
timer_period = 30;