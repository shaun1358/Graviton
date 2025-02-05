event_inherited();

option = false;
ballCount = obj_gameElevator.ballCount
ballDelay = 120;

timer = instance_create_layer(x, y, "Ball", obj_donut_timer);
timer.endTime = ballDelay;
timer.innerRadius = 45;
timer.color = make_color_rgb(251, 227, 214);
timer.reverse = true;