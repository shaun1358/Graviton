event_inherited();

if (obj_gameClassic.state == BALL_STATE_0_IDLE) visible = 1;
else if (ballCount <= 0) visible = 0;

if (obj_gameClassic.state == BALL_STATE_1_FIRING) {
    if (ballTimer <= 0 && ballCount > 0) {
		scr_ballShot(ballSpeed, ballDirection, obj_gameClassic.ballCount / 100);
		ballCount--;
        ballTimer = ballDelay;
    }
    ballTimer--;
} else {
    ballTimer = 0;
}