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

// Animation Stuff



if (!onGround) {
	sprite_index = sprPlayerAir;
	image_speed = 0;
	
	// Picks frame from speed
	if (sign(ySpeed) > 0) image_index = 1; else image_index = 0;
	
} else {
	image_speed = 1;
	if (xSpeed == 0) {
		sprite_index = sprPlayer;
	} else {
		sprite_index = sprPlayerWalk;
	}
}

if (xSpeed != 0) image_xscale = sign(xSpeed)
