// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_generateItem() {
	var _p = random(100);
	var _item = noone;
	//적당히 좋은 아이템
	if      (_p <= 4 * (1 + global.statLuck / 10)) _item = choose(obj_itemDelete, obj_itemWeight);
	//야무진 아이템
	else if (_p <= 6 * (1 + global.statLuck / 10)) _item = choose(obj_itemDamage, obj_itemFreeze, obj_itemDoubleBall);
	//똥덩어리
	else if (_p >= 95 + (global.statLuck / 4))     _item = choose(obj_itemBlockRandomize, obj_itemDevil);
	if (_item != noone) instance_create_layer(x, y, layer, _item);
}