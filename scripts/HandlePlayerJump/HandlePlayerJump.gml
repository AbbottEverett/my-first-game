/// Handles Player Jump Mechanic
// argument0 is the player instance we are working with

if (argument0.onGround) && (argument0.keyJump) {
	argument0.ySpeed = argument0.jumpSpeed;
}