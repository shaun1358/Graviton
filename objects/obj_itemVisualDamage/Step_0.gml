if instance_exists(obj_ball) obj_ball.scaleTo = 1.3;
if instance_exists(obj_ballGeneratorParent) obj_ballGeneratorParent.scaleTo = 1.3;

if (timer >= timerDuration) {
	if instance_exists(obj_ball) obj_ball.scaleTo = 1;
	if instance_exists(obj_ballGeneratorParent) obj_ballGeneratorParent.scaleTo = 1;
	instance_destroy();
}

timer += 1;

effect1_alpha = 0.8 + (sin(timer / 20) * 0.2);
effect1_alpha *= min(1, (timerDuration - timer) / 60);

effect2_alpha = max(0, (-0.002 * power(timer, 2)) + (0.04 * timer) + 0.3);