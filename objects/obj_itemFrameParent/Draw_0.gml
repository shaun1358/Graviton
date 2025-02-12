/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_ext(spr_itemFrameCover, 0, x, y, 1, timeElapsed/duration, 0, c_white, 1);
scr_drawSetText(c_white, fnt_maple, fa_center, fa_middle);
/*
draw_text(x, y, string(timeElapsed));
draw_text(x, y+50, string(duration));
