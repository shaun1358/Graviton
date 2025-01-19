draw_self();
// Draw the high score text
draw_set_halign(fa_center); // Center the text horizontally
draw_set_valign(fa_middle); // Center the text vertically
draw_set_font(fnt_pressStart2P);
draw_set_color(c_white); // Set the text color

switch(target) {
	case room_gameClassic :
		draw_text(x, y + 50, "High Score: " + string(global.scoreClassic)); // Display below the sprite
		break;
	case room_gameElevator :
		draw_text(x, y + 50, "High Score: " + string(global.scoreElevator)); // Display below the sprite
		break;
}
