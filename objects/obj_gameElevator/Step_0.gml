//스코어가 촤랴랴략 하면서 올라가도록 해주는 코드
if (scoreDraw < global.scoreGame) {
	scoreDraw += 10;
	scoreScale = 1.2;
}
if (scoreScale > 1) {
	scoreScale = (1 + (scoreScale * 4)) / 5;
	if (scoreScale <= 1.01) scoreScale = 1;
}

//마우스 클릭 / 손가락 태핑 인식
if device_mouse_check_button(0, mb_left) {
	//(x1, y1) 계산
	x1 = device_mouse_x(0)
	y1 = device_mouse_y(0)
	if (obj_ballGeneratorParent.y < y1 && canControl) controlPressing = 1;
}
//마우스 놓기 / 손가락 떼기 인식
else if device_mouse_check_button_released(0, mb_left) {
	controlPressing = 0;
	controlReleasing = 1;
}

if (!isGameover) {
	// item timer processing
	if (itemDamage) {
		itemDamageDelta += scr_delta_to_ms(delta_time);
		// set item damage false
		if(itemDamageDelta >= itemDamageTimer) {
			itemDamage = false;
			itemDamageTimer = 0;
			itemDamageDelta = 0;
			if instance_exists(obj_ball) with(obj_ball) damageMult = 1;
		}
	}
	// item timer processing
	if(itemFreeze) {
		itemFreezeDelta += scr_delta_to_ms(delta_time);
		risingSpeedFreeze = 0;
		if (itemFreezeDelta >= itemFreezeTimer) {
			risingSpeedFreeze = 1;
			itemFreeze = false;
			itemFreezeTimer = 0;
			itemFreezeDelta = 0;
		}
	}
	//옵션 키면 멈춤
	if instance_exists(obj_optionParant) risingSpeedOption = 0;
	else risingSpeedOption = 1;
	//모든 속도 비율을 섞은 다음 속도를 지정함
	var _ratio = risingSpeedRatio * risingSpeedFreeze * risingSpeedOption;
	scr_movableSetSpeed(RISING_SPEED * _ratio);

	if (controlPressing) {
		//(x0, y0) 계산
		x0 = obj_ballGeneratorParent.x;
		y0 = obj_ballGeneratorParent.y;
	}
	/*
	if (count_ball <= ballCount) {
		with (obj_ballGeneratorParent) {
			ballCount = other.ballCount - other.count_ball;
			//drawArrow = 0;
		}
	}
	*/
	//게임오버를 체크하는 코드
	highestBrick = 5000; 
	with(obj_brickParent) other.highestBrick = min(other.highestBrick, y);
	if (highestBrick < THRESHOLD_Y) {
		other.isGameover = true;
		other.state = BALL_STATE_3_GAMEOVER;
	}
	
	//덴저존 표시해주는 코드
	if (highestBrick < 900) dangerLine.visible = true;
	else dangerLine.visible = false;

}
switch(state) {
	//공 발사전
	case BALL_STATE_0_IDLE :
		if (controlPressing) {
			state = BALL_STATE_1_FIRING;
			if instance_exists(obj_holdToStart) obj_holdToStart.phase = 1;
		}
		break;
		
	//공 발사중
	case BALL_STATE_1_FIRING :
		var _canCreate = scr_tileCanCreate();
		if (_canCreate) {
			obj_ballGeneratorElevator.ballCount += 1;
			scr_tileCreate(global.stage, MAX_ROW); // Create tiles
	        global.stage++; // Advance the stage
			instance_create_layer(_width + 100, scr_get_y_coordinate(7), "Brick", obj_brickGhost);
		}
		
		//(x0, y0)와 (x1, y1)으로부터 공이 날아갈 방향을 계산하고 obj_direction에 대입
		//동시에 obj_ballGenerator에 화살표 그리라고 지시
		with (obj_ballGeneratorParent) {
			var dir = point_direction(other.x0, other.y0, other.x1, other.y1);
			ballDirection = clamp(180 + (dir - 240) * 3, 180, 360);
			drawArrow = 1;
		}
		break;
		
	case BALL_STATE_3_GAMEOVER:
	    // Clean up any necessary game objects or variables
	    with (obj_ball) {
	        instance_destroy(); // Destroy remaining balls
	    }

	    // Reset important global variables
	    global.easing_active = false;
	    global.ballCount = 0;

	    // Create the GUI instance for the game-over screen
	    if (!instance_exists(obj_gameover)) { // Ensure only one instance is created
			var gui_x = display_get_gui_width() / 2;
			var gui_y = display_get_gui_height() / 2;
			var instance = instance_create_layer(gui_x, gui_y, "Option", obj_gameover);
		}
	    break;
}

//상승속도 배수 조절 코드
if (global.stage <= 10) risingSpeedRatio = 1
else if (global.stage <= 30) risingSpeedRatio = 1 + ((global.stage - 10) * 1 / 100);
else if (global.stage <= 100) risingSpeedRatio = 1.2 + ((global.stage - 30) * 6 / 700);
else risingSpeedRatio = 1.8 + ((global.stage - 100) * 10 / 1000)