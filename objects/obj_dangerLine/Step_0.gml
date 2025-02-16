image_alpha = alphaBase + (alphaSize * sin(alphaTimer / alphaPeriod));

if (alphaVisible == 1) {
	alphaSize = 0.3
	alphaBase = (0.7 + (11 * alphaBase)) / 12;
}
else {
	alphaSize = 0;
	alphaBase = (0 + (5 * alphaBase)) / 6;
}
alphaTimer++;


/*
// Change opacity over time
blink_alpha += blink_speed * blink_direction;

// Reverse direction when fully faded or fully visible
if (blink_alpha <= 0 || blink_alpha >= 1) {
    blink_direction *= -1; // Flip fade direction
}

// Apply the new opacity
image_alpha = blink_alpha;