x += xspd;
y += yspd;

yspd += 0.5;

image_xscale = scaleInitial * cos(scaleTimer / scalePeriod);
scaleTimer++;

image_alpha -= 0.02;
if (image_alpha <= 0) instance_destroy();

//motion_add(270, 1);