//state = 현재 게임 진행 상황
//0 = 아무 조작도 안함 or 플레이어가 공의 방향을 조준하는 중
//1 = 플레이어가 조준하고 손가락을 놓았음. 공은 이제 발사가 되는 중
//2 = 공이 전부 소모가 됨. 블럭은 위로 한 칸 상승하고, 새로운 블록이 추가됨.
state = 0;

//ballCount = 현재 보유하고 있는 공의 개수
ballCount = 1;

//플레이어 조작 관련 변수
controlPressing  = 0;
controlReleasing = 0;

//공의 발사 방향 조정을 위한 변수
//(x0, y0) = obj_ballGenerator의 좌표
//(x1, y1) = 마우스 or 손가락의 좌표
//(x0, y0)와 (x1, y1) 모두 step 코드에서 설정됨
x0 = 0;
y0 = 0;
x1 = 0;
y1 = 0;

// used to config coordinates
#macro MAX_ROW 16
#macro BLOCK_HEIGHT 100
#macro BLOCK_HEIGHT_MARGIN 0
#macro SCREEN_HEIGHT 1600
#macro MAX_COLUMN 7
#macro BLOCK_WIDTH 130
#macro BLOCK_WIDTH_MARGIN 0
#macro SCREEN_WIDTH 900

// using state as macros
#macro BALL_STATE_0_IDLE 0
#macro BALL_STATE_1_FIRING 1
#macro BALL_STATE_2_FINISHED 2