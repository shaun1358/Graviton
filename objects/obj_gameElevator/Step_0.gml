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
	mouseLock = false; // Unlock when the user clicks again


}
//마우스 놓기 / 손가락 떼기 인식
else if device_mouse_check_button_released(0, mb_left) {
	controlPressing = 0;
	controlReleasing = 1;
}

if (!isGameover) {
	// item timer processing
	if (itemDamage) {
		if not instance_exists(obj_optionParent)
			itemDamageDelta++;
		if instance_exists(obj_ball) with(obj_ball) damageMult = 2;
		//itemDamageDelta += scr_delta_to_ms(delta_time);
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
		if not instance_exists(obj_optionParent)
			itemFreezeDelta++;
		//itemFreezeDelta += scr_delta_to_ms(delta_time);
		risingSpeedFreeze = 0;
		if (itemFreezeDelta >= itemFreezeTimer) {
			risingSpeedFreeze = 1;
			itemFreeze = false;
			itemFreezeTimer = 0;
			itemFreezeDelta = 0;
		}
	}
	if (itemWeight) {
		if not instance_exists(obj_optionParent)
			itemWeightDelta++;
		if instance_exists(obj_ball) obj_ball.gravtPower = 200;
		if instance_exists(obj_ballGhost) obj_ballGhost.gravtPower = 200;
		if (itemWeightDelta >= itemWeightTimer) {
			if instance_exists(obj_ball) obj_ball.gravtPower = 50;
			if instance_exists(obj_ballGhost) obj_ballGhost.gravtPower = 50;
			itemWeight = false;
			itemWeightDelta = 0;
			itemWeightTimer = 0;
		}
	}
	
	// item devil timer control
	if(itemDevil) {
		if not instance_exists(obj_optionParent)
			itemDevilDelta++;
		if (itemDevilDelta >= itemDevilTimer) {
			itemDevil = false;
			itemDevilTimer = 0;
			itemDevilDelta = 0;
		}
	}
	
	//옵션 키면 멈춤
	if instance_exists(obj_optionParent) risingSpeedOption = 0;
	else risingSpeedOption = 1;
	//모든 속도 비율을 섞은 다음 속도를 지정함
	var _ratio = risingSpeedRatio * risingSpeedFreeze * risingSpeedOption;
	scr_setMovableSpeed(RISING_SPEED * _ratio);

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

/* ITEM FRAME */
// 생성할 오브젝트 배열 (true인 것만 저장)
var obj_list = [];

// 체크하여 true인 변수에 해당하는 객체를 배열에 추가
if (itemDamage) array_push(obj_list, obj_itemFrameDamage);
if (itemFreeze) array_push(obj_list, obj_itemFrameFreeze);
if (itemWeight) array_push(obj_list, obj_itemFrameWeight);
if (itemDevil)  array_push(obj_list, obj_itemFrameDevil);

// 기존 객체 삭제 (리셋) - 위에서부터 다시 채우기 위해
with (obj_itemFrameParent) { // obj_itemFrameParent가 부모 오브젝트
    instance_destroy();
}

// 새로운 오브젝트를 위에서부터 생성
var y_start = 288;
var spacing = 96;

for (var i = 0; i < array_length(obj_list); i++) {
    instance_create_layer(96, y_start + (spacing * i), "Option", obj_list[i]);
}
/* END OF ITEM FRAME */
show_debug_message("gameElevatorStep"+string(obj_list));
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
			scr_tileCreate(global.stage, MAX_ROW, global.stage); // Create tiles
	        global.stage++; // Advance the stage
			instance_create_layer(_width + 100, scr_get_y_coordinate(7), "Brick", obj_brickGhost);
		}
		
		//(x0, y0)와 (x1, y1)으로부터 공이 날아갈 방향을 계산하고 obj_direction에 대입
		//동시에 obj_ballGenerator에 화살표 그리라고 지시
		with (obj_ballGeneratorParent) {
			if (other.y1 > y && !other.mouseLock) { 
				var userInput = clamp(other.x1 - 180, 0, 720);
				
				if(other.itemDevil){
					userInput = 720 - userInput;
				}
			    var dir = 180 + userInput / 4;
    
			    if (!instance_exists(obj_optionParent)) {
					ballDirection = dir;
			        drawArrow = 1;
			    }
				
				if(other.itemDevil){
					obj_laser.image_angle = 540-obj_ballGeneratorParent.ballDirection;
				}
				else{
					obj_laser.image_angle = obj_ballGeneratorParent.ballDirection;

				}
			}

		}
		break;
		
	case BALL_STATE_3_GAMEOVER:
	    // Clean up any necessary game objects or variables
	    with (obj_ball) {
	        instance_destroy(); // Destroy remaining balls
	    }

	    // Reset important global variables
	    global.easing_active = false;
	   // global.ballCount = BALL_COUNT_ELEVATOR;

	    // Create the GUI instance for the game-over screen
	    if (!instance_exists(obj_gameover)) { // Ensure only one instance is created
			scr_gameover();
			/*
			var gui_x = display_get_gui_width() / 2;
			var gui_y = display_get_gui_height() / 2;
			instance_create_layer(gui_x, gui_y, "Option", obj_gameover);
			*/
		}
	    break;
}

//상승속도 배수 조절 코드
risingSpeedRatio = scr_getMovableSpeed(global.stage);
/*
if (global.stage <= 10) risingSpeedRatio = 1
else if (global.stage <= 30) risingSpeedRatio = 1 + ((global.stage - 10) * 1 / 100);
else if (global.stage <= 100) risingSpeedRatio = 1.2 + ((global.stage - 30) * 6 / 700);
else risingSpeedRatio = 1.8 + ((global.stage - 100) * 10 / 1000);
*/