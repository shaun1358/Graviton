event_inherited();

if place_meeting(x, y, obj_ball) {
	scr_soundEffect(snd_itemGet, 1, 1, false);
	obj_gameElevator.itemWeight = true;
	obj_gameElevator.itemWeightTimer = duration;
	obj_gameElevator.itemWeightDelta = 0;
	visible = false;
	instance_destroy();
}