/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (place_meeting(x, y, obj_ball)) {
	scr_itemVisual(visual, duration);
	scr_soundEffect(snd_itemGet, 1, 1, false);
	obj_gameElevator.itemDevil = true;
	obj_gameElevator.itemDevilTimer = duration;
	obj_gameElevator.itemDevilDelta = 0;
	instance_destroy();
}
