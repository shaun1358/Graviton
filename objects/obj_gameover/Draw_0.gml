draw_self();

scr_drawSetText(#C1E5F5, fnt_pressStart2P_30, fa_center, fa_middle);
draw_text(x + (sprite_width / 2), y + (sprite_height / 2) - 150, "SCORE");
scr_drawSetText(#C1E5F5, fnt_pressStart2P_50, fa_center, fa_middle);
draw_text_transformed(x + (sprite_width / 2), (y + (sprite_height / 2) - 70), scoreShow, scoreSize, scoreSize, 0);

if (scoreHighShow == 1) {
	draw_sprite(spr_highscore, 0, x + (sprite_width / 2) + 200, (y + (sprite_height / 2) - 150));
}
else if (scoreHighShow == 2) {
	scr_drawSetText(#C1E5F5, fnt_pressStart2P_20, fa_center, fa_middle);
	draw_sprite_ext(spr_trophy, 0, x + (sprite_width / 2) - (string_length(scoreHigh) * 14) - 20, y + (sprite_height / 2), 0.5, 0.5, 0, c_white, 1);
	draw_text(x + (sprite_width / 2), y + (sprite_height / 2) + 0, string(scoreHigh));
}

scr_drawSetText(#C1E5F5, fnt_pressStart2P_30, fa_center, fa_middle);
draw_text(x + (sprite_width / 2), y + (sprite_height / 2) + 100, "COIN");
scr_drawSetText(#C1E5F5, fnt_pressStart2P_30, fa_center, fa_middle);
if (coinPhase < 2) {
	draw_sprite_ext(spr_coin, 0, x + (sprite_width / 2) - (string_length(coinShow) * 19) - 50 - 19, (y + (sprite_height / 2) + 170), 2 * coinSize, 2 * coinSize, 0, c_white, 1);
	draw_text_transformed(x + (sprite_width / 2), (y + (sprite_height / 2) + 170), "+" + string(coinShow), coinSize, coinSize, 0);

}
else {
	draw_sprite_ext(spr_coin, 0, x + (sprite_width / 2) - (string_length(coinShow) * 19) - 50, (y + (sprite_height / 2) + 170), 2 * coinSize, 2 * coinSize, 0, c_white, 1);
	draw_text_transformed(x + (sprite_width / 2), (y + (sprite_height / 2) + 170), coinShow, coinSize, coinSize, 0);
	scr_drawSetText(#C1E5F5, fnt_pressStart2P_20, fa_center, fa_middle);
	draw_text_transformed(x + (sprite_width / 2), (y + (sprite_height / 2) + 210), "(+" + string(global.coinGame) + ")", coinSize, coinSize, 0);
}

//draw_text(200, 200, coinPhase);
