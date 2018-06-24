

if (argument0.ySpeed > - argument0.buffer) && (argument0.ySpeed < argument0.buffer) {
	argument0.image_index = 1;
} else if (sign(argument0.ySpeed) == -1) {
	argument0.image_index = 0;
} else {
	argument0.image_index = 2;
}