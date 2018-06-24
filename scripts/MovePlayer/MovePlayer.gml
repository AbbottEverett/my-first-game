/// Manages player movement
/// argumet0 is the player instance
/// argument1 is moveDir on that frame

if (argument1 != 0) {
	argument0.xSpeed += argument1 * argument0.accel;
	argument0.xSpeed = clamp(argument0.xSpeed, -argument0.walkSpeed, argument0.walkSpeed);
} else {
	// Linear Interpolation
	argument0.xSpeed = lerp(argument0.xSpeed, 0, argument0.fric);
}