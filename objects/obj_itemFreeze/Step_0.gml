event_inherited();

if (place_meeting(x, y, obj_ball)) {
	scr_itemVisual(visual, duration);
	scr_soundEffect(snd_itemGet, 1, 1, false);
	obj_gameElevator.itemFreeze = true;
	obj_gameElevator.itemFreezeTimer = duration;
	obj_gameElevator.itemFreezeDelta = 0;
	visible = false;
	instance_destroy();
}

