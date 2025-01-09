with (obj_ball) {
    var ball_radius = sprite_get_height(spr_ball) / 2;
    
    // border의 경계 계산
    var border_left = other.x;
    var border_right = other.x + other.sprite_width;
    var border_top = other.y;
    var border_bottom = other.y + other.sprite_height;
    
    // 현재 속도 저장
    var vx = phy_linear_velocity_x;
    var vy = phy_linear_velocity_y;
    
    // 왼쪽 경계 체크
    if (phy_position_x - ball_radius <= border_left) {
        phy_position_x = border_left + ball_radius;
        phy_linear_velocity_x = -vx;
    }
    
    // 오른쪽 경계 체크
    if (phy_position_x + ball_radius >= border_right) {
        phy_position_x = border_right - ball_radius;
        phy_linear_velocity_x = -vx;
    }
    
    // 위쪽 경계 체크
    if (phy_position_y - ball_radius <= border_top) {
        phy_position_y = border_top + ball_radius;
        phy_linear_velocity_y = -vy;
    }
    
}