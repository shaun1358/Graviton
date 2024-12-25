//obj_title에서 윈도우 사이즈 받아 해당 카메라의 width와 height에 넣음
if instance_exists(obj_title) {
	cameraWidth = obj_title.windowWidth;
	cameraHeight = obj_title.windowHeight;
} //모종의 사유로 obj_title이 없을 때를 위한 예외처리
else {
	cameraWidth = 1920;
	camearHeight = 1080;
}

//width와 height를 이용해 카메라 사이즈를 설정
camera_set_view_size(cam, cameraWidth, cameraHeight);

//카메라의 width와 height 비율을 변환하기 위한 코드
surface_resize(application_surface, cameraWidth, cameraHeight)