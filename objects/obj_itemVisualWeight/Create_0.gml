timer       = 0;
timerPeriod = 20;

timerDuration = 1000;

effect1_alpha = 0.3;

effect2_alpha = 0.3;

for (var i = 0; i < 5; i++) {
	var _x = random_range(100, 200) + (i * 200);
	var _y = random_range(-300, -100);
	scr_generateParticle(obj_particleItemWeight1, 1, 0, 0, _x, _y);
}
