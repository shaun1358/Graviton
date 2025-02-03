// Inherit the parent event
event_inherited();

image_xscale = hitScale * createScale * _xScale;

if (hp <= 0) {
	_xS = _xScale;
	_yS = 1;
	if (phy_rotation == 180) {
		_xS *= -1;
		_yS *= -1;
	}
	with instance_create_layer(x, y, layer, obj_particleBrickBreak) {
		sprite_index = other.sprite_index;
		image_xscale = other._xS;
		image_yscale = other._yS;
	}
}