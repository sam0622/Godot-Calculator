extends Control
signal button_pressed(string)



func _on_button_pressed(extra_arg_0):
	match extra_arg_0:
		case "1":
			button_pressed.emit("1")
		case "2": button_pressed.emit("2")
			
