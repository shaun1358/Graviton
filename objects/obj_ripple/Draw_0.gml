gpu_set_blendmode(bm_add); // Enable additive blending for neon effect

// Draw the main ring
draw_set_alpha(alpha);
draw_circle(x, y, ripple_size, false); // False = Outline only

// Draw outer glow (laser effect)
for (var i = 1; i <= 5; i++) {
    draw_set_alpha(alpha / (i + 1)); // Decrease alpha for outer layers
    draw_circle(x, y, ripple_size + i, false); // Slightly larger rings
}

draw_set_alpha(1); // Reset alpha
gpu_set_blendmode(bm_normal); // Reset blending mode
