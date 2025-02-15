if(isPressed) {
	if (global.coin >= price) {	
		global.skinBGColorOwn[target] = 1;
		global.coin -= price;
		scr_generateParticle(obj_particleCoinSplash, 5, 90, 20, x, y);
		scr_soundEffect(snd_shopBuy, 1, 1, false);
	}
	else {
		scr_soundEffect(snd_gameLose, 1, 1, false);
	}
}

scale_state = 1;
