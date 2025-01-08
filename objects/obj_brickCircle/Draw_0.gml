/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//디버그용 hp 표시 코드
draw_self();
draw_set_font(MapleStory);

// drop shadow
draw_set_color(c_black); 
draw_text(x+1, y+1, hp);

draw_set_color(c_white); 
draw_text(x, y, hp);