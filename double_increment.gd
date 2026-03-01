extends Label


func _on_double_increment_button_pressed() -> void:
	if Globalcounter.count >= 50:
		Globalcounter.countdecrease(50)
	Globalcounter.change_increment(Globalcounter.increment*2)
	pass # Replace with function body.
