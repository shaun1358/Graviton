//피격될 경우
if (hit == 1) {
	//나중에 flash와 피격음도 추가 예정
	if (breakable == 1) hp--;
	hit = 0;
}

if (hp <= 0) {
	//나중에 particle과 파괴음도 추가 예정
	global.scoreGame += brickScore;
	instance_destroy();
}

phy_position_x = scr_get_x_coordinate(column);
//phy_position_y = scr_get_y_coordinate(row);