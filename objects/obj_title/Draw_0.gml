// 동적으로 제목 크기 변경 
//draw_sprite_stretched(spr_titleDebug, 0, windowWidth/4, windowHeight/6, windowWidth*1/2,windowHeight* 1/6);
// Ensure the room is the title room
if (room == room_title) {
    // Draw the title sprite with dynamic scaling + oscillation
	var _y = 400 + sin(current_time * 0.002) * 15;
	var _y2 = 400 + sin(current_time * 0.002 + 1) * 20;
	var _alpha = sin(current_time * 0.001);

	draw_sprite_ext(spr_vfx, 0, 0, 0, 1, 1, 0, c_white, _alpha);

	draw_sprite_ext(spr_titleEffect1, 0, 150, _y2, 1.5, 1, 0, c_white, 0.8);
	draw_sprite_ext(spr_titleEffect2, 0, 930, _y2, 1.5, 1, 0, c_white, 0.8);
	draw_sprite_ext(spr_title, 0, 1080 / 2, _y, 1, 1, 0, c_white, 1);
	
	draw_sprite_ext(spr_coin, 0, 100, 100, 2, 2, 0, c_white, 1);
	
	scr_drawSetText(#7ACCCC, fnt_pressStart2P_30, fa_left, fa_middle);
	draw_text(160 + 2, 100 + 2, string(ceil(coinTo)));
	draw_text(160 - 2, 100 + 2, string(ceil(coinTo)));
	draw_text(160 + 2, 100 - 2, string(ceil(coinTo)));
	draw_text(160 - 2, 100 - 2, string(ceil(coinTo)));
    scr_drawSetText(#99FFFF, fnt_pressStart2P_30, fa_left, fa_middle);
	draw_text(160, 100, string(ceil(coinTo)));
	
	
	//draw_text(300, 300, global.skinBGColorOwn[10]);
	//draw_text(360, 100, string(global.coin));
	
	
	/*
	draw_text(100, 1400, "Power : " + string(global.statPower));
	draw_text(100, 1500, "Ball  : " + string(global.statBall));
	draw_text(100, 1600, "Delay : " + string(global.statDelay));
	draw_text(100, 1700, "Luck  : " + string(global.statLuck));
	draw_text(100, 1800, "ItemD : " + string(global.statItemd));
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
draw_set_color(c_white);

/* BORDER DEBUG
draw_rectangle(0,0,10,1920, false);
draw_rectangle(1070,0,1080,1920, false);
draw_rectangle(0,0,1080,10, false);
draw_rectangle(0,0,1080,10, false);
draw_rectangle(0,1910,1080,1920, false);
