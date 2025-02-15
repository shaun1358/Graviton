draw_self();

draw_sprite_ext(spr_coin, 0, drawX - (string_length(price) * 9) - 30, drawY, 1, 1, 0, c_white, drawAlpha);
scr_drawSetText($F0D590, fnt_pressStart2P_10, fa_center, fa_middle);
draw_text_transformed_color(drawX + 1, drawY + 1, price, 1.5, 1.5, 0, $89A9BA, $89A9BA, $89A9BA, $89A9BA, drawAlpha);
draw_text_transformed_color(drawX + 1, drawY - 1, price, 1.5, 1.5, 0, $89A9BA, $89A9BA, $89A9BA, $89A9BA, drawAlpha);
draw_text_transformed_color(drawX - 1, drawY + 1, price, 1.5, 1.5, 0, $89A9BA, $89A9BA, $89A9BA, $89A9BA, drawAlpha);
draw_text_transformed_color(drawX - 1, drawY - 1, price, 1.5, 1.5, 0, $89A9BA, $89A9BA, $89A9BA, $89A9BA, drawAlpha);
draw_text_transformed_color(drawX, drawY, price, 1.5, 1.5, 0, $F0D590, $F0D590, $F0D590, $F0D590, drawAlpha);