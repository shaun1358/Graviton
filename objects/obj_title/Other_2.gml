//세이브 파일이 없으면 해당 파일에서 글로벌 변수값 가져오기, 없으면 0으로 설정
hasSave = 0;

//hasSave = 1이면 세이브파일에서 글로벌 변수값 가져오기, 아니면 글로벌 변수값 초기화
if (hasSave) scr_globalLoad();
else scr_globalReset();

