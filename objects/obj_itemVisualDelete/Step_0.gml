if (timer == 1) with instance_create_layer(x, y, layer, obj_particleItemDelete1) {
	timerDuration = other.timerDuration;
}

timer += 1;
if (timer >= timerDuration) {
	//min_y = 5000; // 초기값을 큰 값으로 설정
    
    // 먼저 가장 작은 y값(가장 위에 있는 벽돌의 y좌표)을 찾음
    // 찾은 y값과 정확히 일치하는 벽돌만 삭제
	//...였는데 폭탄 폭탄은 저 위에 있는데 블록이 파괴되는 기현상이 발견되서 수정
    /*
	with (obj_brickParent) {
        if (phy_position_y < other.min_y) {
            other.min_y = phy_position_y;
        }
    }
	with (obj_brickParent) {
        if (other.min_y - other.epsilon <= phy_position_y && other.min_y + other.epsilon >= phy_position_y) {
            instance_destroy();
        }
    }
	*/

	instance_destroy();
	
}