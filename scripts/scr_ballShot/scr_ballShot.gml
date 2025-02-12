function scr_ballShot(force, dir, ballCount) {

	dir = clamp(dir, 180, 360);
	_xForce = lengthdir_x(force, dir);
	 _yForce = lengthdir_y(force, dir);
	
	with instance_create_layer(x, y, "Ball", obj_ball) {
		
		phy_speed_x = other._xForce;
		phy_speed_y = other._yForce;
		xspdTemp = phy_speed_x;
		yspdTemp = phy_speed_y;
		//physics_apply_impulse(x, y, _xForce, _yForce);
		damage = max(1, ballCount / 100);
	}
}