//디버그용 hp 표시 코드
draw_self();
draw_set_font(fnt_maple);

// drop shadow
draw_set_color(c_black); 
draw_text(x+1, y+1, hp);

draw_set_color(c_white); 
draw_text(x, y, hp);
/*
draw_set_color(c_red);
draw_text(x + 50, y + 50, hp);
draw_text(x + 50, y + 100, column);
*/