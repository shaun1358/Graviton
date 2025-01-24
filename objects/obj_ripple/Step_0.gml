ripple_size += ripple_speed; // Increase radius
alpha -= 0.02;               // Fade out gradually
if (alpha <= 0) instance_destroy(); // Destroy when fully transparent
