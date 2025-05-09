extends Node2D

var detail_selected = false

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$Sprite2D.visible = false
			detail_selected = false

func _on_forward_button_pressed() -> void:
	$Sprite2D2.visible = true


func _on_nd_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$Sprite2D.visible = false
			detail_selected = false

func _on_nd_button_pressed() -> void:
	$Sprite2D3.visible = true


func _on_rd_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !detail_selected:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			$Sprite2D3.visible = false
			detail_selected = false
