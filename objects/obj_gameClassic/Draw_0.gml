
draw_self();

scr_drawSetText($F0D590, fnt_pressStart2P_20, fa_center, fa_middle);
draw_text(_width / 2, _marginY + 50, "Score");

scr_drawSetText($F0D590, fnt_pressStart2P_50, fa_center, fa_middle);
draw_text_transformed(_width / 2, _marginY + 120, scoreDraw, scoreScale, scoreScale, 0);

draw_sprite_ext(spr_trophy, 0, (_width / 2) - (string_length(global.scoreClassic) * 14) - 15, _marginY + 180, 0.5, 0.5, 0, c_white, 1);
scr_drawSetText($F0D590, fnt_pressStart2P_20, fa_center, fa_middle);
draw_text(_width / 2 + 10, _marginY + 180, global.scoreClassic);

//디버그용
/* ugly i will take it off for now
draw_set_color(c_red);
draw_text(100, 100, state);
draw_text(100, 120, controlPressing);
draw_text(100, 140, controlReleasing);
draw_text(100, 200, "score : " + string(global.scoreGame));