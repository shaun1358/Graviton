//obj_title에서 윈도우 사이즈 받아 해당 카메라의 width와 height에 넣음
if instance_exists(obj_title) {
   if (obj_title.windowRatio >= 16 / 9) {
      cameraWidth = 1080;
      cameraHeight = 1080 * obj_title.windowRatio;
   }
   else {
      cameraWidth = (1920 / obj_title.windowRatio);
      cameraHeight = 1920;
   }
} //모종의 사유로 obj_title이 없을 때를 위한 예외처리
else {
   cameraWidth = 1080;
   cameraHeight = 1920;
}

cameraMarginX = max(0, (cameraWidth - 1080) / 2);
cameraMarginY = max(0, (cameraHeight - 1920) / 2);

//width와 height를 이용해 카메라 사이즈를 설정
camera_set_view_size(cam, cameraWidth, cameraHeight);

//카메라의 width와 height 비율을 변환하기 위한 코드
surface_resize(application_surface, cameraWidth, cameraHeight)

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));