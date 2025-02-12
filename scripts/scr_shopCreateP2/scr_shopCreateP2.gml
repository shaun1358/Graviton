// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopCreateP2() {
	if not instance_exists(obj_shopParent) {
		shopID = instance_create_layer(x, y, "Option", obj_shopPage2);
		shopID.depth = 5;
		var _x = shopID.x;
		var _y = shopID.y;
		with instance_create_layer(_x + 688 + 50, _y + 131 + 50, "Option", obj_shopExit) {
			depth = 3;
			owner = other.shopID;
		}
		with instance_create_layer(_x + 470, _y + 880, "Option", obj_buttonPrevious) {
			depth = 3;
			owner = other.shopID;
			target = 6;
		}
	}
}