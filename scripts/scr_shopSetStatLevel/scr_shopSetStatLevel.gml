//포인트가 읎어서 level 0 급 코딩 뜌땨..
function scr_shopSetStatLevel(type, level) {
	switch type {
		case 1 : global.statPower = level; break;
		case 2 : global.statBall  = level;  break;
		case 3 : global.statDelay = level; break;
		case 4 : global.statLuck  = level;  break;
		case 5 : global.statItemd = level; break;
		default: return 666; break;
	}
}