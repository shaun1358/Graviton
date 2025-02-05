// 블록에 피격 판정을 넣음
var _x1 = 0;
var _y1 = 0;
var _x2 = x;
var _y2 = y;

with (other) {
    // non-zero = hit
    hit = true;
    hp -= other.damage * other.damageMult;
    _x1 = x;
    _y1 = y;
}

// Calculate the hit direction
var _dir = point_direction(_x1, _y1, _x2, _y2);

// Play random ball bounce sound based on global.soundEffect volume
if (global.soundEffect > 0) { // Only play if sound is enabled
    var sound_choice = irandom_range(1, 4);
    var sound_to_play;

    switch (sound_choice) {
        case 1: sound_to_play = snd_ballBounce1; break;
        case 2: sound_to_play = snd_ballBounce2; break;
        case 3: sound_to_play = snd_ballBounce3; break;
        case 4: sound_to_play = snd_ballBounce4; break;
    }

    // Play sound at the volume set in global.soundEffect (0 = mute, 1 = full volume)
    audio_play_sound(sound_to_play, 1, false);
    audio_sound_gain(sound_to_play, global.soundEffect, 0); // Adjust volume
}

// Generate particle effect
scr_generateParticle(obj_particleBrickHit, 10, _dir, 30, x, y);

// 이제부터 공에 중력이 적용이 됨
gravtApply = 1;
