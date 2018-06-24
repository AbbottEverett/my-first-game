/// Checks for Player Inputs
/// argument0 player instance to check

argument0.keyLeft = keyboard_check(ord("A"));
argument0.keyRight = keyboard_check(ord("D"));
argument0.keyJump = keyboard_check_pressed(ord("J"));
argument0.keyJumpHeld = keyboard_check(ord("J"));
argument0.keyAttack = keyboard_check(vk_space);
argument0.keyDown = keyboard_check(ord("S"));
argument0.keyShield = keyboard_check(ord("K"))