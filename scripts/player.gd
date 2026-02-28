extends CharacterBody2D

@export var current_tool: DataTypes.Action = DataTypes.Action.Idle
@export var animate: AnimatedSprite2D


const SPEED = 130.0
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
		
	if x_direction == 0 and y_direction == 0:
		animate.play("idle")
		
	if velocity.y < 0:
		animate.play("up")
	elif velocity.y > 0:
		animate.play("down")
	
	if velocity.x < 0:
		animate.play("left")
	elif velocity.x > 0:
		animate.play("right")
	#if (not velocity.x or not velocity.y):
	#	$AnimatedSprite2D2.play("idle")
	
	
	if Input.is_action_just_pressed("chop"):
		$AnimatedSprite2D2.play("chopping")
		
	if Input.is_action_just_pressed("water"):
		$AnimatedSprite2D2.play("watering")
		
	if Input.is_action_just_pressed("plant"):
		$AnimatedSprite2D2.play("planting")

	move_and_slide()
