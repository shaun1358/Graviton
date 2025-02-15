/// @description Insert description here
// You can write your code in this editor

/* AUDIO */
if (room == room_gameElevator) {
     if (!audio_is_playing(musicSource) || musicSource == -1) {
        musicIndex_elevator = scr_playNextMusic(bgm_elevator, musicIndex_elevator);
    }
	physics_world_update_speed(1);
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
else { // Stop music when entering any other room
    if (audio_is_playing(global.musicSource)) {
        audio_stop_sound(global.musicSource);
        global.musicSource = -1; // Reset ID to indicate no music is playing
    }
}
/* END OF AUDIO */