// c: [0, MAX_COLUMN)
function scr_get_x_coordinate(c){
	
	
 // Ensure the row index is within bounds
    if (c < 0 || c >= MAX_COLUMN) {
        show_error("get_x_coordinate: Row index out of bounds (" + string(c) + ")", true);
    }

    // Calculate the total height of all rows including margins
    var total_block_height = (BLOCK_WIDTH * MAX_COLUMN) + (BLOCK_WIDTH_MARGIN * (MAX_COLUMN - 1));
    
    // Calculate the starting y position to center the blocks visually
    var start_x = (SCREEN_WIDTH - total_block_height) / 2;
    
    // Calculate the y-coordinate for the nth row
    var coord_x = start_x + c * (BLOCK_WIDTH + BLOCK_WIDTH_MARGIN);
    return coord_x;
}