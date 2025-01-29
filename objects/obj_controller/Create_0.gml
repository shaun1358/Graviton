// Set default resolution
global.base_width = 1080;
global.base_height = 1920;
global.base_aspect = global.base_width / global.base_height;

// Store last known window size
global.last_window_width = window_get_width();
global.last_window_height = window_get_height();

// Ensure view and camera exist
if (!view_enabled) {
    show_error("Error: No views are enabled. Enable a view in the Room Editor.", true);
}

// Check if the camera is already assigned
if (view_camera[0] == noone) {
    view_camera[0] = camera_create_view(0, 0, global.base_width, global.base_height, 0, noone, -1, -1, 0);
}

// Assign the camera to the viewport
view_set_camera(0, view_camera[0]);
view_enabled = true;

