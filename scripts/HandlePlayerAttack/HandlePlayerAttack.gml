/// Handles Player attack logic
// argument0 is player instance we are working with

if (argument0.keyAttack) && (argument0.fireDelay < 1) {
	with(instance_create_layer(argument0.x+(argument0.image_xscale * 5),argument0.y-3,"Attack", objAttack)) {
		speed = 4 * argument0.image_xscale;
		direction = argument0.image_angle + random_range(-10, 15)
		argument0.fireDelay = 5
	}
}