image_xscale += sign(image_xscale) * 0.05;
image_yscale = sign(image_yscale) * abs(image_xscale);


image_alpha -= 0.1;
if (image_alpha <= 0) instance_destroy();