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

timer = instance_create_layer(_marginX + 95, _marginY + 100, layer, obj_donut_timer);
timer.endTime = 30 * 8; // 0.5 sec but + 8 per frame
timer.color = make_color_rgb(144, 213, 240);


timer.reverse = true;