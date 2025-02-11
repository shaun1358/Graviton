draw_self();

scr_drawSetText(c_white, fnt_pressStart2P_20, fa_center, fa_middle);
if (obj_gameClassic.state == BALL_STATE_0_IDLE) draw_text(x, y + 70, "x" + string(obj_gameClassic.ballCount));
else draw_text(x, y + 70, "x" + string(ballCount));

draw_text(x, y + 100, "I AM GENERATOR");