
depth = 5;

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
x = (_width - sprite_width) / 2;
y = ((_height - sprite_height) / 2) - 500;
xTo = (_width - sprite_width) / 2;
yTo = (_height - sprite_height) / 2;

scoreTimer  = 0;
scorePeriod = 3;
scoreShow   = 0;
scoreSize   = 1;
scoreHigh   = 0;
scoreHighShow = 0;
if      (room == room_gameClassic)  scoreHigh = global.scoreClassic;
else if (room == room_gameElevator) scoreHigh = global.scoreElevator;

coinPhase  = 0;
coinTimer  = 0;
coinPeriod = 3;
coinShow   = 0;
coinSize   = 1;
