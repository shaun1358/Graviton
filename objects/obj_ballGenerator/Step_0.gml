
if (instance_exists(obj_camera)) {
    x = obj_camera.cameraWidth / 2;
    y = obj_camera.cameraMarginY + 300;
} else {
    x = 540;
    y = 300;
}

if (ballDirection < 180 && ballDirection >= 90) ballDirection = 180;
else if (ballDirection < 90 && ballDirection > 0) ballDirection = 0;
if (room == room_gameClassic) {
    // Logic for gamemode origin
    
    if (obj_gameClassic.state == BALL_STATE_0_IDLE) visible = 1;
    else if (ballCount <= 0) visible = 0;

    if (obj_gameClassic.state == BALL_STATE_1_FIRING) {
        if (ballTimer <= 0 && ballCount > 0) {
            ballCount--;
            var _ball = instance_create_layer(x, y, layer, obj_ball);
			
            var _xForce = lengthdir_x(other.ballSpeed, other.ballDirection);
            var _yForce = lengthdir_y(other.ballSpeed, other.ballDirection);
			
			//if (_yForce < 0) _yForce = 0;
			
            with (_ball) {
                physics_apply_impulse(x, y, _xForce, _yForce);
            }
            ballTimer = ballDelay;

        }
        ballTimer--;
    } else {
        ballTimer = 0;
    }
} 
else if (room == room_gameElevator) {
    // Logic for gamemode 2
	/*
    if (instance_exists(obj_camera)) {
        x = obj_camera.cameraWidth / 4;
        y = obj_camera.cameraMarginY + 50;
    } else {
        x = 640;
        y = 120;
		
    } */
	timer.curTime++;

    if (obj_gameElevator.state == BALL_STATE_0_IDLE) visible = 1;
    else if (ballCount <= 0) visible = 0;

    if (obj_gameElevator.state == BALL_STATE_1_FIRING) {
		
		if(timer.curTime==timer.endTime){
			while(ballCount>6){
				 ballCount--;
	            var _ball = instance_create_layer(x, y, layer, obj_ball);

				// elevator mode screen ball counting
				if (instance_exists(obj_gameElevator)) {
				    with (obj_gameElevator) {
				        count_ball += 1;
				    }
				}
			
				var temp = other.ballDirection + irandom(30)-15;
	            var _xForce = lengthdir_x(other.ballSpeed, temp);
	            var _yForce = lengthdir_y(other.ballSpeed, temp);

	            with (_ball) {
	                physics_apply_impulse(x, y, _xForce, _yForce);
					_ball.damage = max(1, obj_gameElevator.ballCount/100);
					if(obj_gameElevator.itemDamage){
						_ball.multiplier = 2;
					}
					else{
						_ball.multiplier = 1;
					}
	            }
			
			}
			timer.curTime=0;
		}
        if (ballTimer <= 0 && ballCount > 0) {
            ballCount--;
            var _ball = instance_create_layer(x, y, layer, obj_ball);

			// elevator mode screen ball counting
			if (instance_exists(obj_gameElevator)) {
			    with (obj_gameElevator) {
			        count_ball += 1;
			    }
			}
			
            var _xForce = lengthdir_x(other.ballSpeed, other.ballDirection);
            var _yForce = lengthdir_y(other.ballSpeed, other.ballDirection);

            with (_ball) {
                physics_apply_impulse(x, y, _xForce, _yForce);
				_ball.damage = max(1, obj_gameElevator.ballCount/100);
				if(obj_gameElevator.itemDamage){
					_ball.multiplier = 2;
				}
				else{
					_ball.multiplier = 1;
				}
            }
            ballTimer = ballDelay;
        }
		
        ballTimer--;
    } else {
        ballTimer = 0;
    }
}

if instance_exists(obj_laser) {
	if (drawArrow) {
		obj_laser.visible = 1;
		obj_laser.image_angle = ballDirection;
	}
	else {
		obj_laser.visible = 0;
	}
}