scr_drawSetText($F0D590, fnt_pressStart2P_20, fa_center, fa_middle);
draw_self()
draw_set_colour(c_red);
//physics_draw_debug();
//for display

// i hate -1 display
dp_hp = max(0, ceil(hp));
draw_set_font(fnt_maple);

// drop shadow

draw_set_color(c_black); 
draw_text_transformed(x + 1, y + 1, dp_hp, hitScale, hitScale, 0);

draw_set_color(c_white); 
draw_text_transformed(x, y, dp_hp, hitScale, hitScale, 0);

/*
draw_set_color(c_red); 
draw_text_transformed(x, y + 100, coinBonus, hitScale, hitScale, 0);
draw_text_transformed(x, y + 200, coinTotal, hitScale, hitScale, 0);

