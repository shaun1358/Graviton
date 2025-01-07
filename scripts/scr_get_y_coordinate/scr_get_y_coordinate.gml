// r: [0, MAX_ROW] (last row generation)
function scr_get_y_coordinate(r){
	
 // Ensure the row index is within bounds
    if (r < 0 || r > MAX_ROW) {
        show_error("get_y_coordinate: Row index out of bounds (" + string(r) + ")", true);
    }

    // Calculate the total height of all rows including margins
    var total_block_height = (BLOCK_HEIGHT * MAX_ROW) + (BLOCK_HEIGHT_MARGIN * (MAX_ROW - 1));
    
    // Calculate the starting y position to center the blocks visually
    var start_y = (SCREEN_HEIGHT - total_block_height) / 2;
    
    // Calculate the y-coordinate for the nth row
    var coord_y = start_y + r * (BLOCK_HEIGHT + BLOCK_HEIGHT_MARGIN);
    return coord_y;
}