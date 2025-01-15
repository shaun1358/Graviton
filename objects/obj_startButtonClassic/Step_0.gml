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
	case room_gameOrigin :
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