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

timer = 0;
timer_period = 60;
