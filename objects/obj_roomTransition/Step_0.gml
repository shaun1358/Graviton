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

if (mode != TRANS_MODE.OFF) {
	if (mode == TRANS_MODE.INTRO) {
		percent = max(0, percent - max((percent / 4), 0.005));
	}
	else {
		percent = min(1,percent + max(((1 - percent) / 10), 0.005));
	}
	
	if (percent == 1) || (percent == 0) {
		switch (mode) {
			case TRANS_MODE.INTRO: {
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.GOTO: {
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART: {
				mode = TRANS_MODE.INTRO;
				room_restart();
				break;
			}
		}
	}
}