extends Control
var input_1
var input_2
var result
var operation


func _on_calculate_button_pressed():# Preforms operations on inputs
	if operation == "+":
		result = input_1 + input_2
	elif operation == "-":
		result = input_1 - input_2
	elif operation == "*":
		result = input_1 * input_2
	elif operation == "/":
		result = float(input_1) / float(input_2)
	if operation == "/" and input_2 == 0:
		get_tree().quit()
	else:
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
