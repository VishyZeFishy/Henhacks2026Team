extends Node

var stage = 2

var wood = 0

var level = 1

var power = 1

var min = 1
var max = 6


func increase_rate(cost, num):
	if wood >= cost:
		wood = wood - cost
		power = power*num
		level += 1
		min = pow(2, level)
		max = pow(2, level) + level*power
	
func get_upgrade_cost_2(growth) -> int:
	return int(30 * pow(level, growth/2))

func get_upgrade_cost_4(growth) -> int:
	return int(500 * pow(level, growth/2))
	
func wood_increase():
	wood += randi_range(min, max)
