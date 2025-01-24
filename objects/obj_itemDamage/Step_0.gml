if( place_meeting(x, y, obj_ball)) {
    obj_gameElevator.itemDamage = true;
	obj_gameElevator.itemDamageTimer = DUR_DAMAGE;
	obj_gameElevator.itemDamageDelta = 0;
	visible = false;
	with(obj_ball){
		multiplier = 2;
	}
	instance_destroy();
}
