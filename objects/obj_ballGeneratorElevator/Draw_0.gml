draw_self();

scr_drawSetText(c_white, fnt_pressStart2P_20, fa_center, fa_middle);
draw_text(x, y + 70, "x" + string(ballCount));
draw_text(x+100, y + 70, "x" + string(ballCount/100));