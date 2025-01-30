var _tri = 400;

if (mode != TRANS_MODE.OFF) {
	draw_set_color(c_white);
	if (mode != TRANS_MODE.INTRO) {
		draw_rectangle(0, -_tri, _width, -_tri + percent * (_height + _tri), false);
		draw_triangle(0, (percent * (_height + _tri)) - _tri, _width, (percent * (_height + _tri)) - _tri, _width / 2, (percent * (_height + _tri)), false);
	}
	else {
		draw_rectangle(0, _height, _width, _height - (percent * (_height + _tri)) + _tri, false);
		draw_triangle(0, _height - (percent * (_height + _tri)), 0, _height - (percent * (_height + _tri)) + _tri, _width / 2,  _height - (percent * (_height + _tri)) + _tri, false);
		draw_triangle(_width, _height - (percent * (_height + _tri)), _width, _height - (percent * (_height + _tri)) + _tri, _width / 2,  _height - (percent * (_height + _tri)) + _tri, false);
	}
}

draw_set_color(c_black);
draw_rectangle(0, 0, _width, -1000, false);
draw_rectangle(0, _height, _width, _height + 1000, false);