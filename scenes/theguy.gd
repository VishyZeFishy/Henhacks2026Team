extends CharacterBody2D

@onready var animate: AnimatedSprite2D = $AnimatedSprite2D2
@onready var theguy: CharacterBody2D = $"."
@export var timer: Timer

var is_interacting = false

func _on_ready():
	animate.play("idle")

const SPEED = 130.0
const JUMP_VELOCITY = -400.0

var y_direction
var x_direction
	
func _physics_process(delta: float) -> void:
	if is_interacting:
		velocity = Vector2.ZERO
		move_and_slide()
		return
		
	y_direction = Input.get_axis("up", "down")
	x_direction = Input.get_axis("left", "right")
		
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
	move_and_slide()


func interaction() -> void:
		
	is_interacting = true
	if Global.stage == 0:
		animate.play("planting")
	elif Global.stage == 1:
		animate.play("watering")
	else:
		animate.play("chopping")
	timer.start()

func _on_timer_timeout() -> void:
	is_interacting = false
