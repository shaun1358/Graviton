//위치 조정용 변수
if instance_exists(obj_camera) {
	_marginX = obj_camera.cameraMarginX;
	_marginY = obj_camera.cameraMarginY;
	_width   = obj_camera.cameraWidth;
	_height  = obj_camera.cameraHeight;
}
else {
	_marginX = 0;
	_marginY = 0;
	_width   = 1080;
	_height  = 1920;
}

//스코어가 촤랴랴략 하면서 올라가도록 해주는 코드
if (scoreDraw < global.scoreGame) {
	scoreDraw += 10;
	scoreScale = 1.2;
}
if (scoreScale > 1) {
	scoreScale = (1 + (scoreScale * 4)) / 5;
	if (scoreScale <= 1.01) scoreScale = 1;
}

//옵션이 있으면 canControl = -1, 일부로 -1로 한거임 0으로 하면 옵션 끄자마자 같은 플레임에 1이 되면서 공이 발사가 되버림...
if instance_exists(obj_optionParant) canControl = -1;
else if (canControl < 1) canControl += 1;

//마우스 클릭 / 손가락 태핑 인식
//참고로 겜메스는 손가락 태핑도 마우스 입력 취급 한다는데.. 나중에 디버깅 해봐야함
if device_mouse_check_button(0, mb_left) {
	//(x1, y1) 계산
	x1 = device_mouse_x(0)
	y1 = device_mouse_y(0)
	if (obj_ballGeneratorParent.y < y1 && canControl) controlPressing = 1;
}
//마우스 놓기 / 손가락 떼기 인식
else if device_mouse_check_button_released(0, mb_left) {
	if (obj_ballGeneratorParent.y < y1 && canControl) {
		controlPressing = 0;
		controlReleasing = 1;
	}
	controlPressing = 0;
}


switch(state) {
	//공 발사전
	case BALL_STATE_0_IDLE :
		//아무것도 안할 경우
		if (not controlPressing) {
			with (obj_ballGeneratorParent) {
				drawArrow = 0;
			}
		}
		
		//마우스 or 손가락을 누르고 있으면
		if (controlPressing && canControl) {
			//(x0, y0) 계산
			x0 = obj_ballGeneratorParent.x;
			y0 = obj_ballGeneratorParent.y;
			
			//(x0, y0)와 (x1, y1)으로부터 공이 날아갈 방향을 계산하고 obj_direction에 대입
			//동시에 obj_ballGenerator에 화살표 그리라고 지시
			with (obj_ballGeneratorParent) {
				var dir = point_direction(other.x0, other.y0, other.x1, other.y1);
				show_debug_message(dir);
				// only detect below the ball generator
				ballDirection = clamp(180 + (dir - 240) * 3, 180, 360);
				drawArrow = 1;
			}
			
		}
		//마우스 or 손가락을 눌렀다가 놓으면
		if (controlReleasing && canControl) {
			//ballCount를 obj_gameOrigin의 ballCount로부터 가져오도록 지시
			//동시에 화살표 다시 지우도록 지시

			with (obj_ballGeneratorParent) {
				ballCount = other.ballCount;
				ballDelay = max(9 - floor(other.ballCount / 10), 3);
				ballDelay *= (20 - global.statDelay) / 20
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
		if (!instance_exists(obj_ball) && obj_ballGeneratorParent.ballCount == 0){
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

	    // Reset important global variables
	    global.easing_active = false;
	    //global.ballCount = 0;
		
		// high score controlled by gameover when resetting
		

	    // Create the GUI instance for the game-over screen
	    if (!instance_exists(obj_gameover)) { // Ensure only one instance is created
			//var gui_x = display_get_gui_width() / 2;
			//var gui_y = display_get_gui_height() / 2;

			//instance_create_layer(gui_x, gui_y, "Option", obj_gameover);
			//instance.depth = -100;
			scr_gameover();
		}

	    // Break to ensure no further code is executed in this state
	    break;


	
}