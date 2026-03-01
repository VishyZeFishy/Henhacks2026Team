extends Area2D

@export var tree: Sprite2D

@onready var game_manager: Node = %GameManager
@export var sapling: Sprite2D
@export var soil: Sprite2D

var stage = 2

func _ready():
	tree.show()
	soil.hide()
	sapling.hide()

func _process(delta):
	if stage == 1:
		tree.hide()
		soil.hide()
		sapling.show()
	elif stage == 2:
		tree.show()
		soil.hide()
		sapling.hide()
	else:
		tree.hide()
		soil.show()
		sapling.hide()
		stage = 0
		Global.wood += 1

func _on_body_entered(body: Node2D) -> void:
	if body.has_method("interaction"):
		Global.stage = stage
		stage += 1
		body.interaction()
	
	
