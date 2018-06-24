/// Checks for collision between two instances

// argument0 = the collider
// argument1 = the collide

// horizontal collision
if (place_meeting(argument0.x+argument0.xSpeed, argument0.y, argument1)) {
	while (!place_meeting(argument0.x+sign(argument0.xSpeed), argument0.y, argument1)) {
		argument0.x += sign(argument0.xSpeed);
	}
	argument0.xSpeed = 0;
}

if (place_meeting(argument0.x, argument0.y+argument0.ySpeed, argument1)) {
	while (!place_meeting(argument0.x, argument0.y+sign(argument0.ySpeed), argument1)) {
		argument0.y += sign(argument0.ySpeed);
	}
	argument0.ySpeed = 0;
}