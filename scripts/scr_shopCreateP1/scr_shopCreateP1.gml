// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopCreateP1() {
	if not instance_exists(obj_shopParent) {
		scr_soundEffect(snd_optionOn, 1, 1, false);
		shopID = instance_create_layer(x, y, "Option", obj_shopPage1);
		shopID.depth = 5;
		var _x = shopID.x;
		var _y = shopID.y;
		with instance_create_layer(_x + 688 + 50, _y + 131 + 50, "Option", obj_shopExit) {
			depth = 3;
			owner = other.shopID;
		}
		with instance_create_layer(_x + 200 + 52, _y + 490 + 22, "Option", obj_shopStatBuy) {
			depth = 3;
			owner = other.shopID;
			target = 1;
		}
		with instance_create_layer(_x + 410 + 52, _y + 490 + 22, "Option", obj_shopStatBuy) {
			depth = 3;
			owner = other.shopID;
			target = 2;
		}
		with instance_create_layer(_x + 635 + 52, _y + 490 + 22, "Option", obj_shopStatBuy) {
			depth = 3;
			owner = other.shopID;
			target = 3;
		}
		with instance_create_layer(_x + 280 + 52, _y + 760 + 22, "Option", obj_shopStatBuy) {
			depth = 3;
			owner = other.shopID;
			target = 4;
		}
		with instance_create_layer(_x + 580 + 52, _y + 760 + 22, "Option", obj_shopStatBuy) {
			depth = 3;
			owner = other.shopID;
			target = 5;
		}
		with instance_create_layer(_x + 470 + 140, _y + 885, "Option", obj_buttonNext) {
			target = 2;
			depth = 3;
			owner = other.shopID;
		}
	}
}