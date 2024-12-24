/// @description Insert description here
// You can write your code in this editor

// Setting camera Height and width
camera_width = global.CAMERA_HEIGHT;
camera_height = global.CAMERA_WIDTH;

// 카메라 ID 저장
camera_id = noone;

// 카메라 생성
// not following anything atm.
camera_id = camera_create_view(0, 0, camera_width, camera_height, 0, noone, 0, 0, 0, 0);

// 카메라 활성화
view_set_camera(0, camera_id);
//camera_set_view_target(camera_id, obj_player); // obj_player를 카메라 중심으로 설정
