// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopGetPriceStat(n) {
	switch (n) {
		case 0 : return 10;  break;
		case 1 : return 15;  break;
		case 2 : return 25;  break;
		case 3 : return 40;  break;
		case 4 : return 70;  break;
		case 5 : return 100; break;
		case 6 : return 140; break;
		case 7 : return 180; break;
		case 8 : return 250; break;
		case 9 : return 400; break;
		default : return 999999; break;
	}
}