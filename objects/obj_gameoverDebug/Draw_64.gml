// In the Draw GUI event

draw_set_font(fnt_pressStart2P);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 3 - 100, "Final Score");
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 3, global.scoreGame);
// Draw GUI event of obj_gameover

// Set alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw "Retry" text
if (text_hovered_retry) {
    draw_set_color(c_yellow); // Highlight when hovered
} else {
    draw_set_color(c_white);  // Default color
}
draw_text_transformed(text_x_retry, text_y_retry, text_retry, text_scale_retry, text_scale_retry, 0);

// Draw "Title" text
if (text_hovered_title) {
    draw_set_color(c_yellow); // Highlight when hovered
} else {
    draw_set_color(c_white);  // Default color
}
draw_text_transformed(text_x_title, text_y_title, text_title, text_scale_title, text_scale_title, 0);

// Set position in the top-right quadrant
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var sprite_x = gui_width * 0.75;
var sprite_y = gui_height * 0.25;


// Draw the sprite with ripple scaling and rotation
if(isHighScore){
	draw_sprite_ext(spr_highscore, 0, sprite_x, sprite_y, ripple_scale, ripple_scale, rotation_angle, c_white, 1);
}