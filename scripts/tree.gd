extends Area2D

@export var tree: Sprite2D

@onready var game_manager: Node = %GameManager
@export var sapling: Sprite2D
@export var soil: Sprite2D

var stage = 2

func _ready():
	print("Ima  atree")

func _process(delta):
	pass

func _on_body_entered(body: Node2D) -> void:
	print ("INTERACTED")
	#body.get_node("Character2D").queue_free()
	
