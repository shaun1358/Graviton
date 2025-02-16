if(isPressed){
	
	if global.skinBGColorOwn[target] { //owning
		global.skinBGClassicColor1 = target;
		with obj_shopColorHighlight{
			target = other.target;
			scale_state = 2;
			scale_press = 1.2;
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
