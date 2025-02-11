#macro SAVEFILE "GravitonSavefile.txt"

// 디바이스의 가로와 세로 크기를 각각 windowWidth와 windowHeight에 입력
windowWidth = display_get_width();
windowHeight = display_get_height();

//디버깅을 위해 임의로 windowWidth와 windowHeight값 설정하기 위한 코드; 나중에 게임 출시할 때 코드 삭제해야함
//----------여기서부터...
// 1920 x 1080 not but same ratio

//windowWidth = 900;
//windowHeight = 1600;
//window_set_size(windowWidth, windowHeight);
//----------...여기까지!

windowRatio = windowHeight / windowWidth;

//세이브 파일이 없으면 해당 파일에서 글로벌 변수값 가져오기, 없으면 0으로 설정
if file_exists(SAVEFILE) hasSave = 1;
else hasSave = 0;

//hasSave = 1이면 세이브파일에서 글로벌 변수값 가져오기, 아니면 글로벌 변수값 초기화
if (hasSave) scr_globalLoad();
else scr_globalReset();

//타이틀에 보여주는 보유 중인 코인의 개수, 실제 코인의 개수는 아님
coinTo = global.coin;

// ensure that controller is loaded AFTER global vars.
instance_create_layer(100, 200, "Instances", obj_controller); 