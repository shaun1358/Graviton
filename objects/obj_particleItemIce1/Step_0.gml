image_alpha -= 0.01;
if (image_alpha < 0) instance_destroy();

y += yspd;
yspd += yspdAcc;

image_angle += angleSpeed;
