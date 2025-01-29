//중력 적용 코드
if (gravtApply == 1) {
	physics_apply_impulse(x, y, 0, gravtPower);
	phy_linear_damping = linearDamping;
}

//방 탈출하면 파괴되게 만들어야함;
// y >= room_height => destroyed

if(instance_exists(obj_camera)){
	yThreshold = obj_camera.cameraMarginY+1920;
}
else
	yThreshold = 1920;
	
if (y > yThreshold) {
    if (instance_exists(obj_gameElevator)) {
        with (obj_gameElevator) {
            count_ball--;
			total_destruction++;
        }
    }
	instance_create_layer(x, y, "Effects", obj_ripple);

    instance_destroy();
}
phy_speed_y = clamp(phy_speed_y, -yspdMax, yspdMax);