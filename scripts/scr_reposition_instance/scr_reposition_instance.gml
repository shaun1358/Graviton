// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reposition_instance(){
	/// reposition_physics_objects()

	var screen_width = display_get_width();
	var screen_height = display_get_height();
	var extra_margin_x = (screen_width - 1920) / 2;

	with (obj_brickParent) {
	    // Store current velocity
	    var vx = physics_get_linear_velocity_x();
	    var vy = physics_get_linear_velocity_y();
    
	    // Stop the object temporarily
	    physics_set_active(false);
    
	    // Move the object
	    physics_set_position(default_x + extra_margin_x, y);
    
	    // Reactivate physics
	    physics_set_active(true);
    
	    // Restore velocity
	    physics_set_linear_velocity(vx, vy);
	}

}