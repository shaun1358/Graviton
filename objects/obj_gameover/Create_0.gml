var final_score = global.scoreGame;
isHighScore = false;
 
// score update logic
if(room==room_gameOrigin){
	if(global.scoreGame > global.scoreClassic){
		global.scoreClassic = global.scoreGame;	
		isHighScore = true;
	}	
}
else if(room == room_gameElevator){
	if(global.scoreGame > global.scoreElevator){		
		global.scoreElevator = global.scoreGame;	
		isHighScore = true;
	}
}
// Create event of obj_gameover

// Existing variables for "Retry" text
text_scale_retry = 1;
target_scale_retry = 1;
text_x_retry = display_get_gui_width() / 2 - 20; // magic number for "> "
text_y_retry = display_get_gui_height() / 2 + 50;
text_retry = "> Retry";
text_hovered_retry = false;
// New variables for "Title" text
text_scale_title = 1;
target_scale_title = 1;
text_x_title = display_get_gui_width() / 2 - 20; // magic number for "> "
text_y_title = text_y_retry + 80; // Position below "Retry"
text_title = "> Title";
text_hovered_title = false;

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var sprite_x = gui_width * 0.75; // Center horizontally in the top-right quadrant
var sprite_y = gui_height * 0.25; // Center vertically in the top-right quadrant

// Ripple effect variables
ripple_scale = 1;        // Initial scale of the sprite
ripple_speed = 0.1;      // Speed of the ripple effect
ripple_amplitude = 0.2;  // Intensity of the ripple (scaling factor)
ripple_timer = 0;        // Timer for the sine wave

// Rotation variables
rotation_angle = 345;      // Initial rotation