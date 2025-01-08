/**
* Creates tile at the bottom most level
*/
function scr_tileCreate(level, block_layer)	{
	// level portion
	// Hardcoded stage configuration using structs
	
	
// Find the data for a specific stage
	var current_stage = global.const_STAGE_CONFIG_CLASSIC[0];
	for (var i = array_length(global.const_STAGE_CONFIG_CLASSIC) - 1; i >= 0; i--) {
		if (global.const_STAGE_CONFIG_CLASSIC[i].stage <= level) {
			current_stage = global.const_STAGE_CONFIG_CLASSIC[i];
			show_debug_message(current_stage.stage);
			break;
		}
	}
	block_cnt = irandom_range(current_stage.min_blocks, current_stage.max_blocks);
	global.tile_order = array_shuffle(global.tile_order, 0, MAX_COLUMN);
	
	for (var c = 0; c < block_cnt; c++) {
	    // Perform actions for each (r, c) pair
		cur_x = scr_get_x_coordinate(global.tile_order[c]);
		cur_y = scr_get_y_coordinate(block_layer);
		var new_object = instance_create_layer(cur_x, cur_y, "Instances", obj_brickCircle);
		// linking stage = hp
		new_object.hp = global.stage;
		new_object.row = block_layer;
		new_object.column = global.tile_order[c];
	        
	}
}