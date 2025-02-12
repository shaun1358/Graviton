if (targetLevel < 10) {
	if (global.coin >= scr_shopGetPriceStat(targetLevel)) {
		global.coin -= scr_shopGetPriceStat(targetLevel);
		targetLevel += 1;
		scr_shopSetStatLevel(target, targetLevel)
		scr_generateParticle(obj_particleCoinSplash, 5, 90, 20, x, y);
		scr_soundEffect(snd_buyShopDebug, 1, 1, false);
	}
}
scale_state = 2;