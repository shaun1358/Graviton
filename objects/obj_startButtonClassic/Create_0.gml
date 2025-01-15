//target은 게임 룸에서 변경하면 됨
target = 1;

if (target == room_gameOrigin)   sprite_index = spr_modeClassic;
else if (target == room_gameElevator) sprite_index = spr_modeElevator;