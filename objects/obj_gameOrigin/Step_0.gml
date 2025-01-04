//마우스 클릭 / 손가락 태핑 인식
//참고로 겜메스는 손가락 태핑도 마우스 입력 취급 한다는데.. 나중에 디버깅 해봐야함
if device_mouse_check_button(0, mb_left) {
	controlPressing = 1;
	x1 = device_mouse_x(0)
	y1 = device_mouse_y(0)
}
//마우스 놓기 / 손가락 떼기 인식
else if device_mouse_check_button_released(0, mb_left) {
	controlPressing = 0;
	controlReleasing = 1;
}


switch(state) {
	case 0 :
		//마우스 or 손가락을 누르고 있으면
		if (controlPressing) {
			x0 = obj_ballGenerator.x;
			y0 = obj_ballGenerator.y;
			with (obj_ballGenerator) {
				ballDirection = point_direction(other.x0, other.y0, other.x1, other.y1);
				drawArrow = 1;
			}
		}
		//마우스 or 손가락을 눌렀다가 놓으면
		if (controlReleasing) {
			with (obj_ballGenerator) {
				ballCount = other.ballCount;
				drawArrow = 0;
			}
			state = 1;
		}
		break;
	case 1 :
		controlPressing = 0;
		controlReleasing = 0;
		if (!instance_exists(obj_ball) && obj_ballGenerator.ballCount == 0) state = 2;
		break;
	case 2 :
		ballCount += 1;
		state = 0;
		break;
}