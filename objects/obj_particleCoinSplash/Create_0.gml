image_alpha = 1;
image_xscale = random_range(0.8, 1.5)
image_yscale = image_xscale;

scaleInitial = image_xscale;
scalePeriod  = random_range(10, 15);
scaleTimer   = random_range(0, scalePeriod);

image_angle = random_range(0, 360);
direction = random_range(70, 110);

spd = random_range(10, 15);
xspd = spd * cos(direction * 2 * pi / 360);
yspd = spd * sin(direction * 2 * pi / 360) * (-1);