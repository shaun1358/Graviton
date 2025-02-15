if (y < yThresh) {
	instance_destroy();
}



// Check if we pick up the item
if place_meeting(x, y, obj_ball)
&& !instance_exists(obj_optionParent)
&& !obtained
{
    obtained = true;
	scr_itemVisual(visual, duration);
	with instance_create_layer(x, y, layer, obj_particleItemBreak) {
		sprite_index = other.sprite_index;
	}
	image_xscale = createXscale;
	createXscale = cos((createTimer / 60) * pi);
	createTimer = (120 + (createTimer * 19)) / 20; 
    scr_soundEffect(snd_itemGet, 1, 1, false);

    // Ensure ds_list is properly initialized
    if !ds_exists(ball_list, ds_type_list) {
        ball_list = ds_list_create();
    } else {
        ds_list_clear(ball_list);
    }

    show_debug_message("itemdoubleballstep " + string(ball_list));

    // Store references to all existing balls
    with (obj_ball) {
        // IMPORTANT: use 'other' so we add to the item’s list, not obj_ball’s
        ds_list_add(other.ball_list, id);
    }

    // Count how many need to be duplicated
    duplication_count = ds_list_size(ball_list);
    duplication_done  = 0;

    // Spread duplication across 60 frames, min 1 per frame
    duplication_per_frame = max(1, duplication_count div 60);

    duplication_timer = 0;
    visible = false; // Hide item since it's used
}

// Once obtained, handle duplications
if obtained
&& ds_exists(ball_list, ds_type_list)
&& ds_list_size(ball_list) > 0
{
    if duplication_done < duplication_count {
        duplication_timer++;

        // Duplicate some balls each frame
        if duplication_timer >= 1 {
            for (var i = 0; i < duplication_per_frame; i++) {
                if duplication_done < duplication_count {
                    var original_ball = ds_list_find_value(ball_list, duplication_done);

                    if instance_exists(original_ball) {
                        // Create a ghost copy at the original ball’s position
                        with instance_create_layer(original_ball.x, original_ball.y, layer, obj_ballGhost) {
                            gravtPower       = original_ball.gravtPower;
                            gravtApply       = 1;
                            damage           = original_ball.damage;
                            damageMult       = original_ball.damageMult;
                            scaleTo          = original_ball.scaleTo;
                            image_xscale     = original_ball.image_xscale;
                            image_yscale     = original_ball.image_xscale;
                            linearDamping    = original_ball.linearDamping;
                            phy_linear_damping = original_ball.phy_linear_damping;
                            phy_speed_x      = random_range(-10, 10);
                            phy_speed_y      = random_range(-20, -30);
                        }
                    }

                    duplication_done++;
                }
            }
            // Reset frame timer
            duplication_timer = 0;
        }
    }
}


/*
// OLD SINGLE-SPAWN CODE (Commented out in case you need it for reference):

if place_meeting(x, y, obj_ball) && !instance_exists(obj_optionParent) {
    scr_soundEffect(snd_itemGet, 1, 1, false);
    if instance_exists(obj_ball) with (obj_ball) {
        with instance_create_layer(x, y, layer, obj_ballGhost) {

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
