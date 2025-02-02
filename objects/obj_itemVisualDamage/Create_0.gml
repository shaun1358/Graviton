timer        = 0;
timerPeriod = 6;

timerDuration = 1000;

effect1_alpha = 0.3;

effect2_alpha = 0.3;

for (var i = 0; i < 5; i++) {
	var _x = random_range(100, 200) + (i * 200);
	var _y = random_range(1920 - 300, 1920 - 100);
	scr_generateParticle(obj_particleItemDamage, 1, 0, 0, _x, _y);
}
for (var i = 0; i < 4; i++) {
	var _x = random_range(200, 300) + (i * 200);
	var _y = random_range(1920 - 300, 1920 - 500);
	scr_generateParticle(obj_particleItemDamage, 1, 0, 0, _x, _y);
}

