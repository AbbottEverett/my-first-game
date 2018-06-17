/// @description Execute Character Logic Each Frame

// Check Player Inputs
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(ord("W"));

var moveDir = keyRight - keyLeft;

xSpeed = moveDir * walkSpeed;

// Gravity
ySpeed += grav;

var onGround = place_meeting(x, y+1, objWall)

if (onGround) && (keyJump) {
	ySpeed = jumpSpeed;
}

// horizontal collision
if (place_meeting(x+xSpeed, y, objWall)) {
	while (!place_meeting(x+sign(xSpeed), y, objWall)) {
		x += sign(xSpeed);
	}
	xSpeed = 0;
}

x += xSpeed;

// vertical collision

if (place_meeting(x, y+ySpeed, objWall)) {
	while (!place_meeting(x, y+sign(ySpeed), objWall)) {
		y += sign(ySpeed);
	}
	ySpeed = 0;
}

y += ySpeed;