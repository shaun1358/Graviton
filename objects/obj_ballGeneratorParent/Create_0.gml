scaleTo = 1;

if not instance_exists(obj_laser) {
	instance_create_layer(x, y, "Laser", obj_laser);
}

if instance_exists(obj_camera) {
	x = obj_camera.cameraWidth / 2;
	y = obj_camera.cameraMarginY + 300;
}
else {
	x = 540;
	y = 300;
}

//ballCount = 현재 보유하고 있는 공의 개수. ballDelay = 공 발사까지 걸리는 시간
//ballCount는 obj_gameOrigin에서 받아옴
ballCount = 0;
ballDelay = 10;

////ballTimer = 공 발사용 타이머, ballDirection 공의 초기 속도의 방향, ballSpeed 공의 초기 속도의 크기
ballTimer = 0;
ballDirection = 0;
ballSpeed = 10000;

//화살표(공이 튕기는 방향)의 표시 여부
drawArrow = 0;

soundPitch = 1;