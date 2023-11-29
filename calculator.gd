extends Control
var input_1 = null
var input_2 = null
var result = null
var operation = null



func _on_calculate_button_pressed():
	if operation == "+":
		result = input_1 + input_2
	elif operation == "-":
		result = input_1 - input_2
	elif operation == "*":
		result = input_1 * input_2
	elif operation == "/":
		result = input_1 / input_2
	$Result.text = str(result)
	input_1 = null
	input_2 = null
	operation = null
	

