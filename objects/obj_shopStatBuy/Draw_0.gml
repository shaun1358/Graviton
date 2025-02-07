draw_self();

var i = 0;
for (i = 1; i <= 5; i++) {
	if (targetLevel >= i) draw_sprite(spr_shopStatCheckO, 0, x + xDefault - xDistance + (xDistance * i), y + yDefault);
	else                  draw_sprite(spr_shopStatCheckX, 0, x + xDefault - xDistance + (xDistance * i), y + yDefault);
}
for (i = 6; i <= 10; i++) {
	if (targetLevel >= i) draw_sprite(spr_shopStatCheckO, 0, x + xDefault - xDistance + (xDistance * (i - 5)), y + yDefault + yDistance);
	else                  draw_sprite(spr_shopStatCheckX, 0, x + xDefault - xDistance + (xDistance * (i - 5)), y + yDefault + yDistance);
}

if (targetLevel < 10) {
	if (global.coin >= scr_shopGetPriceStat(targetLevel)) scr_drawSetText(#F3FFE5, fnt_pressStart2P_20, fa_center, fa_middle);
	else scr_drawSetText(#2C3323, fnt_pressStart2P_20, fa_center, fa_middle);
	draw_text_transformed(x, y, scr_shopGetPriceStat(targetLevel), scale_press, scale_press, 0);
}
else {
	scr_drawSetText(#CCC453, fnt_pressStart2P_20, fa_center, fa_middle);
	draw_text_transformed(x, y, "MAX", scale_press, scale_press, 0);
}

/*
draw_text(x, y + 100, target);
draw_text(x, y + 150, targetLevel);