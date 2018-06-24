/// @description Initialize Player Properties

// Physics Vars
xSpeed = 0
ySpeed = 0
normGrav = 0.15
fastGrav = 0.5
walkSpeed = 2.5
jumpSpeed = -4
accel = 0.25
fric = 0.25

// Stateful Vars
PLAYER_STAND = "PLAYER_STAND"
PLAYER_CROUCH = "PLAYER_CROUCH"
PLAYER_CROUCH_WALK = "PLAYER_CROUCH_WALK"
PLAYER_RUN = "PLAYER_RUN"
PLAYER_IN_AIR = "PLAYER_IN_AIR"
PLAYER_FAST_FALL = "PLAYER_FAST_FALL"
currState = PLAYER_STAND

// Attack Vars
fireDelay = 0

// Player Input Vars
keyLeft = false
keyRight = false
keyJump = false
keyDown = false
keyAttack = false

// Animation Vars
buffer = 0.1


