event_inherited();

if place_meeting(x, y, obj_ball) {
	if instance_exists(obj_brickParent) with (obj_brickParent) {
		var _x = x;
		var _y = y;
		var _hp = hp;
		var _type = choose(obj_brickTriangle, obj_brickTriangle, obj_brickDiamond, obj_brickCircle);
		instance_destroy();
		with instance_create_layer(_x, _y, "Brick", _type) hp = _hp;
	}
	visible = false;
	instance_destroy();
}