if instance_exists(obj_title) {
	cameraWidth = obj_title.windowWidth;
	cameraHeight = obj_title.windowHeight;
} 
else {
	//cameraWidth = 1920;
	//camearHeight = 1080;
}


view_wport[0] = cameraWidth;
view_hport[0] = cameraHeight;