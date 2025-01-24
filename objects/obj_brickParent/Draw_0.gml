draw_self()
draw_set_colour(c_red);
physics_draw_debug();
//for display

// i hate -1 display
dp_hp = max(0, ceil(hp));
draw_self();
draw_set_font(fnt_maple);

// drop shadow
draw_set_color(c_black); 
draw_text(x+1, y+1, dp_hp);

draw_set_color(c_white); 
draw_text(x, y, dp_hp);