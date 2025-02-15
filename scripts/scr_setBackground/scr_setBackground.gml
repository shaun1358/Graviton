// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setBackground() {
	if (room == room_gameClassic) {
		var layPatternID  = layer_get_id("BackgroundPattern");
		var layBaseID     = layer_get_id("BackgroundBase");
		var backPatternID = layer_background_get_id(layPatternID);
		var backBaseID    = layer_background_get_id(layBaseID);
		layer_background_sprite(backPatternID, scr_getBGPattern(global.skinBGClassicPattern));
		layer_background_sprite(backBaseID, spr_bgPatternBase);
		
		layer_background_blend(backPatternID, scr_getBGColor(global.skinBGClassicColor1));
		layer_background_blend(backBaseID, scr_getBGColor(global.skinBGClassicColor2));
		
		if (global.skinBGClassicPattern != 5) {
			layer_hspeed(layPatternID, 0.7);
			layer_vspeed(layPatternID, 1.4);
		}
		else {
			layer_hspeed(layPatternID, 0);
			layer_vspeed(layPatternID, 0);
		}
	}
	else if (room == room_gameElevator) {
		var layPatternID  = layer_get_id("BackgroundPattern");
		var layBaseID     = layer_get_id("BackgroundBase");
		var backPatternID = layer_background_get_id(layPatternID);
		var backBaseID    = layer_background_get_id(layBaseID);
		layer_background_sprite(backPatternID, scr_getBGPattern(global.skinBGElevatorPattern));
		layer_background_sprite(backBaseID, spr_bgPatternBase);
		
		layer_background_blend(backPatternID, scr_getBGColor(global.skinBGElevatorColor1));
		layer_background_blend(backBaseID, scr_getBGColor(global.skinBGElevatorColor2));
		
		if (global.skinBGElevatorPattern != 5) {
			layer_hspeed(layPatternID, 0.7);
			layer_vspeed(layPatternID, 1.4);
		}
		else {
			layer_hspeed(layPatternID, 0);
			layer_vspeed(layPatternID, 0);
		}
	}
}