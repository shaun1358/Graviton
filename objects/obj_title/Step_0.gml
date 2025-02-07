//동적으로 윈도우 사이즈가 변경되면, 윈도우 사이즈를 받음
windowWidth = window_get_width();
windowHeight = window_get_height();

windowRatio = windowHeight / windowWidth;

global.sizeRatio = windowHeight / windowWidth;

coinTo = (global.coin + (coinTo * 9)) / 10;
if (abs(coinTo - global.coin) < 0.5) coinTo = global.coin;