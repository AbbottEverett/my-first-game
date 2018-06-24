/// @description Execute Character Logic Each Frame

CheckPlayerInputs(self)

var moveDir = keyRight - keyLeft;

MovePlayer(self, moveDir)

ApplyGravity(self)

onGround = place_meeting(x, y+1, objWall)

HandlePlayerJump(self)

// Attack
fireDelay = fireDelay - 1;

HandlePlayerAttack(self)

CollisionCheck(self, objWall)

x += xSpeed;
y += ySpeed;

SetPlayerAnimationState(self, moveDir)
