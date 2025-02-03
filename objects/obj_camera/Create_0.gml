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
   if (obj_title.windowRatio >= 16 / 9) {
      cameraWidth = 1080;
      cameraHeight = 1080 * obj_title.windowRatio;
   }
   else {
      cameraWidth = (1920 / obj_title.windowRatio);
      cameraHeight = 1920;
   }
}
else {
   cameraWidth = 1080;
   cameraHeight = 1920;
}

cameraMarginX = max(0, (cameraWidth - 1080) / 2);
cameraMarginY = max(0, (cameraHeight - 1920) / 2);


//width와 height를 이용해 카메라 사이즈를 설정
camera_set_view_size(cam, cameraWidth, cameraHeight);


shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;