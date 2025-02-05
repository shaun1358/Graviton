if (timer >= timerDuration) instance_destroy();

timer += 1;

if (timer % timerPeriod == 0 && timerDuration - timer > 60) {
	//instance_create_layer(1080 / 2, 1920 - 500, "Effect", obj_particleItemWeight2)
	scr_generateParticle(obj_particleItemWeight2, 1, 0, 0, 1080 / 2, 1920 - 500);	
}

effect1_alpha = 0.8 + (sin(timer / 20) * 0.2);
effect1_alpha *= min(1, (timerDuration - timer) / 60);

effect2_alpha = max(0, (-0.002 * power(timer, 2)) + (0.04 * timer) + 0.3);