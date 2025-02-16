image_xscale = scale_press;
image_yscale = scale_press;
schema = global.shopSchema;

if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	scale_press = (1 + (scale_press * 9)) / 10;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}

if (global.skinBGColorOwn[target] == 1) image_alpha = 0;