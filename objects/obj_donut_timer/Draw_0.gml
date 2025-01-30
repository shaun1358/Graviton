

// exception control
if(startAngle == endAngle){
	endAngle = 360;
	startAngle = 0;
}
if(endTime != 0){
	if(reverse)
		angle = startAngle + ((endTime-curTime) / endTime) * (endAngle - startAngle);
	else
		angle = startAngle + (curTime / endTime) * (endAngle - startAngle);
}
else
	angle = 0;
if(!reverse)
	scr_draw_arc(x, y, innerRadius, startAngle, angle, 50, color, thickness); // Draw outline arc
else
	scr_draw_arc(x, y, innerRadius, angle, endAngle, 50, color, thickness); // Draw outline arc
