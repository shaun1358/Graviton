//피격될 경우
if (hit == 1) {
	//나중에 flash와 피격음도 추가 예정	
	hitScale = 1.2;
	hitAlpha = 2;
	hit = 0;
}

//블록이 파괴될 경우
if (hp <= 0) {
	global.scoreGame += brickScore;
	if (room = room_gameElevator){
		//item이 나올 확률 조절
		item = random(100);
		//if      (item <= 100) instance_create_layer(x, y, layer, obj_itemDoubleBall);
		if      (item <= 2) instance_create_layer(x, y, layer, obj_itemDamage);
		else if (item <= 4) instance_create_layer(x, y, layer, obj_itemDelete);
		else if (item <= 6) instance_create_layer(x, y, layer, obj_itemFreeze);
		else if (item <= 8) instance_create_layer(x, y, layer, obj_itemBlockRandomize);
		else if (item <= 10) instance_create_layer(x, y, layer, obj_itemDoubleBall);
		else if (item <= 12) instance_create_layer(x, y, layer, obj_itemWeight);
	}
	//블록 파괴 파티클 생성
	//근데 삼각형은 xscale yscale 지정해줘야 해서 따로 뺌
	if (sprite_index != spr_brickTriangleNeon) {
		with instance_create_layer(x, y, layer, obj_particleBrickBreak) {
			sprite_index = other.sprite_index;
		}
	}
	instance_destroy();
}

//따끈따끈하게 생성되었을때의 image_scale과 image_alpha 설정
createScale = (1 + (createScale * 5)) / 6;
createAlpha = (1 + (createAlpha * 5)) / 6;
if (createScale < 1.01) createScale = 1;
if (createAlpha > 0.5) createAlpha = 0.5;

//피격될 때의 image_scale 조정
image_xscale = hitScale * createScale;
image_yscale = hitScale * createScale;
image_alpha =  hitAlpha * createAlpha;
hitScale = (1 + (3 * hitScale)) / 4;
hitAlpha = (1 + (3 * hitAlpha)) / 4;

if (hitScale < 1.01) hitScale = 1;
if (hitAlpha < 1.01) hitAlpha = 1;