event_inherited();

ballDelay = 60;

timer = instance_create_layer(x, y, "Ball", obj_donut_timer);
timer.endTime = 60;
timer.innerRadius = 45;
timer.color = make_color_rgb(251, 227, 214);
timer.reverse = true;