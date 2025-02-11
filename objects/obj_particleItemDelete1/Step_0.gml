if (not instance_exists(obj_optionParant)) {
	if (timer % 10 == 0) scr_soundEffect(snd_itemDeleteTimer, 0.98, 1, false);
	timer += 1;

	if (timer >= timerDuration) {
		scr_soundEffect(snd_itemDeleteBang, 1, 1, false)
		instance_create_layer(x, y, layer, obj_particleItemDelete2);
		scr_cameraShake(20, 30);	
		instance_destroy();
	}
	image_angle += angleSpeed;
	angleSpeed -= 0.1;
	image_xscale += 0.1;
	image_yscale += 0.1;

}