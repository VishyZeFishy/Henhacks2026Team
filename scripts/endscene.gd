extends Node2D

func _on_credits_pressed() -> void:
	var path_to_node = "res://scenes/title.tscn"
	get_tree().change_scene_to_file(path_to_node)


func _on_playagain_pressed() -> void:
	var path_to_node = "res://world.tscn"
	get_tree().change_scene_to_file(path_to_node)
