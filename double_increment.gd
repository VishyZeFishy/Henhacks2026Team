extends Label

@onready var quadruple: Label = $"."

var cost4 = Global.get_upgrade_cost_4(4)

func _process(delta) -> void:
	cost4 = Global.get_upgrade_cost_4(4)
	quadruple.text = "Double Increment \nCOST: "+str(cost4)

	
func _on_double_increment_button_pressed() -> void:
	Global.increase_rate(cost4,4)
	print(cost4)
	print(Global.power)
