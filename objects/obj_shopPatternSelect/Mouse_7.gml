if(isPressed){
	
	if global.skinBGPatternOwn[target] { //owning
		if(schema == "Classic")
			global.skinBGClassicPattern = target;
		else
			global.skinBGElevatorPattern = target;			
			
		with obj_shopPatternHighlight{
			target = other.target;
			scale_state = 2;
			scale_press = 1.2;
			schema = other.schema;
		}
		scr_globalSave();
	}
	else { // not owning
		with instance_create_depth(x, y, 0, obj_shopBuyPatternConfirm) {
			target = other.target;
			owner = other.owner;
			price = scr_shopGetPricePattern(target);
		}
	}
	
	
	
}

scale_state = 1;
