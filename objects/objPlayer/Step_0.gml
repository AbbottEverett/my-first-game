/// @description Execute Character Logic Each Frame

// Check Player Inputs
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(ord("W"));

var moveDir = keyRight - keyLeft;

if (moveDir != 0) {
	xSpeed += moveDir * accel;
	xSpeed = clamp(xSpeed, -walkSpeed, walkSpeed);
} else {
	// Linear Interpolation
	xSpeed = lerp(xSpeed, 0, fric);
}

// Gravity
ySpeed += grav;

onGround = place_meeting(x, y+1, objWall)

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
buffer = 0.1

if (!onGround) {
	sprite_index = sprPlayerAir;
	image_speed = 0;
	
	// Picks frame from speed
	if (ySpeed > - buffer) && (ySpeed < buffer) {
		image_index = 1;
	} else if (sign(ySpeed) == -1) {
		image_index = 0;
	} else {
		image_index = 2;
	}
	
} else {
	image_speed = 1;
	
	if (xSpeed > -buffer) &&  (xSpeed < buffer) {
		sprite_index = sprPlayer;
	} else if (moveDir != 0) {
		sprite_index = sprPlayerWalk;
	} else {
		sprite_index = sprPlayerSlide;
	}
}

if (xSpeed != 0) image_xscale = sign(xSpeed)
