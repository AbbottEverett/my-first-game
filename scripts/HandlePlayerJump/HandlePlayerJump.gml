/// Handles Player Jump Mechanic
/// @description HandlePlayerJump(instance, state)
/// @param instance
/// @param onGround

// Check to see if jump buffer is gone and player has full jumps
if (argument1 == 0) && (argument0.jumpCount == 2) argument0.jumpCount = 1

if (argument0.keyJump) && (argument0.jumpCount > 0) {
	if (argument0.jumpCount == 2) argument0.ySpeed = argument0.jumpSpeed;
	if (argument0.jumpCount == 1) argument0.ySpeed = argument0.jumpSpeed * 0.7;
	argument0.jumpCount--
} 

// Variable Jump Height - this feels bad atm
// if (argument0.ySpeed < 0) && (!argument0.keyJumpHeld) {
	// argument0.jumpSpeed / 4 is used to guarentee a jump height
	// argument0.ySpeed = max(argument0.ySpeed, -argument0.jumpSpeed / 4)
//}