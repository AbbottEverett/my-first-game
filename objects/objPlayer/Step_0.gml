/// @description Execute Character Logic Each Frame

// Check Player Inputs
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(ord("W"));

var moveDir = keyRight - keyLeft;

hSpeed = moveDir * walkSpeed;

// horizontal collision
if (place_meeting(x+hSpeed, y, objWall)) {
	while (!place_meeting(x+sign(hSpeed), y, objWall)) {
		x += sign(hSpeed);
	}
	hSpeed = 0;
}

x += hSpeed;

// vertical collision

if (place_meeting(x, y+vSpeed, objWall)) {
	while (!place_meeting(x, y+sign(vSpeed), objWall)) {
		y += sign(vSpeed);
	}
	vSpeed = 0;
}

y += vSpeed;