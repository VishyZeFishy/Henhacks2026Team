extends Label

func _on_quitbutton_pressed() -> void:
	if Global.wood >= 100000:
		get_tree().quit()
	
