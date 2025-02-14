event_inherited();
if (timer >= timerDuration) instance_destroy();

//timer += 1;
/*
if (timer % timerPeriod == 0 && timerDuration - timer > 60) {
	var _x = random_range(0, 1080);
	scr_generateParticle(obj_particleItemIce1, 1, 0, 0, _x, -20);
}
*/

effect1_alpha = 0.9 + (sin(timer / 20) * 0.1);
effect1_alpha *= min(1, (timerDuration - timer) / 60);

effect2_alpha = max(0, (-0.002 * power(timer, 2)) + (0.04 * timer) + 0.3);