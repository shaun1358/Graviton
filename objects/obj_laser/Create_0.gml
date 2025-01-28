image_xscale = 0;
image_size = 1;

visible = 1;

//timer = 요 레이저 투명해지는 효과에 필요한 타이머, timer_period = 투명 주기
timer = 0;
timer_period = 10;


if not instance_exists(obj_laserEnd) {
	instance_create_layer(x, y, "Laser", obj_laserEnd);
}