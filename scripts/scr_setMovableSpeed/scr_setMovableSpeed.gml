//아이템과 블록의 상승 속도를 정해줌
//요것만 있으면 엘베모드 최?적화를 할 수 있을듯???
function scr_setMovableSpeed(value) {
	if instance_exists(obj_brickParent) obj_brickParent.phy_linear_velocity_y = -value;
	if instance_exists(obj_itemParent) obj_itemParent.phy_linear_velocity_y = -value;
	if instance_exists(obj_brickGhost) obj_brickGhost.phy_linear_velocity_y = -value;
}