// Step event of obj_gameover

// Calculate dimensions for "Retry"
var retry_width = string_width(text_retry) * text_scale_retry;
var retry_height = string_height(text_retry) * text_scale_retry;

// Check hover for "Retry"
text_hovered_retry = (device_mouse_x(0) > text_x_retry - retry_width / 2 &&
                      device_mouse_x(0) < text_x_retry + retry_width / 2 &&
                      device_mouse_y(0) > text_y_retry - retry_height / 2 &&
                      device_mouse_y(0) < text_y_retry + retry_height / 2);

if (text_hovered_retry) {
    if (device_mouse_check_button(0, mb_left)) {
        target_scale_retry = 1.2; // Scale up while held
    }
    if (device_mouse_check_button_released(0, mb_left)) {
        target_scale_retry = 1; // Reset scale
        audio_play_sound(snd_buttonClickDebug, 1, false); // Play click sound
        room_restart(); // Restart the room
    }
} else {
    target_scale_retry = 1; // Reset scale when not hovered
}

// Smoothly interpolate the scale for "Retry"
text_scale_retry = lerp(text_scale_retry, target_scale_retry, 0.2);

// --- TITLE TEXT LOGIC ---

// Calculate dimensions for "Title"
var title_width = string_width(text_title) * text_scale_title;
var title_height = string_height(text_title) * text_scale_title;

// Check hover for "Title"
text_hovered_title = (device_mouse_x(0) > text_x_title - title_width / 2 &&
                      device_mouse_x(0) < text_x_title + title_width / 2 &&
                      device_mouse_y(0) > text_y_title - title_height / 2 &&
                      device_mouse_y(0) < text_y_title + title_height / 2);

if (text_hovered_title) {
    if (device_mouse_check_button(0, mb_left)) {
        target_scale_title = 1.2; // Scale up while held
    }
    if (device_mouse_check_button_released(0, mb_left)) {
        target_scale_title = 1; // Reset scale
        audio_play_sound(snd_buttonClickDebug, 1, false); // Play click sound

        // Free resources
        with (obj_ball) {
            instance_destroy(); // Destroy all remaining balls
        }
        with (obj_brickParent) {
            instance_destroy(); // Destroy all remaining bricks
        }
        instance_destroy(obj_border); // Destroy border
		
		global.scoreGame = 0; // reset the score
        // Transition to the title room
        room_goto(room_title);
    }
} else {
    target_scale_title = 1; // Reset scale when not hovered
}


// Smoothly interpolate the scale for "Title"
text_scale_title = lerp(text_scale_title, target_scale_title, 0.2);

if(isHighScore){
	// Update the ripple effect
	ripple_timer += ripple_speed;
	ripple_scale = 1 + sin(ripple_timer) * ripple_amplitude;

	// Update the rotation angle (clockwise)
}