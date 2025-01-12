//마우스 클릭 / 손가락 태핑 인식
//참고로 겜메스는 손가락 태핑도 마우스 입력 취급 한다는데.. 나중에 디버깅 해봐야함
if device_mouse_check_button(0, mb_left) {
	controlPressing = 1;
	//(x1, y1) 계산
	x1 = device_mouse_x(0)
	y1 = device_mouse_y(0)
}
//마우스 놓기 / 손가락 떼기 인식
else if device_mouse_check_button_released(0, mb_left) {
	controlPressing = 0;
	controlReleasing = 1;
}

switch(state) {
	//공 발사전
	case BALL_STATE_0_IDLE :
		//마우스 or 손가락을 누르고 있으면
		if (controlPressing) {
			//(x0, y0) 계산
			x0 = obj_ballGenerator.x;
			y0 = obj_ballGenerator.y;
			
			//(x0, y0)와 (x1, y1)으로부터 공이 날아갈 방향을 계산하고 obj_direction에 대입
			//동시에 obj_ballGenerator에 화살표 그리라고 지시
			with (obj_ballGenerator) {
				ballDirection = point_direction(other.x0, other.y0, other.x1, other.y1);
				drawArrow = 1;
			}
		}
		//마우스 or 손가락을 눌렀다가 놓으면
		if (controlReleasing) {
			//ballCount를 obj_gameOrigin의 ballCount로부터 가져오도록 지시
			//동시에 화살표 다시 지우도록 지시
			with (obj_ballGenerator) {
				ballCount = other.ballCount;
				drawArrow = 0;
			}

			//현재 상태를 '공 발사중'으로 바꿈
			state = BALL_STATE_1_FIRING;
		}
		break;
		
	//공 발사중
	case BALL_STATE_1_FIRING :
		//state == 0에서 썼던 변수 초기화
		controlPressing = 0;
		controlReleasing = 0;
		
		//공 전부 소모시 현재 상태를 '공 발사후'로 바꿈
		if (!instance_exists(obj_ball) && obj_ballGenerator.ballCount == 0){
			state = BALL_STATE_2_FINISHED;
			global.easing_active = true;
			ballCount += 1;
	        global.stage++;
	        // Create new tiles
	        scr_tileCreate(global.stage, MAX_ROW);
		}
		break;
		
	//공 발사후
	case BALL_STATE_2_FINISHED:
	    var isGameover = false;

	    // Check each obj_brickParent instance
	    with (obj_brickParent) {
	        if (row == 0) {
	            isGameover = true;
	        }
	    }

	    // If game over condition is detected, handle it immediately
	    if (isGameover) {
	        state = BALL_STATE_3_GAMEOVER;
	        break;
	    }

	    // Check if any blocks are still animating
	    var animating = scr_tileElevate();

	    // If all blocks have finished animating
	    if (!animating) {
	        // Change state back to 'Ball Before Launch'
	        state = BALL_STATE_0_IDLE;
	    }
	    break;

	case BALL_STATE_3_GAMEOVER:
	    // Clean up any necessary game objects or variables
	    with (obj_ball) {
	        instance_destroy(); // Destroy remaining balls
	    }
	    with (obj_brickParent) {
	        instance_destroy(); // Destroy remaining bricks
	    }

		instance_destroy(obj_border); //Destroy border

	    // Reset important global variables
	    global.easing_active = false;
	    global.ballCount = 0;

	    // Transition to the game-over room
	    room_goto(room_gameover);

	    // Break to ensure no further code is executed in this state
	    break;

	
}