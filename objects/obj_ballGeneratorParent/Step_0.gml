if (instance_exists(obj_camera)) {
    x = obj_camera.cameraWidth / 2;
    y = obj_camera.cameraMarginY + 300;
} else {
    x = 540;
    y = 300;
}

if (ballDirection < 180 && ballDirection >= 90) ballDirection = 180;
else if (ballDirection < 90 && ballDirection > 0) ballDirection = 0;

if instance_exists(obj_laser) {
	if (drawArrow) {
		obj_laser.visible = 1;
		obj_laser.image_angle = ballDirection;
	}
	else {
		obj_laser.visible = 0;
	}
}