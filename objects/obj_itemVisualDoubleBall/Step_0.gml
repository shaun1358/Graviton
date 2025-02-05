if (timer >= timerDuration) instance_destroy();
timer += 1;

if (timer == 1 && instance_exists(obj_ball)) with (obj_ball) {
	var _x = x;
	var _y = y;
	scr_generateParticle(obj_particleBall, 1, 0, 0, _x, _y);
}

effect2_alpha = max(0, (-0.002 * power(timer, 2)) + (0.04 * timer) + 0.3);