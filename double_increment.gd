extends Label


func _on_double_increment_button_pressed() -> void:
	if Globalcounter.count >= 1000 or not (Globalcounter.count - 1000) < 0:
		Globalcounter.countdecrease(1000)
		Globalcounter.change_increment(Globalcounter.increment*2)
	pass # Replace with function body.
