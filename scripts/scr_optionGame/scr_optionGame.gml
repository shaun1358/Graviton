
function scr_optionGame() {
	if not instance_exists(obj_optionParent) {
		//global.soundMusic = 1
		optionID = instance_create_layer(x, y, "Option", obj_optionGame);
		optionID.depth = 5;
		var _x = optionID.x
		var _y = optionID.y;
		with instance_create_layer(_x + 688 + 50, _y + 131 + 50, "Option", obj_optionExit) {
			depth = 3;
			owner = other.optionID;
		}
		with instance_create_layer(_x + 325, _y + 369, "Option", obj_optionBarM) {
			depth = 3;
			owner = other.optionID;
		}
		with instance_create_layer(_x + 325 + (global.soundMusic * 460), _y + 369, "Option", obj_optionButtM) {
			depth = 2;
			owner = other.optionID;
		}
		with instance_create_layer(_x + 325, _y + 529, "Option", obj_optionBarE) {
			depth = 3;
			owner = other.optionID;
		}
		with instance_create_layer(_x + 325 + (global.soundEffect * 460), _y + 529, "Option", obj_optionButtE) {
			depth = 2;
			owner = other.optionID;
		}
		with instance_create_layer(_x + 185, _y + 695, "Option", obj_optionCheckP) {
			depth = 2;
			owner = other.optionID;
		}
		
		with instance_create_layer(_x + 299, _y + 786, "Option", obj_optionCheckT) {
			depth = 2;
			owner = other.optionID;
		}
	}
}