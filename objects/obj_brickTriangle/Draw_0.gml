// Inherit the parent event
event_inherited();

draw_sprite_ext(spr_brickTriangle, 0, x, y, hitScale * createScale * _xScale, 1, phy_rotation, c_white, createAlpha*2);

draw_set_color(c_red);
physics_draw_debug();
draw_text(x, y + 100, image_xscale);