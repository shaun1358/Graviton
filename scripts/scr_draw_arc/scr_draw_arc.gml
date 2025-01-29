/// draw_arc_outline(x, y, radius, start_angle, end_angle, steps, color, thickness)
function scr_draw_arc(x, y, radius, start_angle, end_angle, steps, color, thickness) {
	// normalize angle
	start_angle%=360;
	end_angle%=360;
	
	if(start_angle<0)
		start_angle += 360;
	if(end_angle<0)
		end_angle += 360;
		
	if(end_angle<start_angle){
		end_angle+=360;
	}
	
    draw_set_color(color);
	
    var prev_x = x + lengthdir_x(radius, start_angle);
    var prev_y = y + lengthdir_y(radius, start_angle);

    for (var i = 1; i <= steps; i++) {
        var angle = lerp(start_angle, end_angle, i / steps);
        var xPos = x + lengthdir_x(radius, angle);
        var yPos = y + lengthdir_y(radius, angle);

        draw_line_width(prev_x, prev_y, xPos, yPos, thickness);
        prev_x = xPos;
        prev_y = yPos;
    }
}
