
//위치는 obj_ballGenerator로 고정
var _x = 0;
var _y = 0;
if instance_exists(obj_ballGeneratorParent) {
	_x = obj_ballGeneratorParent.x;
	_y = obj_ballGeneratorParent.y;
}
x = _x;
y = _y;


image_size = 1;

//레이저 길이 (1/2)^n배 증가
//-> 블럭이랑 닿음? 닿으면 아까 그 코드 취소
//-> n 증가

image_xscale = 0;
for (var i = 0; i < 15; i++) {
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


if(room == room_gameElevator && obj_gameElevator.itemDevil){
    sprite_index = spr_laserDevil;
	// shit coding zzzz
	with obj_laserEnd{   
		instance_destroy();
	}
	
	if not instance_exists(obj_laserEndDevil){
		instance_create_layer(x, y, "Laser", obj_laserEndDevil);
	}
	
	
	with (obj_laserEndDevil) {
		visible = other.visible;
		direction = other.image_angle; 
		x = other.x + (2000 * cos(other.image_angle * 2 * pi / 360) * other.image_xscale);
		y = other.y - (2000 * sin(other.image_angle * 2 * pi / 360) * other.image_xscale);
	}

} else {

    sprite_index = spr_laser;
	with obj_laserEndDevil{   
		instance_destroy();
	}
	
	if not instance_exists(obj_laserEnd){
		instance_create_layer(x, y, "Laser", obj_laserEnd);
	}
	
	with obj_laserEnd {
		visible = other.visible;
		direction = other.image_angle; 
		x = other.x + (2000 * cos(other.image_angle * 2 * pi / 360) * other.image_xscale);
		y = other.y - (2000 * sin(other.image_angle * 2 * pi / 360) * other.image_xscale);
	}
}