event_inherited();
if (timer >= timerDuration) instance_destroy();
//timer += 1;

effect2_alpha = max(0, (-0.002 * power(timer, 2)) + (0.04 * timer) + 0.3);