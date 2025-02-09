x = owner.x + ((ownerW / 2) - 150);
y = owner.y + (ownerH - 200);
ownerW = owner.sprite_width;
ownerH = owner.sprite_height;
image_xscale = scale_press;
image_yscale = scale_press;

if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	scale_press = (1 + (scale_press * 9)) / 10;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}
