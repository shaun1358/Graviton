timer        = 0;
timerPeriod = 6;

timerDuration = 1000;

effect1_alpha = 0.3;

effect2_alpha = 0.3;

repeat(10) {
	var _x = random_range(-500, -100);
	var _y = random_range(100, 1880);
	scr_generateParticle(obj_particleItemIce2, 1, 0, 0, _x, _y);
}