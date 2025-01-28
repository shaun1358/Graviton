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

x = _marginX + 100;
y = _marginY + 100;

if (timer > 0) timer -= 1;

//scr_drawCircularBar(x, y, 3, 5, c_white, 100, 1, 5)
if (timer == timer_period) scr_roomTransition(TRANS_MODE.RESTART);