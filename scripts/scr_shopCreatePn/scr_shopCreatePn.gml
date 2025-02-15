// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shopCreatePn(page) {
	scr_shopDelete();
	switch(page) {
		case 1 : scr_shopCreateP1(); break;
		case 2 : scr_shopCreateP2(); break;
		case 3 : scr_shopCreateP3(); break;
		case 4 : scr_shopCreateP4(); break;
		default : break;
	}
}