extends Label



func _on_singleincrement_pressed() -> void:
	if Globalcounter.count >= 50 or not (Globalcounter.count - 50) < 0:
		Globalcounter.countdecrease(50)
		Globalcounter.increaseincrement()
	pass # Replace with function body.
