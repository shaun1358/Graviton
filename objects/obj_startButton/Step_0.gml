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


switch(target) {
	case room_gameClassic :
		sprite_index = spr_modeClassic;
		if (instance_exists(obj_camera)) {
			x = _marginX + (1080 / 2);
			y = _marginY + 800;
		}
		else {
			x = 1080 / 2;
			y = 800;
		}
		break;
	case room_gameElevator :
		sprite_index = spr_modeElevator;
		if (instance_exists(obj_camera)) {
			x = _marginX + (1080 / 2);
			y = _marginY + 1200;
		}
		else {
			x = 1080 / 2;
			y = 1200;
		}
		break;
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
