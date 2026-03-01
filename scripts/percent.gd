extends Label

@export var percent: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	percent.text = str(Global.wood/42000000*100)+" %"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
