image_xscale = scale_press;
image_yscale = scale_press;
var row = target div 8;
var column = target % 8;
x = owner.x + 190 + (80 * column);
y = owner.y+ 530 + (80 * row);

//show_debug_message("shopcolorhighlight"+string(target));

if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	scale_press = (1 + (scale_press * 3)) / 4;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}
