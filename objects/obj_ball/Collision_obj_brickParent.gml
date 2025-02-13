// 블록에 피격 판정을 넣음
var _x1 = 0;
var _y1 = 0;
var _x2 = x;
var _y2 = y;

with (other) {
    // non-zero = hit
	//coinBonus += (other.damage * other.damageMult * (1 + (global.statPower / 10))) - 1;
	//coinTotal += (other.damage * other.damageMult * (1 + (global.statPower / 10))) - 1;
    hit = true;
    hp -= other.damage * other.damageMult * (1 + (global.statPower / 10));
    _x1 = x;
    _y1 = y;
}

// Calculate the hit direction
_dir = point_direction(_x1, _y1, _x2, _y2);
if (other.object_index == obj_brickSquare)   scr_generateParticle(obj_particleSquareBrickHit, 10, _dir, 30, x, y);
if (other.object_index == obj_brickTriangle) scr_generateParticle(obj_particleTriangleBrickHit, 10, _dir, 30, x, y);
if (other.object_index == obj_brickDiamond)  scr_generateParticle(obj_particleDiamondBrickHit, 10, _dir, 30, x, y);
if (other.object_index == obj_brickCircle)   scr_generateParticle(obj_particleCircleBrickHit, 10, _dir, 30, x, y);

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



// 이제부터 공에 중력이 적용이 됨
gravtApply = 1;
