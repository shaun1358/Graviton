//똥그란 부분 크기 변하게 해주는 효과
timer++;
image_xscale = 1 + (0.1 * sin(timer / timer_period));
image_yscale = image_xscale;

//똥그란 부분이 있을때에만 파티클 생성해줌
if (visible) scr_generateParticle(obj_particleLaser, 1, direction + 180, 10)