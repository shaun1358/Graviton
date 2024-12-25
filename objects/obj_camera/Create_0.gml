//camara[0] 이용
cam = view_camera[0];

//카메라의 좌표
x = 0;
y = 0;

//카메라의 좌표 (어차피 둘 다 0으로 고정될거라 쓸 지는 모르겠음..;)
camX = camera_get_view_x(cam);
camY = camera_get_view_y(cam);

//obj_title에서 윈도우 사이즈 받아 해당 카메라의 width와 height에 넣음
if instance_exists(obj_title) {
	cameraWidth = obj_title.windowWidth;
	cameraHeight = obj_title.windowHeight;
} //모종의 사유로 obj_title이 없을 때를 위한 예외처리
else {
	cameraWidth = 1080;
	camearHeight = 1920;
}

//width와 height를 이용해 카메라 사이즈를 설정
camera_set_view_size(cam, cameraWidth, cameraHeight);