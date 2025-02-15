// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopCreateP4() {
	if not instance_exists(obj_shopParent) {
		scr_soundEffect(snd_optionOn, 1, 1, false);
		shopID = instance_create_layer(x, y, "Option", obj_shopPage4);
		shopID.depth = 5;
		var _x = shopID.x;
		var _y = shopID.y;
		with instance_create_layer(_x + 688 + 50, _y + 131 + 50, "Option", obj_shopExit) {
			depth = 3;
			owner = other.shopID;
		}
		with instance_create_layer(_x + 470 - 140, _y + 885, "Option", obj_buttonPrevious) {
			target = 3;
			depth = 3;
			owner = other.shopID;
		}

	}
}