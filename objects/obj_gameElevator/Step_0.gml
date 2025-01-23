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

var isGameover = false;
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
if (count_ball<=ballCount) {
			//ballCount를 obj_gameOrigin의 ballCount로부터 가져오도록 지시
			//동시에 화살표 다시 지우도록 지시
			
			with (obj_ballGenerator) {
				ballCount = other.ballCount-other.count_ball;
				drawArrow = 0;
			}
			

			//현재 상태를 '공 발사중'으로 바꿈
}
with (obj_brickParent) {
    if (isRiseable && !global.isFreeze) {
        // Set vertical speed for rising
        phy_linear_velocity_y = -RISING_SPEED;


        // Check for game over condition when reaching the threshold
        if (y < THRESHOLD_Y) {
            isGameover = true;
            state = BALL_STATE_3_GAMEOVER;
        }
    }
	else{
	        phy_linear_velocity_y = 0;
	}
}

with (obj_itemParent) {
    if (!global.isFreeze && obtained == 0) {
        // Set vertical speed for rising
		phy_linear_velocity_y = -RISING_SPEED;

        // Destroy item if it crosses the threshold
        if (y < THRESHOLD_Y) {
            instance_destroy();
        }
    }
	else{
		phy_linear_velocity_y = 0;
	}
}


// Modulus-based tile creation mechanism
if (!global.isFreeze) {
    incr_cnt++; // Increment counter only if not frozen
    if (incr_cnt >= tileCreationCnt) { // Check if counter matches the required modulus
        scr_tileCreate(global.stage, MAX_ROW); // Create tiles
        global.stage++; // Advance the stage
        incr_cnt = 0; // Reset counter
    }
}


	show_debug_message(state);
switch(state) {
	//공 발사전
	case BALL_STATE_0_IDLE :
		state = BALL_STATE_1_FIRING;
		break;
		
	//공 발사중
	case BALL_STATE_1_FIRING :
		controlPressing = 0;
		controlReleasing = 0;
		
		//공 전부 소모시 현재 상태를 '공 발사후'로 바꿈
		if (total_destruction == ballCount){
			state = BALL_STATE_2_FINISHED;
			global.easing_active = true;
			total_destruction = 0;
			ballCount += 1;
	        // Create new tiles
		}
		break;
		
	//공 발사후
	case BALL_STATE_2_FINISHED:
		 // If game over condition is detected, handle it immediately
	    if (isGameover) {
	        state = BALL_STATE_3_GAMEOVER;
	        break;
	    }
		state = BALL_STATE_0_IDLE;
	    break;

	case BALL_STATE_3_GAMEOVER:
	    // Clean up any necessary game objects or variables
	    with (obj_ball) {
	        instance_destroy(); // Destroy remaining balls
	    }

	    // Reset important global variables
	    global.easing_active = false;
	    global.ballCount = 0;
		
		// high score controlled by gameover when resetting
		

	    // Create the GUI instance for the game-over screen
	    if (!instance_exists(obj_gameover)) { // Ensure only one instance is created
			var gui_x = display_get_gui_width() / 2;
			var gui_y = display_get_gui_height() / 2;

			var instance = instance_create_layer(gui_x, gui_y, "instances", obj_gameover);
			instance.depth = -100;
		}

	    // Break to ensure no further code is executed in this state
	    break;


	
}