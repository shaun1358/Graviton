scr_drawSetText($F0D590, fnt_pressStart2P_20, fa_center, fa_middle);
draw_text(1080 / 2, 50, "Score");

scr_drawSetText($F0D590, fnt_pressStart2P_50, fa_center, fa_middle);
draw_text_transformed(1080 / 2, 120, scoreDraw, scoreScale, scoreScale, 0);

draw_sprite_ext(spr_trophy, 0, (1080 / 2) - (string_length(global.scoreClassic) * 14) - 15, 180, 0.5, 0.5, 0, c_white, 1);
scr_drawSetText($F0D590, fnt_pressStart2P_20, fa_center, fa_middle);
draw_text(1080 / 2 + 10, 180, global.scoreElevator);

draw_sprite(spr_gameBar, 0, 1080 / 2, 240);

//디버그용
draw_self();

//draw_text(100, 100, itemFreezeDelta)
//draw_text(100, 200, itemFreezeTimer);
/*
blink_alpha = 1; // Start fully visible
blink_direction = -1; // Fading out
blink_speed = 0.02; // Adjust speed of fade


draw_set_color(c_red);
draw_text(100, 100, state);
draw_text(100, 120, controlPressing);
draw_text(100, 140, controlReleasing);
draw_text(100, 160, ballCount);
draw_text(100, 180, count_ball);
draw_text(100, 200, "score : " + string(global.scoreGame));
with (obj_ballGenerator) {
	
draw_text(100, 250, string(ballCount));
}