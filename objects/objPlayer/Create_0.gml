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

// Attack Vars
shield = undefined

// Player Input Vars
keyLeft = 0
keyRight = 0
keyJump = 0
keyDown = 0
keyAttack = 0
keyShield = 0

// Jump vars
canJump = 0

// Stateful Vars
PLAYER_STAND = "PLAYER_STAND"
PLAYER_CROUCH = "PLAYER_CROUCH"
PLAYER_SHIELD = "PLAYER_SHIELD"
PLAYER_RUN = "PLAYER_RUN"
PLAYER_IN_AIR = "PLAYER_IN_AIR"
PLAYER_FAST_FALL = "PLAYER_FAST_FALL"
currState = PLAYER_STAND

// Animation Vars
buffer = 0.1


