/// scr_soundMusic(sound, pitch, priority, loop)
///
/// Plays a background music track with adjustable pitch, priority, and looping behavior,
/// while also applying the global music volume setting.
///
/// @param {sound} sound       - The sound asset to be played.
/// @param {real} pitch        - The pitch modifier (1.0 = normal, <1 = lower, >1 = higher).
/// @param {real} priority     - The sound priority (higher value = more important).
/// @param {bool} loop         - Whether the sound should loop (true = loop, false = play once).
///
/// @returns {int} The audio source ID of the played music.
///
/// Example usage:
/// global.musicSource = scr_soundMusic(snd_background, 1.0, 1, true); // Play background music normally.

function scr_soundMusic(sound, pitch, priority, loop) {
    // Set the pitch of the sound
    audio_sound_pitch(sound, pitch);
    
    // Play the music with given parameters and global volume control
    return audio_play_sound(sound, priority, loop, global.soundMusic);
}
