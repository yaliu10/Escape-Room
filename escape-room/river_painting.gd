extends Node2D

var cursor = preload("res://icon.svg")#placeholder

func change_cursor():
	Input.set_custom_mouse_cursor(cursor)
	
func change_cursor_back():
	Input.set_custom_mouse_cursor(null)


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$Sprite2D2.visible = false
		$Sprite2D.visible = true

func _on_closed_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$Sprite2D2.visible = true
		$Sprite2D.visible = false
