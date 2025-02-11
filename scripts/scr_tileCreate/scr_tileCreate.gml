/**
* Creates tile at the bottom most level
*/
function scr_tileCreate(level, block_layer)	{
	randomize();
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
		
	// get queue
	var seed = scr_get_seed(level);
	
	// first few block inputs
	var my_queue = ds_queue_create();
	
	
	
	for(var i=0; i<global.const_SEED_SHAPE_CLASSIC[seed].circle; i++)
		ds_queue_enqueue(my_queue, SHAPE_3_CIRCLE);		// circle 
	for(var i=0; i<global.const_SEED_SHAPE_CLASSIC[seed].diamond; i++)
		ds_queue_enqueue(my_queue, SHAPE_2_DIAMOND);	// diamond
	for(var i=0; i<global.const_SEED_SHAPE_CLASSIC[seed].triangle; i++)
		ds_queue_enqueue(my_queue, SHAPE_1_TRIANGLE);	// triangle
	for(var i=0; i<MAX_COLUMN; i++)
		ds_queue_enqueue(my_queue, SHAPE_1_TRIANGLE);		// square
	
	
	for (var c = 0; c < block_cnt; c++) {
		// no need for empty queue check since c<MAX_COLUMN
		var brick_type = ds_queue_dequeue(my_queue);
		show_debug_message(string(global.tile_order));
	    // Perform actions for each (r, c) pair
		cur_x = scr_get_x_coordinate(global.tile_order[c]);
		cur_y = scr_get_y_coordinate(block_layer);
		
		var new_object = undefined;
		
		// level 0 programmer
		if(brick_type == SHAPE_3_CIRCLE)
			 new_object = instance_create_layer(cur_x, cur_y, "Instances", obj_brickCircle);
		else if(brick_type == SHAPE_2_DIAMOND)
			 new_object = instance_create_layer(cur_x, cur_y, "Instances", obj_brickDiamond);
		else if(brick_type == SHAPE_1_TRIANGLE)
			 new_object = instance_create_layer(cur_x, cur_y, "Instances", obj_brickTriangle);
		else
			 new_object = instance_create_layer(cur_x, cur_y, "Instances", obj_brickSquare);
		
		// linking stage = hp
		new_object.hp = global.stage;
		new_object.row = block_layer;
		new_object.column = global.tile_order[c];
	        
	}
	
	// Destroy the queue to free memory
	ds_queue_destroy(my_queue);
}