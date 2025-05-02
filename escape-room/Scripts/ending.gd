extends Control

var detail_selected = false

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$TextureRect.visible = false
			detail_selected = false

func _on_forward_button_pressed() -> void:
	$Placeholder.visible = true


func _on_nd_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$Placeholder.visible = false
			detail_selected = false

func _on_nd_button_pressed() -> void:
	$Placeholder2.visible = true


func _on_rd_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$Placeholder2.visible = false
			detail_selected = false


func _on_rd_button_pressed() -> void:
	pass
