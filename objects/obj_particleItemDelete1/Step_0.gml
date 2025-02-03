timer += 1;
if (timer >= timerDuration) instance_destroy();

image_angle += angleSpeed;
angleSpeed -= 0.1;
image_xscale += 0.1;
image_yscale += 0.1;