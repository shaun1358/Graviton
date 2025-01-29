//블록 체력; hp = 1은 임의로 넣음
hp = 1;

//hit = 피격 여부; 1 = 피격됨, 0 = 안맞음
hit = 0;

//파괴 가능 여부; 1 = 파괴 가능, 0 = 파괴 불가능
breakable = 1;

// inherit this from the parent if you need to redefine.
isRiseable = true;

//brick location
row = 0;
column = 0;

isRiseable = true;

yspd = 0;
yspdAcc = 0;

brickScore = 0;
//item이 무엇이 나올지 계산할 때 씀
item = 0;
dp_hp = 0;

// for keeping aspect ratio
x_default = x;
y_default = y;
