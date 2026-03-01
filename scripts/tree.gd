extends Area2D

@export var tree: Sprite2D

@onready var game_manager: Node = %GameManager
@export var sapling: Sprite2D
@export var soil: Sprite2D

var stage = 2


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	
func _on_collision_shape_2d_hidden() -> void:
	stage += 1
	if stage == 1:
		tree.hide()
		sapling.show()
		soil.hide()
	if stage == 2:
		tree.show()
		sapling.hide()
		soil.hide()
	if stage == 3:
		stage = 0
		tree.hide()
		sapling.hide()
		soil.show()
