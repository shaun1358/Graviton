image_xscale = scale_press;
image_yscale = scale_press;
var row = target div 3;
var column = target % 3;
x = owner.x + 270 + (200 * column);
y = owner.y+ 530 + (200 * row);
//show_debug_message("shopPatternHighlightStep"+string(x)+string(y));
if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	scale_press = (1 + (scale_press * 3)) / 4;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}
