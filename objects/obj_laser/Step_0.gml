
//위치는 obj_ballGenerator로 고정
var _x = 0;
var _y = 0;
if instance_exists(obj_ballGeneratorParent) {
	_x = obj_ballGeneratorParent.x;
	_y = obj_ballGeneratorParent.y;
}
x = _x;
y = _y;

//레이저 길이 (1/2)^n배 증가
//-> 블럭이랑 닿음? 닿으면 아까 그 코드 취소
//-> n 증가
image_xscale = 0;
image_size   = 1
for (var i = 0; i < 30; i++) {
   image_xscale += image_size;
   if (place_meeting(x, y, obj_brickParent) || place_meeting(x, y, obj_border)){
      image_xscale -= image_size;
   }
   image_size *= 0.5;
}


//레이저 투명해지는 효과
timer++;
//image_alpha = 0.7 + (0.1 * sin(timer / timer_period));
//레이저 끝부분에 똥그란 그 원 생성해주는 코드
if instance_exists(obj_laserEnd) {
	obj_laserEnd.visible = visible;
	obj_laserEnd.direction = image_angle; 
	obj_laserEnd.x = x + (2000 * cos(image_angle * 2 * pi / 360) * image_xscale);
	obj_laserEnd.y = y - (2000 * sin(image_angle * 2 * pi / 360) * image_xscale);
}

