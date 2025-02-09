depth = 5;

x = (xTo + (5 * x)) / 6
y = (yTo + (5 * y)) / 6
if (abs(x - xTo) < 0.1) x = xTo;
if (abs(y - yTo) < 0.1) y = yTo;

if instance_exists(obj_camera) {
	_marginX = obj_camera.cameraMarginX;
	_marginY = obj_camera.cameraMarginY;
	_width   = obj_camera.cameraWidth;
	_height  = obj_camera.cameraHeight;
}
else {
	_marginX = 0;
	_marginY = 0;
	_width   = 1080;
	_height  = 1920;
}

if (y == yTo && global.scoreGame != scoreShow) {
	scoreTimer += 1;
	if (scoreTimer % scorePeriod == 0) {
		scoreSize = 1.2;
		if      (global.scoreGame > scoreShow + 1000) scoreShow += 1000;
		else if (global.scoreGame > scoreShow + 100)  scoreShow += 100;
		else scoreShow = global.scoreGame;
	}
}
else if (global.scoreGame == scoreShow) {
	if (global.scoreGame > scoreHigh) scoreHighShow = 1;
	else scoreHighShow = 2;
	if (coinPhase == 0) coinPhase = 1;
}

if (coinPhase == 1 && global.coinGame > coinShow) {
	coinTimer += 1;
	if (coinTimer % coinPeriod == 0) {
		coinSize = 1.2;
		if      (global.coinGame > coinShow + 10) coinShow += 10;
		else if (global.coinGame > coinShow)  coinShow += 1;
	}
}
else if (coinPhase == 1 && coinShow == global.coinGame && coinSize == 1) {
	coinPhase = 2;
}
if (coinPhase == 2) {
	coinSize = 1.2;
	coinShow = global.coin;
	coinPhase = 3;
}

scoreSize = (1 + (5 * scoreSize)) / 6;
if (abs(scoreSize - 1) < 0.01) scoreSize = 1;
coinSize = (1 + (5 * coinSize)) / 6;
if (abs(coinSize - 1) < 0.01) coinSize = 1;