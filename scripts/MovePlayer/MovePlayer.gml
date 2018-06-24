/// Manages player movement
/// @description MovePlayer(instance, moveDir)
/// @param instance
/// @parm moveDir

// Smooth movement for player using Approach Script

if (argument1 != 0) {
	argument0.xSpeed = Approach(argument0.xSpeed, (argument0.walkSpeed * argument1), argument0.accel)
} else {
	argument0.xSpeed = Approach(argument0.xSpeed, (argument0.walkSpeed * argument1), argument0.fric)
}