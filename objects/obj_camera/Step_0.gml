if instance_exists(obj_title) {
	cameraWidth = obj_title.windowWidth;
	cameraHeight = obj_title.windowHeight;
}
else {
	cameraWidth = 1920;
	camearHeight = 1080;
}


camera_set_view_size(cam, cameraWidth, cameraHeight);