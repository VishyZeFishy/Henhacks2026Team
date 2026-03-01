extends Label
@export var double: Label

var cost2 = Global.get_upgrade_cost_2(2)

func _process(delta) -> void:
	cost2 = Global.get_upgrade_cost_2(2)
	double.text = "Double Increment \nCOST: "+str(cost2)

func _on_singleincrement_pressed() -> void:
	Global.increase_rate(cost2,2)
	print(cost2)
	print(Global.power)
