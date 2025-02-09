//위치 조정용 변수
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
#macro BALL_COUNT_ELEVATOR 1;
//state = 현재 게임 진행 상황
//0 = 아무 조작도 안함 or 플레이어가 공의 방향을 조준하는 중
//1 = 플레이어가 조준하고 손가락을 놓았음. 공은 이제 발사가 되는 중
//2 = 공이 전부 소모가 됨. 블럭은 위로 한 칸 상승하고, 새로운 블록이 추가됨.
state = 0;

//ballCount = 현재 보유하고 있는 공의 개수
ballCount = BALL_COUNT_ELEVATOR;
//with (obj_ballGeneratorElevator) ballCount = other.ballCount + global.statBall;

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

// elevator constants
#macro RISING_SPEED 30 //상승 속도 베이스
risingSpeedRatio = 1;  //상승 속도 배수, 나중에 빨라짐
risingSpeedFreeze = 1; //얼음 효과시 요게 0이 됨
risingSpeedOption = 1; //옵션 키면 요게 0이 됨

// gameover location
#macro THRESHOLD_Y 600


instance_create_layer(_width / 2, scr_get_y_coordinate(7), "Brick", obj_canCreateTile);

global.const_STAGE_CONFIG_CLASSIC = [
	{ stage: 1, min_blocks: 1, max_blocks: 1 },
	{ stage: 4, min_blocks: 1, max_blocks: 3 },
	{ stage: 21, min_blocks: 2, max_blocks: 3 },
	{ stage: 41, min_blocks: 2, max_blocks: 4 },
	{ stage: 61, min_blocks: 3, max_blocks: 4 },
	{ stage: 81, min_blocks: 3, max_blocks: 5 },
	{ stage: 101, min_blocks: 4, max_blocks: 5 },
	{ stage: 151, min_blocks: 5, max_blocks: 5 },
	{ stage: 201, min_blocks: 5, max_blocks: 5 }
];


global.const_SEED_SHAPE_CLASSIC = [
	// Stage 1+
	{ circle: 0, diamond: 0, triangle: 0, weight: 1 },
	
	// Stage 10+
	{ circle: 0, diamond: 0, triangle: 1, weight: 3 },
	{ circle: 0, diamond: 0, triangle: 2, weight: 1 },
	
	// Stage 30+
	{ circle: 0, diamond: 1, triangle: 0, weight: 3 },
	{ circle: 0, diamond: 1, triangle: 1, weight: 1 },
	{ circle: 0, diamond: 0, triangle: 3, weight: 1 },

	// Stage 60+
	{ circle: 1, diamond: 0, triangle: 0, weight: 3 },
	{ circle: 1, diamond: 1, triangle: 0, weight: 1 },
	{ circle: 1, diamond: 0, triangle: 1, weight: 1 },
	{ circle: 1, diamond: 1, triangle: 1, weight: 1 },
	{ circle: 1, diamond: 0, triangle: 2, weight: 1 },

	// Stage 100+
	{ circle: 2, diamond: 0, triangle: 0, weight: 1 },
	{ circle: 3, diamond: 0, triangle: 0, weight: 1 },
	{ circle: 2, diamond: 1, triangle: 0, weight: 1 },
	{ circle: 0, diamond: 2, triangle: 0, weight: 1 },
	{ circle: 1, diamond: 2, triangle: 0, weight: 1 },
	{ circle: 0, diamond: 3, triangle: 0, weight: 1 },
	{ circle: 2, diamond: 0, triangle: 1, weight: 1 },
	{ circle: 0, diamond: 2, triangle: 1, weight: 1 },
	{ circle: 0, diamond: 1, triangle: 2, weight: 1 }
];


global.const_SEED_STAGE_classic = [
	{ stage:   1, seed_start:  0, seed_end:  0 },
	{ stage:  10, seed_start:  1, seed_end:  2 },
	{ stage:  30, seed_start:  3, seed_end:  5 },
	{ stage:  60, seed_start:  6, seed_end: 10 },
	{ stage: 100, seed_start: 11, seed_end: 19 },
];

global.stage = 1;
global.scoreGame = 0; //init score
global.tile_order = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
global.easing_active = false;
//scr_tileCreate(global.stage, MAX_ROW-1);

//아이템 지속 상태
itemDamage = false;
itemFreeze = false;
itemDelete = false;
itemWeight = false;

//아이템 유효 시간
itemDamageTimer = 0;
itemFreezeTimer = 0;
itemDeleteTimer = 0;
itemWeightTimer = 0;

//아이템 유효 시간에 필요한 타이머 (+= 1 해주는 그 변수)
itemDamageDelta = 0;
itemFreezeDelta = 0;
itemDeleteDelta = 0;
itemWeightDelta = 0;

isGameover = false;

//조작 가능 여부, 옵션이 있으면 0이 됨
canControl = 1;

//화면에 표시되는 점수, 실제 점수는 아님
scoreDraw  = 0;
scoreScale = 1;

highestBrick = 5000;
dangerLine = instance_create_layer(0, 0, "Effect", obj_dangerLine);
/* for the bug fix of clicking */
mouseLock = false; // Initially unlocked

global.coinGame = 0;