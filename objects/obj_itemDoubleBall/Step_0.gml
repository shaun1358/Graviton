event_inherited();

if place_meeting(x, y, obj_ball) && not instance_exists(obj_optionParent) {
	scr_soundEffect(snd_itemGet, 1, 1, false);
	if instance_exists(obj_ball) with (obj_ball) {
		with instance_create_layer(x, y, layer, obj_ballGhost) {
			//어디서 버그 터질지 몰라서 다 복붙함
			/*
			gravtPower = other.gravtPower;
			gravtApply = other.gravtApply;
			
			damage = other.damage;
			damageMult = other.damageMult;
			
			scaleTo = other.scaleTo;
			image_xscale = other.image_xscale;
			image_yscale = other.image_xscale;
			
			linearDamping = other.linearDamping;
			phy_linear_damping = other.phy_linear_damping;

			phy_speed_x = other.phy_speed_x * random_range(0.9, 1.1);
			phy_speed_y = other.phy_speed_y * random_range(0.9, 1.1);
			*/ 
			//근데 요렇게 하니까 재미가 읎네... 걍 커스텀으로 만들었음
			//고스트볼이 생성될때 위로 휙 하고 튀는 느낌?
			gravtPower = other.gravtPower;
			gravtApply = 1;
			
			damage = other.damage;
			damageMult = other.damageMult;
			
			scaleTo = other.scaleTo;
			image_xscale = other.image_xscale;
			image_yscale = other.image_xscale;
			
			linearDamping = other.linearDamping;
			phy_linear_damping = other.phy_linear_damping;
			phy_speed_x = random_range(-10, 10);
			phy_speed_y = random_range(-20, -30);
		}
	}
	visible = false;
	instance_destroy();
}