event_inherited();

// Basic setup
visual = obj_itemVisualDoubleBall;
duration = 60 * 1;

// Data structure and helper variables
ball_list = ds_list_create();
obtained = false;
duplication_count = 0;
duplication_done = 0;
duplication_timer = 0;
duplication_per_frame = 1;
