//포인트가 읎어서 level 0 급 코딩 뜌땨..
function scr_shopGetStatLevel(type) {
	switch type {
		case 1 : return global.statPower; 
		case 2 : return global.statBall;  
		case 3 : return global.statDelay; 
		case 4 : return global.statLuck;  
		case 5 : return global.statItemd; 
		default: return 666; 
	}
}