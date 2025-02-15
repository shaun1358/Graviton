/// Function: scr_playNextMusic
/// Description: Plays the next track in a shuffled playlist. Shuffles the playlist if starting from the first track.
/// Arguments:
/// - musicTrack (array): An array containing the sound resources for the music playlist.
/// - musicIndex (int): The current index of the track to play.
/// Returns:
/// - The updated musicIndex after playing the next track.

function scr_playNextMusic(musicTrack, musicIndex) {
	//show_debug_message("scr_playNextMusic"+string(musicTrack));
	//show_debug_message("scr_playNextMusic"+string(musicIndex));

    // If the playlist is empty, return 0 (no music to play)
    if (array_length(musicTrack) == 0) {
        return 0;
    }

    // If starting from the first track (index 0), shuffle the playlist
    if (musicIndex == 0) {
        scr_shuffleArray(musicTrack);
    }

    // Get the next track using modulo to loop within the array bounds
    var _nextTrack = musicTrack[musicIndex % array_length(musicTrack)];

    // Play the selected music track (does not loop)
    musicSource = audio_play_sound(_nextTrack, 1, false);

    // Increment index to prepare for the next song in the sequence
    musicIndex++;

    // Return the updated index to keep track of progress
    return musicIndex;
}
