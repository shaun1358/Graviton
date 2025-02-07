//포인트가 읎어서 level 0 급 코딩 뜌땨..
function scr_shopGetStatLevel(type) {
	switch type {
		case 1 : return global.statPower; break;
		case 2 : return global.statBall;  break;
		case 3 : return global.statDelay; break;
		case 4 : return global.statLuck;  break;
		case 5 : return global.statItemd; break;
		default: return 666; break;
	}
}