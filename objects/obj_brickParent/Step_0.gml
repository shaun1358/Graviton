//피격될 경우
if (hit == 1) {
	//나중에 flash와 피격음도 추가 예정
	if (breakable == 1) hp -= global.damage;
	damage = 0;
	hit = 0;
}

if (hp <= 0) {
	//나중에 particle과 파괴음도 추가 예정
	global.scoreGame += brickScore;
	if(room = room_gameElevator){
		//item이 나올 확률 조절
		item = random(10);
		if(item <= 1 && !instance_exists(obj_itemDamage)) instance_create_layer(x,y,"Instances",obj_itemDamage);
		else if(item <= 2 && !instance_exists(obj_itemDelete)) instance_create_layer(x,y,"Instances",obj_itemDelete);
		else if(item <= 3 && !instance_exists(obj_itemFreeze)) instance_create_layer(x,y,"Instances",obj_itemFreeze);
	}
	instance_destroy();
}

phy_position_x = scr_get_x_coordinate(column);
//phy_position_y = scr_get_y_coordinate(row);