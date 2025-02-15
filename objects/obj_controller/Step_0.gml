if (keyboard_check_pressed(vk_backspace)) { 
	if(room==room_gameElevator||room==room_gameClassic)
		room_goto(room_title);
	else
		game_end(0);
}

// Get the actual window size
var window_w = window_get_width();
var window_h = window_get_height();
var window_aspect = window_w / window_h;

// Default view size (1920x1080)
var new_width = global.base_width;
var new_height = global.base_height;

if (window_aspect > global.base_aspect) {
    // Window is wider than 16:9 → Adjust width to maintain aspect ratio
    new_width = global.base_height * window_aspect ;
    new_height = global.base_height;
} else {
    // Window is taller than 16:9 → Adjust height to maintain aspect ratio
    new_width = global.base_width;
    new_height = global.base_width / window_aspect;
}

// Apply new camera size
camera_set_view_size(view_camera[0], 1080, 1920);

// Adjust viewport to match actual window size
view_wport[0] = 1080;
view_hport[0] = 1920;

// Store new window size
global.last_window_width = window_w;
global.last_window_height = window_h;

/*
show_debug_message("Window: " + string(window_w) + "x" + string(window_h));
show_debug_message("Camera: " + string(new_width) + "x" + string(new_height));
*/

/** MUSIC SECTOR **/

if (audio_is_playing(musicSource)) {
    audio_sound_gain(musicSource, global.soundMusic, 0);
}

if (room == room_gameElevator) {
     if (!audio_is_playing(musicSource) || musicSource == -1) {
        musicIndex_elevator = scr_playNextMusic(bgm_elevator, musicIndex_elevator);
    }
}
else if (room == room_gameClassic) {
     if (!audio_is_playing(musicSource) || musicSource == -1) {
        musicIndex_classic = scr_playNextMusic(bgm_classic, musicIndex_classic);
    }
}
else if (room == room_credit) {
     if (!audio_is_playing(musicSource) || musicSource == -1) {
        musicIndex_credit = scr_playNextMusic(bgm_credit, musicIndex_credit);
    }
}
else {
    if (audio_is_playing(musicSource)) {
        audio_stop_sound(musicSource);
        musicSource = -1;
    }
}