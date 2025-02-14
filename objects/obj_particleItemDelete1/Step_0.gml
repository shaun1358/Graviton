
if (not instance_exists(obj_optionParent)) {
	if (timer % 10 == 0) {
		show_debug_message(_pitch);
		if (_pitch == 0) scr_soundEffect(snd_itemDeleteTimer, 1, 1, false);
		else if (_pitch == 1) scr_soundEffect(snd_itemDeleteTimer, 1.25992, 1, false);
		else if (_pitch == 2) scr_soundEffect(snd_itemDeleteTimer, 1.49831, 1, false);
		_pitch += 1;
	}
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