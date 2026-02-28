extends CharacterBody2D

@export var current_tool: DataTypes.Action = DataTypes.Action.Idle
@export var animate: AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	var y_direction := Input.get_axis("up", "down")
	var x_direction := Input.get_axis("left", "right")
		
	#Y DIRECTION
	if x_direction:
		velocity.x = x_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
		
	#Y DIRECTION
	if y_direction:
		velocity.y = y_direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
