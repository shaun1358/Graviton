if (obj_gameOrigin.state == 0) visible = 1;
else if (ballCount <= 0) visible = 0;

if (obj_gameOrigin.state == 1) {
	if (ballTimer == 0 && ballCount > 0) {
		ballCount--;
		var _ball = instance_create_layer(x, y, layer, obj_ball);
		
		var _xForce = lengthdir_x(other.ballSpeed, other.ballDirection);
		var _yForce = lengthdir_y(other.ballSpeed, other.ballDirection);
		
		with (_ball) {
			physics_apply_impulse(x, y, _xForce, _yForce)
		}
		ballTimer = ballDelay;
	}
	//if (ballTimer <= 0) ballTimer = ballDelay;
	ballTimer--;
}
else {
	ballTimer = 0;
}