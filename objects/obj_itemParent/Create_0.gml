//time = 아이템 지속 시간 계산에 쓰임, endTime = 지속시간

time = 0;
endTime = 300;

//아이템이 자연 증발하는 y좌표 기준
yThresh = THRESHOLD_Y; //요 THRESHOLD 수치는 obj_gameElevator에서 수정 가능


//아이템 획득할 때의 시각적 효과, 각 오브젝트마다 할당해야함
visual = obj_itemVisualFreeze;

// time duration in seconds
duration = 1;

//지금 막 따끈따끈하게 생성되었을때 맛깔나게 보이도록 해주는 마법의 변수
createXscale = 0;
createTimer  = 0;