image_xscale = 0;
image_size = 1;

visible = 1;

timer = 0;
timer_period = 10;

if not instance_exists(obj_laserEnd) {
	instance_create_layer(x, y, layer, obj_laserEnd);
}