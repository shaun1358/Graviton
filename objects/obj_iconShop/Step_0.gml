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

x = _marginX + 1080 - 100;
y = _marginY + 100;

image_xscale = scale_press;
image_yscale = scale_press;


if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	scale_press = (1 + (scale_press * 9)) / 10;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}
