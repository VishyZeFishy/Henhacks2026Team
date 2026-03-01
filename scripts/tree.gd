extends Area2D

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass
	
@onready var sprite = $Sprite2D

enum GrowthStage { SOIL, SAPLING, TREE }

var stage = GrowthStage.SOIL

func get_stage():
	return stage

func grow1():
	if stage == GrowthStage.SOIL:
		stage = GrowthStage.SAPLING
		#
	
	elif stage == GrowthStage.SAPLING:
		stage = GrowthStage.TREE
		#
	
	else:
		stage = GrowthStage.SOIL
		#
		Global.wood += 1
