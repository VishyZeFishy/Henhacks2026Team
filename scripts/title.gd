extends Node2D


func _on_scene_button_2_pressed() -> void:
	var path_to_node = "res://scenes/credits.tscn"
	get_tree().change_scene_to_file(path_to_node)


func _on_restart_pressed() -> void:
	var path_to_node = "res://world.tscn"
	get_tree().change_scene_to_file(path_to_node)
