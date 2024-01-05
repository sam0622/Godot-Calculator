extends Control
signal button_pressed()
signal operation_pressed()

func _on_button_pressed(number):# Handles number signals
	print(number)
	button_pressed.emit(number)


func _on_operation_button_pressed(operation):# Handles operation signals
	match operation:# i could make this one line but i aint changing args
		"addition":
			operation_pressed.emit("+")
		"subtraction":
			operation_pressed.emit("-")
		"multiplication":
			operation_pressed.emit("*")
		"division":
			operation_pressed.emit("/")
			
