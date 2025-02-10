draw_self();
scr_drawSetText(c_white, fnt_pressStart2P_20, fa_center, fa_middle);
var _length = 0;

switch(target) {
	case room_gameClassic :
		_length = string_length(global.scoreClassic);
		scr_drawSetText(#44003D, fnt_pressStart2P_20, fa_center, fa_middle);
		draw_text(x + 3, y + 50 + 3, string(global.scoreClassic));
		draw_text(x + 3, y + 50 - 3, string(global.scoreClassic));
		draw_text(x - 3, y + 50 + 3, string(global.scoreClassic));
		draw_text(x - 3, y + 50 - 3, string(global.scoreClassic));
		scr_drawSetText(c_white, fnt_pressStart2P_20, fa_center, fa_middle);
		draw_text(x, y + 50, string(global.scoreClassic)); // Display below the sprite44003D
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 + 3, y + 50 + 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 + 3, y + 50 - 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 - 3, y + 50 + 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 - 3, y + 50 - 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30, y + 50, 0.5, 0.5, 0, c_white, 1);
		break;
	case room_gameElevator :
		_length = string_length(global.scoreElevator);
		scr_drawSetText(#44003D, fnt_pressStart2P_20, fa_center, fa_middle);
		draw_text(x + 3, y + 50 + 3, string(global.scoreElevator));
		draw_text(x + 3, y + 50 - 3, string(global.scoreElevator));
		draw_text(x - 3, y + 50 + 3, string(global.scoreElevator));
		draw_text(x - 3, y + 50 - 3, string(global.scoreElevator));
		scr_drawSetText(c_white, fnt_pressStart2P_20, fa_center, fa_middle);
		draw_text(x, y + 50, string(global.scoreElevator)); // Display below the sprite44003D
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 + 3, y + 50 + 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 + 3, y + 50 - 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 - 3, y + 50 + 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30 - 3, y + 50 - 3, 0.5, 0.5, 0, #44003D, 1);
		draw_sprite_ext(spr_trophyW, 0, x - (_length * 14) - 30, y + 50, 0.5, 0.5, 0, c_white, 1);
		break;
}
