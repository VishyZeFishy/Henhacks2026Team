extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$SceneButton.pressed.connect(_on_button_pressed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_button_pressed():
	var path_to_node = "res://world.tscn"
	get_tree().change_scene_to_file(path_to_node)
