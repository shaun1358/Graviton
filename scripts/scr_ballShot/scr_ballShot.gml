function scr_ballShot(force, dir, ballCount) {
	var _ball = instance_create_layer(x, y, "Ball", obj_ball);
	dir = clamp(dir, 180, 360);
	var _xForce = lengthdir_x(force, dir);
	var _yForce = lengthdir_y(force, dir);
	
	with (_ball) {
		physics_apply_impulse(x, y, _xForce, _yForce);
		_ball.damage = max(1, ballCount / 100);
	}
}