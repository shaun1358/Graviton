event_inherited();

option = false;
ballCount = obj_gameElevator.ballCount + global.statBall;
ballDelay = 120;
ballDelay *= (20 - global.statDelay) / 20

timer = instance_create_layer(x, y, "Ball", obj_donut_timer);
timer.endTime = ballDelay;
timer.innerRadius = 45;
timer.color = make_color_rgb(251, 227, 214);
timer.reverse = true;