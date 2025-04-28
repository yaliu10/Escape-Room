extends Node2D

var cursor = preload("res://art/IMG_2835.PNG")

var left_wall_selected = false
var right_wall_selected = false
var front_wall_selected = false


func change_cursor():
	Input.set_custom_mouse_cursor(cursor)
	
func change_cursor_back():
	Input.set_custom_mouse_cursor(null)

#left wall selection
func _on_left_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Left Wall".visible = false
		left_wall_selected = false
func _on_left_arrow_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Left Wall".visible = true
		left_wall_selected = true

#right wall selection
func _on_right_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Right Wall".visible = false
		right_wall_selected = false
func _on_right_arrow_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Right Wall".visible = true
		right_wall_selected = true
		
#front wall selection
func _on_front_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Front Wall".visible = false
		front_wall_selected = false
func _on_front_arrow_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Front Wall".visible = true
		front_wall_selected = true
