// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopCreateP3() {
	if not instance_exists(obj_shopParent) {
		scr_soundEffect(snd_optionOn, 1, 1, false);
		shopID = instance_create_layer(x, y, "Option", obj_shopPage3);
		shopID.depth = 5;
		var _x = shopID.x;
		var _y = shopID.y;
		with instance_create_layer(_x, _y, "Option", obj_shopTab) {
			depth = 1;
			owner = other.shopID;
			page = 3;
		}
		with instance_create_layer(_x + 688 + 50, _y + 131 + 110, "Option", obj_shopExit) {
			depth = 3;
			owner = other.shopID;
		}
		for (var i = 0; i < 3; i++) {
			for (var j = 0; j < 8; j++) {
				with instance_create_layer(_x + 190 + (80 * j), _y + 530 + (80 * i), "Option", obj_shopColorSelect) {
					target = (i * 8) + j;
					depth = 3;
					page = 3;
					owner = other.shopID;
				}
			}
		}
		with instance_create_layer(_x + 470 - 140, _y + 915, "Option", obj_buttonPrevious) {
			target = 2;
			depth = 3;
			owner = other.shopID;
		}
		with instance_create_layer(_x + 470 + 140, _y + 915, "Option", obj_buttonNext) {
			target = 4;
			depth = 3;
			owner = other.shopID;
		}
		
		
		with instance_create_layer(0, 0, "Option", obj_shopColorHighlight) {
			target = global.skinBGClassicColor2;
			page = 3;
			depth = 2;
			owner = other.shopID;
		}
	}
}