if (y < yThresh) {
	instance_destroy();
}

if (place_meeting(x, y, obj_ball)) {
	
	with instance_create_layer(x, y, layer, obj_particleItemBreak) {
		sprite_index = other.sprite_index;
	}
}

image_xscale = createXscale;
createXscale = cos((createTimer / 60) * pi);
createTimer = (120 + (createTimer * 19)) / 20; 