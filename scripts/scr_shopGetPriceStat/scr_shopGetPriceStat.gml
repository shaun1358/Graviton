// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopGetPriceStat(n) {
	switch (n) {
		case 0 : return 2000;  break;
		case 1 : return 3000;  break;
		case 2 : return 5000;  break;
		case 3 : return 8000;  break;
		case 4 : return 12000;  break;
		case 5 : return 18000; break;
		case 6 : return 25000; break;
		case 7 : return 40000; break;
		case 8 : return 65000; break;
		case 9 : return 100000; break;
		default : return 999999; break;
	}
}