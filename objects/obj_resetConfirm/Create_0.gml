// Position for Yes and No buttons
var yesX = 540 + 200;
var noX = 540 - 200;
var buttonY = 600 + 480;

// Create Yes and No button objects
instance_create_depth(yesX, buttonY, -101, obj_checkBoxYes);
instance_create_depth(noX, buttonY, -101, obj_checkBoxNo);
