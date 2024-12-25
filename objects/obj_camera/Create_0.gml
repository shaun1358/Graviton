//camara[0] 이용
cam = view_camera[0];

view_enabled = true;
view_visible[0] = true;

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

view_wport[0] = cameraWidth;
view_hport[0] = cameraHeight;

camera_set_view_size(cam, cameraWidth, cameraHeight);
//camera_set_view_size(cam, 500, 1200);