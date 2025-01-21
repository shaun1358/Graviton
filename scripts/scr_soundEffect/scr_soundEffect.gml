// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_soundEffect(sound, pitch, priority, loop) {
	audio_sound_pitch(sound, pitch);
	audio_play_sound(sound, priority, loop, global.soundEffect);
}