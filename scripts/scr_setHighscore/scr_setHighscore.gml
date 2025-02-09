// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setHighscore() {
	if (room == room_gameClassic)  global.scoreClassic  = max(global.scoreClassic, global.scoreGame);
	if (room == room_gameElevator) global.scoreElevator = max(global.scoreElevator, global.scoreGame);
}