/// Manages Player Animation State
/// @description SetPlayerAnimationState(instance, moveDir)
/// @param instance
/// @param moveDir
// argument0 is player instance
// argument1 is moveDir for player instance

if (!argument0.onGround) {
	argument0.sprite_index = sprPlayerAir;
	argument0.image_speed = 0;
	
	// Picks frame from speed
	HandleJumpAnimation(argument0)
	
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