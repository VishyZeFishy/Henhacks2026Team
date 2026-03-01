extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 
	
func _on_button_pressed() -> void:
	print(Globalcounter.count)
	Globalcounter.countincrease()
	self.text = str(Globalcounter.count)
	pass # Replace with function body.
