if(isPressed){
	if (own == 0) {
		with instance_create_depth(x, y, 0, obj_shopBuyColorConfirm) {
			target = other.target;
			price = scr_shopGetPriceColor(target);
		}
	}
}

scale_state = 1;
