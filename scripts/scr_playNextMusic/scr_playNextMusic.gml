function scr_playNextMusic(musicTrack) {
    if (musicIndex >= array_length(musicTrack)) {
        scr_shuffleArray(musicTrack); // Reshuffle when all tracks are played
        musicIndex = 0;
    }

    var _nextTrack = musicTrack[musicIndex];
    musicSource = audio_play_sound(_nextTrack, 1, false); // Play once, no looping
    musicIndex++; // Move to the next song
}