extends Node2D

var detail_selected = false

func _on_st_button_pressed() -> void:
	$"2ndScene".visible = true

func _on_nd_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"2ndScene".visible = false
			detail_selected = false

func _on_nd_button_pressed() -> void:
	$"3rdScene".visible = true


func _on_rd_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$"3rdScene".visible = false
			detail_selected = false
