timer++;

image_xscale = 1 + (0.1 * sin(timer / timer_period));
image_yscale = image_xscale;

if (visible) scr_generateParticle(obj_particleLaser, 1, direction + 180, 10)