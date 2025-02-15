//피격될 경우
if (hit == 1) {
	global.coinGame += 1;
	global.coin += 1;
	if instance_exists(obj_gameClassic) obj_gameClassic.coinScale = 1.5;
	if instance_exists(obj_gameElevator) obj_gameElevator.coinScale = 1.5;
	coinTotal += 1;
	coinBonus -= 1;
	//나중에 flash와 피격음도 추가 예정	
	hitScale = 1.2;
	hitAlpha = 2;
	hit = 0;

}

//블록이 파괴될 경우
if (hp <= 0) {
	global.coinGame += ceil(coinBonus);
	global.coin += ceil(coinBonus);
	if instance_exists(obj_gameClassic) obj_gameClassic.coinScale = 1.5;
	if instance_exists(obj_gameElevator) obj_gameElevator.coinScale = 1.5;
	//show_debug_message("coinBonus : " + string(coinBonus));
	//show_debug_message("brickParentStepcoinTotal + coinBonus : " + string(coinTotal + coinBonus));
	global.scoreGame += brickScore;
	if (room = room_gameElevator){
		scr_generateItem();
		//item이 나올 확률 조절
		/*
		item = random(100);
		//if      (item <= 100) instance_create_layer(x, y, layer, obj_itemDoubleBall);
		if      (item <= 1 * (1 + (global.statLuck / 20))) instance_create_layer(x, y, layer, obj_itemDamage);
		else if (item <= 2 * (1 + (global.statLuck / 20))) instance_create_layer(x, y, layer, obj_itemDelete);
		else if (item <= 3 * (1 + (global.statLuck / 20))) instance_create_layer(x, y, layer, obj_itemFreeze);
		else if (item <= 4 * (1 + (global.statLuck / 20))) instance_create_layer(x, y, layer, obj_itemBlockRandomize);
		else if (item <= 5 * (1 + (global.statLuck / 20))) instance_create_layer(x, y, layer, obj_itemDoubleBall);
		else if (item <= 6 * (1 + (global.statLuck / 20))) instance_create_layer(x, y, layer, obj_itemWeight);
		else if (item <= 7 * (1 + (global.statLuck / 20))) instance_create_layer(x, y, layer, obj_itemDevil);
		*/

	}
	//블록 파괴 파티클 생성
	//근데 삼각형은 xscale yscale 지정해줘야 해서 따로 뺌
	if (sprite_index != spr_brickTriangleNeon) {
		with instance_create_layer(x, y, layer, obj_particleBrickBreak) {
			sprite_index = other.sprite_index;
		}
	}
	scr_generateParticle(obj_particleCoinSplash, min(20, ceil(coinBonus)), 90, 0, x, y);
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

if place_meeting(x, y, obj_particleItemDelete2) {
	hit = 1;
	hp -= 10000;
}