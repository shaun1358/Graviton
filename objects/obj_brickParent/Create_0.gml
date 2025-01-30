//블록 체력; hp = 1은 임의로 넣음
hp = 1;

//hit = 피격 여부; 1 = 피격됨, 0 = 안맞음
hit = 0;

//파괴 가능 여부; 1 = 파괴 가능, 0 = 파괴 불가능
breakable = 1;

//inherit this from the parent if you need to redefine.
isRiseable = true;

//brick location
row = 0;
column = 0;

yspd = 0;
yspdAcc = 0;

brickScore = 0;
//item이 무엇이 나올지 계산할 때 씀
item = 0;
dp_hp = 0;

// for keeping aspect ratio
x_default = x;
y_default = y;

//방금 따끈따끈하게 생성되었을때 블럭이 맛깔나게 변하는 마법의 변수
createScale = 1.5;
createAlpha = 0;

//피격되었을때 블럭이 맛깔나게 변하는 마법의 변수
hitScale = 1;

image_xscale = hitScale * createScale;
image_yscale = hitScale * createScale;