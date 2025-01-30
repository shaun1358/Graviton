//피격될 경우
if (hit == 1) {
	//나중에 flash와 피격음도 추가 예정
	// put it into ball collision instead
	//if (breakable == 1) hp -= damage;
	//damage = 0;
	
	hitScale = 1.2;
	hit = 0;
}

if (hp <= 0) {
	//나중에 particle과 파괴음도 추가 예정
	global.scoreGame += brickScore;
	if(room = room_gameElevator){
		//item이 나올 확률 조절
		item = random(100);
		if(item <= 2/* && !instance_exists(obj_itemDamage)*/) instance_create_layer(x,y,"Instances",obj_itemDamage);
		else if(item <= 4 /*&& !instance_exists(obj_itemDelete)*/) instance_create_layer(x,y,"Instances",obj_itemDelete);
		else if(item <= 6/* && !instance_exists(obj_itemFreeze)*/) instance_create_layer(x,y,"Instances",obj_itemFreeze);
	}
	with instance_create_layer(x, y, layer, obj_particleBrickBreak) {
		sprite_index = other.sprite_index;
		
	}
	
	instance_destroy();
}

createScale = (1 + (createScale * 5)) / 6;
createAlpha = (1 + (createAlpha * 5)) / 6;
if (createScale < 1.01) createScale = 1;
if (createAlpha > 0.99) createAlpha = 1;
image_alpha = createAlpha;

image_xscale = hitScale * createScale;
image_yscale = hitScale * createScale;
hitScale = (1 + (3 * hitScale)) / 4;
if (hitScale < 1.01) hitScale = 1;