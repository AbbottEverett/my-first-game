/// Manages Player Animation State
// argument0 is player instance
// argument1 is moveDir for player instance

if (!argument0.onGround) {
	argument0.sprite_index = sprPlayerAir;
	argument0.image_speed = 0;
	
	// Picks frame from speed
	if (argument0.ySpeed > - argument0.buffer) && (argument0.ySpeed < argument0.buffer) {
		argument0.image_index = 1;
	} else if (sign(argument0.ySpeed) == -1) {
		argument0.image_index = 0;
	} else {
		argument0.image_index = 2;
	}
	
} else {
	argument0.image_speed = 1;
	if (argument0.keyDown) {
		argument0.sprite_index = sprPlayerCrouch
	} else if (argument0.xSpeed > -argument0.buffer) &&  (argument0.xSpeed < argument0.buffer) {
		argument0.sprite_index = sprPlayer;
	} else if (argument1 != 0) {
		argument0.sprite_index = sprPlayerWalk;
	} else {
		argument0.sprite_index = sprPlayerSlide;
	}
}

if (xSpeed != 0) image_xscale = sign(xSpeed)