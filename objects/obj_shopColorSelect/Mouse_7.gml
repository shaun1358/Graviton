if(isPressed){
	if global.skinBGColorOwn[target] { //owning
		if(schema == "Classic")
			if(page == 2)
				global.skinBGClassicColor1 = target;
			else
				global.skinBGClassicColor2 = target;
		else
			if(page == 2)
				global.skinBGElevatorColor1 = target;
			else
				global.skinBGElevatorColor2 = target;

		//show_debug_message("shopcolorselectLR"+schema+string(page));
		with obj_shopColorHighlight{
			page = other.page;
			target = other.target;
			scale_state = 2;
			scale_press = 1.2;
			schema = other.schema;
		}


		scr_globalSave();
	}
	else { // not owning
		with instance_create_depth(x, y, 0, obj_shopBuyColorConfirm) {
			target = other.target;
			owner = other.owner;
			price = scr_shopGetPriceColor(target);
		}
	}
	
	
	
}

scale_state = 1;
