// 동적으로 제목 크기 변경 
//draw_sprite_stretched(spr_titleDebug, 0, windowWidth/4, windowHeight/6, windowWidth*1/2,windowHeight* 1/6);
// Ensure the room is the title room
if (room == room_title) {
    // Draw the title sprite with dynamic scaling
	var _y = 400;
	
	if instance_exists(obj_camera) {
		var _marginX = obj_camera.cameraMarginX;
		var _marginY = obj_camera.cameraMarginY;
		var _width   = obj_camera.cameraWidth;
		var _height  = obj_camera.cameraHeight;
		draw_sprite_ext(spr_title, 0, _marginX + (1080 / 2), _marginY + _y, 1, 1, 0, c_white, 1);
		
	}
	else {
		draw_sprite_ext(spr_title, 0, 1080 / 2, _y, 1, 1, 0, c_white, 1);
	}
    
	/*
    // Calculate the position for the start button
    var startButton_x = windowWidth / 2; // Center horizontally
    var startButton_y = windowHeight / 2; // Center vertically

    // Only create the button instance if it doesn't already exist
	
    if (!instance_exists(obj_startButton)) {
        instance_create_layer(startButton_x, startButton_y, layer_get_id("Instances"), obj_startButton);
    }
	*/
} else {
    // Other draw logic for different rooms
}
