// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getBGPattern(type) {
	switch(type) {
		case 0 : return spr_bgPattern0; break;
		case 1 : return spr_bgPattern1; break;
		case 2 : return spr_bgPattern2; break;
		case 3 : return spr_bgPattern3; break;
		case 4 : return spr_bgPattern4; break;
		case 5 : return spr_bgPattern5; break;
		case 6 : return noone; break;
	}
}