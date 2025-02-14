x1 = device_mouse_x(0);
global.soundMusic = clamp(x1-400, 0, 460)/460;
show_debug_message("optionBarMLD"+string(x1));