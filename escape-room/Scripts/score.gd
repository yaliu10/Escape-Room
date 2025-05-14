extends Label

func _process(delta: float) -> void:
	self.text = str(Global.score)
	

func _on_button_pressed() -> void: #example placeholder
	Global.score += 1
	$"../Button".queue_free()


func _on_mem_1_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../Mem1".queue_free()
		$"../Mem1 Note".visible = true

func _on_meme_2_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../Front Wall/Mem 2".queue_free()
		$"../Front Wall/Mem 2 Note".visible = true

func _on_mem_3_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../Left Wall/Mem 3".queue_free()
		$"../Left Wall/Mem 3 Note".visible = true

func _on_mem_4_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../In Left Painting/Mem 4".queue_free()
		$"../In Left Painting/Mem 4 Note".visible = true

func _on_mem_5_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../Flower Room/Mem 5".queue_free()
		$"../Flower Room/Mem 5 Note".visible = true

func _on_mem_6_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../In Front Painting/Mem 6".queue_free()
		$"../In Front Painting/Mem 6 Note".visible = true

func _on_mem_7_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../Right Wall/Mem 7".queue_free()
		$"../Right Wall/Mem 7 Note".visible = true

func _on_mem_8_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		Global.score += 1
		$"../In Right Painting/Mem 8".queue_free()
		$"../In Right Painting/Mem 8 Note".visible = true
