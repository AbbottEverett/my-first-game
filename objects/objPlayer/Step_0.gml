/// @description Execute Character Logic Each Frame

// Defines Player Controls
CheckPlayerInputs(id)

// Sets the move direction for the player at this instance
var moveDir = keyRight - keyLeft
var onGround = place_meeting(x, y+1, objWall)

if (onGround) {
	canJump = 10; 
	jumpCount = 2; 
} else canJump--

switch(currState) {
	case PLAYER_STAND: {
		sprite_index = sprPlayer
		ySpeed += normGrav
		MovePlayer(id, moveDir)
		HandlePlayerJump(id, canJump)
		if (!onGround) currState = PLAYER_IN_AIR
		if (keyDown) currState = PLAYER_CROUCH
		if (xSpeed != 0) currState = PLAYER_RUN
		if (keyShield) currState = PLAYER_SHIELD
		break
	}
	case PLAYER_CROUCH: {
		if (xSpeed == 0) sprite_index = sprPlayerCrouch else sprite_index = sprPlayerCrouchWalk
		ySpeed += normGrav
		MovePlayer(id, moveDir)
		HandlePlayerJump(id, canJump)
		if (!onGround) currState = PLAYER_IN_AIR
		if (!keyDown) currState = PLAYER_STAND
		break
	}
	case PLAYER_SHIELD: {
		sprite_index = sprPlayerShield
		if (shield == undefined) shield = instance_create_layer(x, y, "Attack", objShield)
		xSpeed = 0
		if (!keyShield) {
			currState = PLAYER_STAND
			instance_destroy(shield.id)
			shield = undefined
		}
		break
	}
	case PLAYER_RUN: {
		sprite_index = sprPlayerWalk
		ySpeed += normGrav
		MovePlayer(id, moveDir)
		HandlePlayerJump(id, canJump)
		if (!onGround) currState = PLAYER_IN_AIR
		if (keyDown) currState = PLAYER_CROUCH
		if (xSpeed == 0) currState = PLAYER_STAND
		break
	}
	case PLAYER_IN_AIR: {
		sprite_index = sprPlayerAir
		ySpeed += normGrav
		MovePlayer(id, moveDir)
		HandlePlayerJump(id, canJump)
		if (!onGround) && (keyDown)  currState = PLAYER_FAST_FALL
		if (onGround) && (xSpeed == 0) currState = PLAYER_STAND
		if (onGround) && (xSpeed != 0) currState = PLAYER_RUN
		break
	}
	case PLAYER_FAST_FALL: {
		sprite_index = sprFastFall
		ySpeed += fastGrav
		MovePlayer(id, moveDir)
		if (onGround) currState = PLAYER_CROUCH
		break
	}
}

// Handle Collisions
CollisionCheck(id, objWall)

x += xSpeed
y += ySpeed

if (xSpeed != 0) image_xscale = sign(xSpeed)

