if (not instance_exists(obj_optionParant) && not instance_exists(obj_gameover)) {
	timer.curTime = (250 + (14 * timer.curTime)) / 15;
}
//timer.curTime += 8;