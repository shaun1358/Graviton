// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_roomTransition() {
	with (obj_roomTransition) {
		mode = argument[0];
		if (argument_count > 1) target = argument[1];
	}
}