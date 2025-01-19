//디버그용
draw_self();
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