// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameover() {
	scr_setHighscore();
	scr_optionDelete();
	ownerID = instance_create_layer(0, 0, "Option", obj_gameover) 
	ownerID.depth = 5;
	with instance_create_layer(0, 0, "Option", obj_gameoverRetry) {
		owner = other.ownerID
		depth = 3;
	}
	with instance_create_layer(0, 0, "Option", obj_gameoverHome) {
		owner = other.ownerID
		depth = 3;
	}
}