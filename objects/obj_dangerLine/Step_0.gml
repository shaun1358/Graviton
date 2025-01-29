// Change opacity over time
blink_alpha += blink_speed * blink_direction;

// Reverse direction when fully faded or fully visible
if (blink_alpha <= 0 || blink_alpha >= 1) {
    blink_direction *= -1; // Flip fade direction
}

// Apply the new opacity
image_alpha = blink_alpha;