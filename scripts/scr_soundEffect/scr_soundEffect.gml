/// scr_soundEffect(sound, pitch, priority, loop)
///
/// Plays a sound effect with adjustable pitch, priority, and looping behavior,
/// while also applying the global sound effect volume setting.
///
/// @param {sound} sound       - The sound asset to be played.
/// @param {real} pitch        - The pitch modifier (1.0 = normal, <1 = lower, >1 = higher).
/// @param {real} priority     - The sound priority (higher value = more important).
/// @param {bool} loop         - Whether the sound should loop (true = loop, false = play once).
///
/// @returns {int} The audio source ID of the played sound.
///
/// Example usage:
/// scr_soundEffect(snd_jump, 1.2, 1, false); // Plays snd_jump at 1.2x speed, priority 1, no looping.

function scr_soundEffect(sound, pitch, priority, loop) {
    // Set the pitch of the sound
    audio_sound_pitch(sound, pitch);
    
    // Play the sound with given parameters and global volume control
    return audio_play_sound(sound, priority, loop, global.soundEffect);
}
