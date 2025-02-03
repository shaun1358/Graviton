// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_itemVisual(particleVisual, duration) {
	if instance_exists(particleVisual) instance_destroy(particleVisual);
	with instance_create_layer(x, y, "Effect", particleVisual) {
		particleVisual.timerDuration = duration;
	}
}