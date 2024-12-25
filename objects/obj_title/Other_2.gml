/// @description 게임 시작시 초기 변수 설정

//세이브 파일이 없으면 해당 파일에서 글로벌 변수값 가져오기, 없으면 0으로 설정
hasSave = 0;

if (hasSave) scr_globalLoad();
else scr_globalReset();

window_set_size(500, 500)