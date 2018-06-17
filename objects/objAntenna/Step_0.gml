/// @description Position Antenna and Animation Logic

// Initialize Vars
offset = 9;

// Adjust animation settings
if (objPlayer.xSpeed != 0) image_xscale = sign(objPlayer.xSpeed);

if (!objPlayer.onGround) {
	// Turn off Animation
	sprite_index = sprAntennaAir;
	image_speed = 0;
	// Picks frame from speed
	if (sign(objPlayer.ySpeed) > 0) image_index = 1; else image_index = 0;
} else {
	if (objPlayer.xSpeed == 0) {
		sprite_index = sprAntenna;
		image_speed = 0;
		image_index = 0; 
	} else {
		sprite_index = sprAntennaRun;
		image_speed = 1;
		
	}
}

// Adjust Position
x = objPlayer.x;
y = objPlayer.y - offset;
