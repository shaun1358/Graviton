image_alpha -= 0.0256;
if (image_alpha < 0) instance_destroy();

x += xspd;
xspd += xspdAcc;

image_angle += angleSpeed;
