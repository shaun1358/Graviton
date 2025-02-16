// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopCreateP4() {
	if not instance_exists(obj_shopParent) {
		scr_soundEffect(snd_optionOn, 1, 1, false);
		shopID = instance_create_layer(x, y, "Option", obj_shopPage4);
		shopID.depth = 5;
		var _x = shopID.x;
		var _y = shopID.y;
		with instance_create_layer(_x, _y, "Option", obj_shopTab) {
			depth = 1;
			owner = other.shopID;
			page = 4;
		}
		with instance_create_layer(_x + 688 + 50, _y + 131 + 110, "Option", obj_shopExit) {
			depth = 3;
			owner = other.shopID;
		}
		
		for (var i = 0; i < 2; i++) {
			for (var j = 0; j < 3; j++) {
				with instance_create_layer(_x + 270 + (200 * j), _y + 530 + (200 * i), "Option", obj_shopPatternSelect) {
					target = (i * 3) + j;
					depth = 3;
					owner = other.shopID;
				}
			}
		}
		
		with instance_create_layer(_x + 470 - 140, _y + 915, "Option", obj_buttonPrevious) {
			target = 3;
			depth = 3;
			owner = other.shopID;
		}
		
		
		with instance_create_layer(0, 0, "Option", obj_shopPatternHighlight) {
			if      (global.shopSchema == "Classic")  target = global.skinBGClassicPattern;
			else if (global.shopSchema == "Elevator") target = global.skinBGElevatorPattern;
			depth = 2;
			owner = other.shopID;
		}
	}
}