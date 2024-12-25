//camara[0] 이용
cam = view_camera[0];
//camera_

camX = camera_get_view_x(cam);
camY = camera_get_view_y(cam);

if instance_exists(obj_title) {
	cameraWidth = obj_title.windowWidth;
	cameraHeight = obj_title.windowHeight;
}
else {
	cameraWidth = 1920;
	camearHeight = 1080;
}

camera_set_view_size(cam, cameraWidth, cameraHeight);
//camera_set_view_size(cam, 500, 1200);