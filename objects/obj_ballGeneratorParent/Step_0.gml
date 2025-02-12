image_xscale = ((image_xscale * 5) + scaleTo) / 6;
image_yscale = image_xscale;

if (instance_exists(obj_camera)) {
    x = obj_camera.cameraWidth / 2;
    y = obj_camera.cameraMarginY + 300;
} else {
    x = 540;
    y = 300;
}


if instance_exists(obj_laser) {
	if (drawArrow) {
		obj_laser.visible = 1;
		//obj_laser.image_angle = ballDirection;
	}
	else {
		obj_laser.visible = 0;
	}
}