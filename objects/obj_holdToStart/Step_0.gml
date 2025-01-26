timer++;

draw_x = 200 * sin(timer / timer_period);
draw_angle = -30 * sin(timer / timer_period);

if (phase == 1) {
	draw_scale += 0.02;
	draw_alpha -= 0.05;
}

if (draw_alpha <= 0) instance_destroy();