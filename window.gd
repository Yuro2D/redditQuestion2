extends Node
 
var middle
func _ready() -> void:
	get_viewport().get_window().unresizable = true
	DisplayServer.window_set_size(Vector2(1152,648))
	middle = DisplayServer.window_get_position()
func _input(event: InputEvent) -> void:
	if (event.is_action_pressed("F4")):
		match DisplayServer.window_get_mode():
			DisplayServer.WINDOW_MODE_WINDOWED:
				get_viewport().get_window().unresizable = false
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
			DisplayServer.WINDOW_MODE_MAXIMIZED:
				get_viewport().get_window().unresizable = true
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.WINDOW_MODE_FULLSCREEN: 
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
				DisplayServer.window_set_size(Vector2(1152,648))
				DisplayServer.window_set_position(middle)
