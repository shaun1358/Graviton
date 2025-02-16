if (global.shopSchema == "Classic"){
	sprite_index = spr_shopTabClassic;
	if(page == 2){
		obj_shopColorHighlight.target = global.skinBGClassicColor1;
		obj_shopColorHighlight.schema = global.shopSchema;
		obj_shopColorHighlight.page = page;
	}
	else if(page == 3){
		obj_shopColorHighlight.target = global.skinBGClassicColor2;
		obj_shopColorHighlight.schema = global.shopSchema;
		obj_shopColorHighlight.page = page;

	}
	else{
		obj_shopPatternHighlight.target = global.skinBGClassicPattern;
		obj_shopPatternHighlight.schema = global.shopSchema;
		obj_shopPatternHighlight.page = page;

	}
}
else{
	sprite_index = spr_shopTabElevator;
	if(page == 2){
		obj_shopColorHighlight.target = global.skinBGElevatorColor1;
		obj_shopColorHighlight.schema = global.shopSchema;
		obj_shopColorHighlight.page = page;

	}
	else if(page == 3){
		obj_shopColorHighlight.target = global.skinBGElevatorColor2;
		obj_shopColorHighlight.schema = global.shopSchema;
		obj_shopColorHighlight.page = page;

	}
	else{
		obj_shopPatternHighlight.target = global.skinBGElevatorPattern;
		obj_shopPatternHighlight.schema = global.shopSchema;
		obj_shopPatternHighlight.page = page;

	}
}