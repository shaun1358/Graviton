drawY = (y - 50 + (5 * drawY)) / 6;
drawAlpha -= 0.01;
if (drawAlpha <= 0) instance_destroy();

image_xscale = scale_press;
image_yscale = scale_press;
targetLevel = scr_shopGetStatLevel(target)

if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	scale_press = (1 + (scale_press * 9)) / 10;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}
