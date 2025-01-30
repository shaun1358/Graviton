/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

brickScore = 200;

//겜메스에는 physicx collision shape를 뒤집는 코드가 없음...
//그래서 collision shape를 하나하나 노가다해서 만들었음 즈에에에에엔장
_xScale = choose(-1, 1);

image_xscale = _xScale;
fix_triangle = physics_fixture_create();
physics_fixture_set_polygon_shape(fix_triangle);
if (_xScale == 1) {
	physics_fixture_add_point(fix_triangle, 65, -50);
	physics_fixture_add_point(fix_triangle, 65, 50);
	physics_fixture_add_point(fix_triangle, -65, 50);

}
else {
	physics_fixture_add_point(fix_triangle, 65, 50);
	physics_fixture_add_point(fix_triangle, -65, 50);
	physics_fixture_add_point(fix_triangle, -65, -50);

}
physics_fixture_set_density(fix_triangle, 0);
physics_fixture_set_restitution(fix_triangle, 1);
physics_fixture_set_collision_group(fix_triangle, 1);
physics_fixture_set_linear_damping(fix_triangle, 0);
physics_fixture_set_angular_damping(fix_triangle, 0);
physics_fixture_set_friction(fix_triangle, 0);

physics_fixture_bind(fix_triangle, id);
physics_fixture_delete(fix_triangle);


phy_rotation = choose(0, 180)
/*
physics_fixture_set_polygon_shape(fix_triangle);
physics_fixture_add_point(fix_triangle, 75 + (65 * _xScale), 60 - (50 * _yScale));
physics_fixture_add_point(fix_triangle, 75 + (65 * _xScale), 60 + (50 * _yScale));
physics_fixture_add_point(fix_triangle, 75 - (65 * _xScale), 60 + (50 * _yScale));

physics_fixture_bind(fix_triangle, id);
physics_fixture_delete(fix_triangle);