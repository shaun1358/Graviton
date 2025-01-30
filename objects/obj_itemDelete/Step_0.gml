event_inherited();

if(place_meeting(x, y, obj_ball)) {
    visible = false;
    min_y = 5000; // 초기값을 큰 값으로 설정
    
    // 먼저 가장 작은 y값(가장 위에 있는 벽돌의 y좌표)을 찾음
    with (obj_brickParent) {
        if (phy_position_y < other.min_y) {
            other.min_y = phy_position_y;
        }
    }
    
    // 찾은 y값과 정확히 일치하는 벽돌만 삭제
	with (obj_brickParent) {
        if (other.min_y - other.epsilon <= phy_position_y && other.min_y + other.epsilon >= phy_position_y) {
            instance_destroy();
        }
    }
	instance_destroy();
}