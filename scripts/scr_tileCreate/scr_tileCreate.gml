/**
* Creates tile at the bottom most level
*/
function scr_tileCreate(){			
	
	for (var r = 0; r <= MAX_ROW; r++) {
	    for (var c = 0; c < MAX_COLUMN; c++) {
	        // Perform actions for each (r, c) pair
			cur_x = scr_get_x_coordinate(c);
			cur_y = scr_get_y_coordinate(r);
			
			show_debug_message("Row: " + string(r) + " - "+string(cur_y)+", Column: " + string(c)+" - "+string(cur_x));
			var new_object = instance_create_layer(cur_x, cur_y, "Instances", obj_brickSquare);
	        
		}
	}
}