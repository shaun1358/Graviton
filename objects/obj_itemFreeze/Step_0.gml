if( place_meeting(x, y, obj_ball)) {
	obj_gameElevator.itemFreeze = true;
	obj_gameElevator.itemFreezeTimer = DUR_FREEZE;
	obj_gameElevator.itemFreezeDelta = 0;
	visible = false;
	with (obj_brickParent) phy_linear_velocity_y = 0;
	with (obj_itemParent) phy_linear_velocity_y = 0;

	instance_destroy();
}