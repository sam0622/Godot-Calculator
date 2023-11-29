extends Control
signal button_pressed()
signal operation_pressed()

func _on_button_pressed(number):# Handles number signals
	print(number)
	match number:
		1:
			button_pressed.emit(1)
		2:
			button_pressed.emit(2)
		3:
			button_pressed.emit(3)
		4:
			button_pressed.emit(4)
		5:
			button_pressed.emit(5)
		6:
			button_pressed.emit(6)
		7:
			button_pressed.emit(7)
		8:
			button_pressed.emit(8)
		9:
			button_pressed.emit(9)
		0: 
			button_pressed.emit(0)


func _on_operation_button_pressed(operation):# Handles operation signals
	match operation:
		"addition":
			operation_pressed.emit("+")
		"subtraction":
			operation_pressed.emit("-")
		"multiplication":
			operation_pressed.emit("*")
		"division":
			operation_pressed.emit("/")
			
