//블록에 피격판정을 넣음
//other.hit = 1;
//other.damage = damage;

var _x1 = 0;
var _y1 = 0;
var _x2 = x;
var _y2 = y;

with (other) {
	// non-zero = hit
	hit = true;
	hp -= other.damage*other.multiplier;
	_x1 = x;
	_y1 = y;
}

//var _dir = arctan(phy_speed_y / phy_speed_x) * 360 / (2 * pi);
var _dir = point_direction(_x1, _y1, _x2, _y2)
scr_generateParticle(obj_particleBrick, 10, _dir, 30);

//이제부터 공에 중력이 적용이 됨
gravtApply = 1;