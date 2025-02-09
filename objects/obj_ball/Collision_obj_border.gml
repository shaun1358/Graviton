//이제부터 공에 중력이 적용이 됨
gravtApply = 1;

scr_generateParticle(obj_particleBrickHit, 10, 270 + (90 * sign(phy_speed_x)), 30, x, y);

// Play random ball bounce sound based on global.soundEffect volume
if (global.soundEffect > 0) { // Only play if sound is enabled
    var sound_choice = irandom_range(1, 4);
    var sound_to_play;

    switch (sound_choice) {
        case 1: sound_to_play = snd_ballHit1; break;
        case 2: sound_to_play = snd_ballHit2; break;
        case 3: sound_to_play = snd_ballHit3; break;
        case 4: sound_to_play = snd_ballHit4; break;
    }

    // Play sound at the volume set in global.soundEffect (0 = mute, 1 = full volume)
    scr_soundEffect(sound_to_play, random_range(0.9, 1.1), 1, false);
}
