extends Node2D

var color3 = 255

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasModulate.color("ffffff") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	$CanvasModulate.color(255, 255, color3)
	color3 = color3 - 1
	pass
