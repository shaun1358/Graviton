x = owner.x + 325 + global.soundEffect * 460;

image_xscale = scale_press;
image_yscale = scale_press;

if (scale_state == 2 || (not device_mouse_check_button(0, mb_left) && scale_state == 1)) {
	if (_sound == 0) scr_soundEffect(snd_gameStart, 1.5, 1, false);
	scale_press = (1 + (scale_press * 9)) / 10;
	if (scale_press <= 1.01) {
		scale_press = 1;
		scale_state = 0
	}
}

_sound++;