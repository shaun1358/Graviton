event_inherited();

depth = 5;

/*
optionX = x;
optionY = y;
startScale = 1.1
image_xscale = startScale;
image_yscale = startScale;
*/

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
y = (_height - sprite_height) / 2;
