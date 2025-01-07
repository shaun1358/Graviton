function scr_tileElevate() {
    var move_up_pixels = BLOCK_HEIGHT + BLOCK_HEIGHT_MARGIN;
    var easing_speed = 0.1; // Easing factor (smaller values = smoother/slower)
    var any_animating = false; // Track if any blocks are still animating

    with (obj_brickParent) {
        // Only process blocks with the riseable trait
        if (isRiseable) {
            // Calculate the target position for the next row
            var target_y = scr_get_y_coordinate(row - 1);

            // Smoothly move toward the target position
            phy_position_y = lerp(phy_position_y, target_y, easing_speed);


            // Check if the block is still animating
            if (abs(phy_position_y - target_y) >= 0.5) {
                any_animating = true; // Block is still moving
            } else {
                // Snap to the target position and decrement row
                phy_position_y = target_y;
                row = row - 1; // Update row when target reached
                 }
        }
    }

    return any_animating; // Return whether any blocks are still animating
}
