extends Node

var count := 0
var increment := 1

func countincrease() -> void:
	count = count + increment
	print(count)

func countdecrease(decrease) -> void:
	count = count - decrease
	print(count)
	
func change_increment(change) -> void:
	increment = change
