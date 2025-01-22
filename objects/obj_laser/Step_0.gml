var _x = 0;
var _y = 0;
if instance_exists(obj_ballGenerator) {
	_x = obj_ballGenerator.x;
	_y = obj_ballGenerator.y;
}
x = _x;
y = _y;

direction = image_angle;
image_xscale = 0;
image_size   = 1
for (var i = 0; i < 30; i++) {
   image_xscale += image_size;
   if place_meeting(x, y, obj_brickParent) || place_meeting(x, y, obj_border){
      image_xscale -= image_size;
   }
   image_size *= 0.5;
}

timer++;
image_alpha = 0.7 + (0.1 * sin(timer / timer_period));
if not instance_exists(obj_laserEnd) {
	instance_create_layer(x, y, layer, obj_laserEnd);
}

if instance_exists(obj_laserEnd) {
	obj_laserEnd.visible = visible;
	obj_laserEnd.direction = image_angle; 
	obj_laserEnd.x = x + (2000 * cos(image_angle * 2 * pi / 360) * image_xscale);
	obj_laserEnd.y = y - (2000 * sin(image_angle * 2 * pi / 360) * image_xscale);
}

