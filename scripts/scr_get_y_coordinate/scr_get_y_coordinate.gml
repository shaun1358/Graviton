// r: [0, MAX_ROW] (last row generation)
function scr_get_y_coordinate(r) {
    // Ensure the row index is within the new bounds (-1 to MAX_ROW)
    if (r < -1 || r > MAX_ROW) {
        show_error("scr_get_y_coordinate: Row index out of bounds (" + string(r) + ")", true);
    }

    // Calculate the total height of all rows including margins
    var total_block_height = (BLOCK_HEIGHT * MAX_ROW) + (BLOCK_HEIGHT_MARGIN * (MAX_ROW - 1));
    
    // Calculate the starting y position to center the blocks visually
    var start_y = (SCREEN_HEIGHT - total_block_height) / 2;

    // Special case for -1 (one row height above the first row)
    if (r == -1) {
        return start_y - (BLOCK_HEIGHT + BLOCK_HEIGHT_MARGIN) / 2;
    }

    // Calculate the y-coordinate for the nth row
    var coord_y = start_y + r * (BLOCK_HEIGHT + BLOCK_HEIGHT_MARGIN) + (BLOCK_HEIGHT / 2);
	
    return coord_y;
}
