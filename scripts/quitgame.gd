extends Label

func _on_quitbutton_pressed() -> void:
	if Global.wood >= 100000:
		var path_to_node = "res://scenes/endscene.tscn"
		get_tree().change_scene_to_file(path_to_node)
	
