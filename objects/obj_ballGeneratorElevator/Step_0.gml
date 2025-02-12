event_inherited();

if instance_exists(obj_optionParent) option = true;
else option = false;

if (obj_gameElevator.state == BALL_STATE_0_IDLE) visible = 1;

if (obj_gameElevator.state == BALL_STATE_1_FIRING && option == false) {
	timer.curTime++;
	if (timer.curTime == timer.endTime) {
		var i = 0;
		for (i = 0; i < ballCount; i++) {
			// Generate a normally distributed direction offset (mean = ballDirection, std_dev = 10)
			var _dir = scr_random_normal_simple(ballDirection, 6);
    
			scr_ballShot(ballSpeed, _dir, obj_gameElevator.ballCount);
		}

		ballCount -= i;
		timer.curTime = 0;

	}
	/*
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
	*/
    ballTimer--;
	
} else {
    ballTimer = 0;
}