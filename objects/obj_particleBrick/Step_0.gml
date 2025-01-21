x += speed * cos(direction * 2 * pi / 360);
y -= speed * sin(direction * 2 * pi / 360);
image_alpha -= 0.03;
if (image_alpha <= 0) instance_destroy();