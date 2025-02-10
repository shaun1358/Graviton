depth = 5;

optionX = x;
optionY = y;

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

/*
x = (_width - sprite_width) / 2;
y = (_height - sprite_height) / 2;

startScale = (1 + (startScale * 5)) / 6
if (startScale < 1.01) startScale = 1;
image_xscale = startScale;
image_yscale = startScale;