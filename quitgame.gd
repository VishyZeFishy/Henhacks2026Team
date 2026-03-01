extends Label

func _on_quitbutton_pressed() -> void:
	if Globalcounter.count >= 50 or not (Globalcounter.count - 50) < 0:
		get_tree().quit()
	
	pass 
