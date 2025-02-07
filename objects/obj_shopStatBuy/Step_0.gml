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

if (targetLevel < 10) {
	if (global.coin >= scr_shopGetPriceStat(targetLevel)) sprite_index = spr_shopStatUpgradeO;
	else sprite_index = spr_shopStatUpgradeX;
}
else {
	sprite_index = spr_shopStatUpgradeWAN;
}