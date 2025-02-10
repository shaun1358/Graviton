var _marginX = 0;
var _marginY = 0;
var _width   = 0;
var _height  = 0;
if instance_exists(obj_camera) {
	_marginX = obj_camera.cameraMarginX;
	_marginY = obj_camera.cameraMarginY;
	_width   = obj_camera.cameraWidth;
	_height  = obj_camera.cameraHeight;	
}

if (instance_exists(obj_camera)) {
	x = _marginX + (1080 / 2);
	y = _marginY + 1500;
}
else {
	x = 1080 / 2;
	y = 1500;
}

image_xscale = scale_press;
image_yscale = scale_press;

if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	scale_press = (1 + (scale_press * 9)) / 10;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}
