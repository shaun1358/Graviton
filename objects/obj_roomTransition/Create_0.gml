//위치 조정용 변수
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



enum TRANS_MODE {
	GOTO,
	RESTART,
	INTRO,
	OFF
}
mode = TRANS_MODE.INTRO;

percent = 0;
target = room;