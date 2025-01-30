event_inherited();

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