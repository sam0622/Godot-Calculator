extends Control
var input_1 = null
var input_2 = null
var result = null
var operation = null


func _on_calculate_button_pressed():# Preforms operations on inputs
	if operation == "+":
		result = input_1 + input_2
	elif operation == "-":
		result = input_1 - input_2
	elif operation == "*":
		result = input_1 * input_2
	elif operation == "/":
		result = float(input_1) / float(input_2)
	$Result.text = str(result)
	input_1 = null
	input_2 = null
	operation = null


func _on_number_buttons_button_pressed(number):# Handles changing and displaying equation
	if operation == null:
		input_1 = number
		$Input.text = ""
		$Input.text += str(number)
	else:
		input_2 = number
		$Input.text += str(number)




func _on_calculator_buttons_operation_pressed(string):
	$Input.text += string
	operation = string
