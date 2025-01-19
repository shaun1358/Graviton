if(place_meeting(x, y, obj_ball) && obtained == 0) {
	/*
    obtained = 1;
    visible = false;
    global.min_y = -1; // 초기값을 -1로 설정
    
    // 먼저 가장 작은 y값(가장 위에 있는 벽돌의 y좌표)을 찾음
    with (obj_brickParent) {
        if (global.min_y == -1 || phy_position_y < global.min_y) {
            global.min_y = phy_position_y;
        }
    }
    
    // 찾은 y값과 정확히 일치하는 벽돌만 삭제
    with (obj_brickParent) {
        if (phy_position_y == global.min_y) {
            instance_destroy();
        }
    }
    
    obtained = 0;
	*/
	instance_destroy();
}