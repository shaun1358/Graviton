image_alpha -= 0.05;
if (image_alpha <= 0) instance_destroy();

y += yspd;
yspd += yspdAcc;

image_xscale = createXscale;
createXscale = cos((createTimer / 60) * pi) * 2;
createTimer = (120 + (createTimer * 19)) / 20; 