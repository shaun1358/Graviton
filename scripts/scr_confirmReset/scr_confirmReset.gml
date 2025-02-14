function scr_confirmReset() {
	scr_optionDelete();

	instance_create_depth(0,0, -100, obj_resetConfirm);
}
