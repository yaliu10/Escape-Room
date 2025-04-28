extends Node2D

var cursor = preload("res://art/IMG_2835.PNG")


#right now the same variable is being used to check every wall, 
#so there may be a bug where the return buttons are overlapping
#var left_wall_selected = false
#var right_wall_selected = false
#var front_wall_selected = false

var wall_selected = false
var painting_selected = false

#connect to areas of any interactable objects
func change_cursor():
	if !wall_selected:
		Input.set_custom_mouse_cursor(cursor)
		
func change_cursor_back():
	if !wall_selected:
		Input.set_custom_mouse_cursor(null)


#the two following functions are for anything interactable within the selected wall
func change_cursor_in_selection():
	if !painting_selected:
		Input.set_custom_mouse_cursor(cursor)
	
func change_cursor_back_in_selection():
	if !painting_selected:
		Input.set_custom_mouse_cursor(null)


#the two following functions are for anything interactable within the paintings
func change_cursor_in_painting():
	Input.set_custom_mouse_cursor(cursor)
	
func change_cursor_back_in_painting():
	Input.set_custom_mouse_cursor(null)
	
#left wall selection
func _on_left_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Left Wall".visible = false
		wall_selected = false
func _on_left_arrow_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !wall_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"Left Wall".visible = true
			wall_selected = true


#right wall selection
func _on_right_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Right Wall".visible = false
		wall_selected = false
func _on_right_arrow_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !wall_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"Right Wall".visible = true
			wall_selected = true
			
			
#front wall selection
func _on_front_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"Front Wall".visible = false
		wall_selected = false
func _on_front_arrow_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !wall_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"Front Wall".visible = true
			wall_selected = true


#left painting slection
func _on_left_painting_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"In Left Painting".visible = false
			painting_selected = false
func _on_left_painting_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !painting_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"In Left Painting".visible = true
			painting_selected = true


#right painting slection
func _on_right_painting_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"In Right Painting".visible = false
			painting_selected = false
func _on_right_painting_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !painting_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"In Right Painting".visible = true
			painting_selected = true


#front painting slection
func _on_front_painting_return_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"In Front Painting".visible = false
			painting_selected = false
func _on_front_painting_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !painting_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"In Front Painting".visible = true
			painting_selected = true
