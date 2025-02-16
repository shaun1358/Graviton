if(isPressed){
	scr_soundEffect(snd_optionOn, 1, 1, false);
	if(global.shopSchema == "Classic")
		global.shopSchema = "Elevator";
	else
		global.shopSchema = "Classic";
}
