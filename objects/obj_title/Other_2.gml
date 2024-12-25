//세이브 파일이 없으면 해당 파일에서 글로벌 변수값 가져오기, 없으면 0으로 설정
hasSave = 0;

//hasSave = 1이면 세이브파일에서 글로벌 변수값 가져오기, 아니면 글로벌 변수값 초기화
if (hasSave) scr_globalLoad();
else scr_globalReset();

// 디바이스의 가로와 세로 크기를 각각 windowWidth와 windowHeight에 입력
windowWidth = display_get_width();
windowHeight = display_get_height();

//디버깅을 위해 임의로 windowWidth와 windowHeight값 설정하기 위한 코드; 나중에 게임 출시할 때 코드 삭제해야함
windowWidth = 800
windowHeight = 1500
window_set_size(windowWidth, windowHeight)
