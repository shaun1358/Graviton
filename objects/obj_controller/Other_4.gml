/// @description Insert description here
// You can write your code in this editor

/* AUDIO */

if (room == room_gameElevator) {
     if (!audio_is_playing(musicSource) || musicSource == -1) {
        scr_playNextMusic(bgm_elevator);
    }
}
else if (room == room_gameClassic) {
     if (!audio_is_playing(musicSource) || musicSource == -1) {
        scr_playNextMusic(bgm_classic);
    }
}
else { // Stop music when entering any other room
    if (audio_is_playing(global.musicSource)) {
        audio_stop_sound(global.musicSource);
        global.musicSource = -1; // Reset ID to indicate no music is playing
    }
}
/* END OF AUDIO */