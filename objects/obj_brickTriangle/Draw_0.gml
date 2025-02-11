// Inherit the parent event

event_inherited();

draw_sprite_ext(spr_brickTriangle, 0, x, y, image_xscale, image_yscale, phy_rotation, c_white, createAlpha * 2);


draw_set_color(c_red);
physics_draw_debug();
/*
draw_text(x, y + 100, "image_xscale : " + string(image_xscale));
draw_text(x, y + 200, "_xScale : " + string(_xScale));