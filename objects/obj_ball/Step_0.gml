//중력 적용 코드
if (gravtApply == 1) {
	physics_apply_impulse(x, y, 0, gravtPower);
	phy_linear_damping = linearDamping;
}

//방 탈출하면 파괴
if (instance_exists(obj_camera)) {
	yThreshold = obj_camera.cameraMarginY + 1920;
}
else yThreshold = 1920;
if (y > yThreshold) {
	if (room == room_gameElevator) {
		obj_ballGeneratorElevator.ballCount += 1;
	}
	instance_create_layer(x, y, "Effects", obj_ripple);
    instance_destroy();
}
phy_speed_y = clamp(phy_speed_y, -yspdMax, yspdMax);

//옵션창이 있으면 공 멈춤
if instance_exists(obj_optionParant) {
	phy_linear_damping = 0;
	phy_speed_x = 0;
	phy_speed_y = 0;
}
else {
	phy_linear_damping = linearDamping;
	if (phy_speed_x != 0) xspdTemp = phy_speed_x;
	if (phy_speed_y != 0) yspdTemp = phy_speed_y;
	phy_speed_x = xspdTemp;
	phy_speed_y = yspdTemp;
}