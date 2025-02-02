event_inherited();

if (place_meeting(x, y, obj_ball)) {
    obj_gameElevator.itemDamage = true;
	obj_gameElevator.itemDamageTimer = duration;
	obj_gameElevator.itemDamageDelta = 0;
	visible = false;
	if instance_exists(obj_ball) with(obj_ball) damageMult = 2;
	instance_destroy();
}
