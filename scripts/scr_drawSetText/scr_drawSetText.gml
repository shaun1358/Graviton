/// @description Sets the drawing properties for text display.
/// @param color The color to use for the text (e.g., c_white, c_black, etc.).
/// @param font The font resource to use for the text (e.g., `fnt_default`).
/// @param halign The horizontal alignment of the text (fa_left, fa_center, fa_right).
/// @param valign The vertical alignment of the text (fa_top, fa_middle, fa_bottom).
///
/// This function simplifies the process of setting text properties such as color, font,
/// and alignment for drawing text in your game. Call this function before `draw_text`
/// to ensure the desired appearance is applied.
///
/// Example usage:
/// ```gml
/// scr_drawSetText(c_white, fnt_default, fa_center, fa_middle);
/// draw_text(100, 100, "Hello, World!");
/// ```
function scr_drawSetText(color, font, halign, valign) {
	draw_set_colour(color);
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
}