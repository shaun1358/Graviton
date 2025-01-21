//중력 적용 코드
if (gravtApply == 1) {
	physics_apply_impulse(x, y, 0, gravtPower);
	phy_linear_damping = linearDamping;
}

//방 탈출하면 파괴되게 만들어야함; 지금은 임시로 y좌표 > 2000이면 뽀개지게 만들었음
if (y > 2000) {
    if (instance_exists(obj_gameElevator)) {
        with (obj_gameElevator) {
            count_ball--;
			total_destruction++;
        }
    }
    instance_destroy();
}
phy_speed_y = clamp(phy_speed_y, -yspdMax, yspdMax);