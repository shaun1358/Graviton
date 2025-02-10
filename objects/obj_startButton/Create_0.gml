//target은 게임 룸에서 변경하면 됨
target = 1;

if (target == room_gameClassic)   sprite_index = spr_modeClassic;
else if (target == room_gameElevator) sprite_index = spr_modeElevator;

scale_press = 1;
scale_state = 0;
scale_timer = 0;
scale_period = 10;