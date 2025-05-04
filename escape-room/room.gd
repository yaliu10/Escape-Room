extends Node2D

var cursor = preload("res://art/IMG_2835.PNG")
var grab = preload("res://art/IMG_2834.PNG")

var slot_1_filled = false
var slot_2_filled = false
var slot_3_filled = false
var slot_4_filled = false
var slot_5_filled = false


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
	
	
func fill_slot(slot):
	match slot:
		1: slot_1_filled = true
		2: slot_2_filled = true
		3: slot_3_filled = true
		4: slot_4_filled = true
		5: slot_5_filled = true

func empty_slot(slot):
	match slot:
		1: slot_1_filled = false
		2: slot_2_filled = false
		3: slot_3_filled = false
		4: slot_4_filled = false
		5: slot_5_filled = false
		
func choose_slot(item):
	var chosen_slot = 1
	if !slot_1_filled:
		chosen_slot = $Slot1.global_position
		slot_1_filled = true
		item.drop_location_id = 1
		
	elif !slot_2_filled:
		chosen_slot = $Slot2.global_position
		slot_2_filled = true
		item.drop_location_id = 2
	elif !slot_3_filled:
		chosen_slot = $Slot3.global_position
		slot_3_filled = true
		item.drop_location_id = 3
		
	elif !slot_4_filled:
		chosen_slot = $Slot4.global_position
		slot_4_filled = true
		item.drop_location_id = 4
		
	elif !slot_5_filled:
		chosen_slot = $Slot5.global_position
		slot_5_filled = true
		item.drop_location_id = 5
		
	return chosen_slot

func set_drop_location(item):
	var drop_location
	match item.drop_location_id:
		0: drop_location = item.global_position
		1: drop_location = $Slot1.global_position
		2: drop_location = $Slot2.global_position
		3: drop_location = $Slot3.global_position
		4: drop_location = $Slot4.global_position
		5: drop_location = $Slot5.global_position
	return drop_location


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


func _on_slot_1_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item") and !slot_1_filled:
		empty_slot(area.get_parent().drop_location_id)
		area.get_parent().drop_location_id = 1
		fill_slot(area.get_parent().drop_location_id)

func _on_slot_2_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item") and !slot_2_filled:
		empty_slot(area.get_parent().drop_location_id)
		area.get_parent().drop_location_id = 2
		fill_slot(area.get_parent().drop_location_id)

func _on_slot_3_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item") and !slot_3_filled:
		empty_slot(area.get_parent().drop_location_id)
		area.get_parent().drop_location_id = 3
		fill_slot(area.get_parent().drop_location_id)

func _on_slot_4_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item") and !slot_4_filled:
		empty_slot(area.get_parent().drop_location_id)
		area.get_parent().drop_location_id = 4
		fill_slot(area.get_parent().drop_location_id)
		
func _on_slot_5_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item") and !slot_5_filled:
		empty_slot(area.get_parent().drop_location_id)
		area.get_parent().drop_location_id = 5
		fill_slot(area.get_parent().drop_location_id)


#need to hide visibility of objects when switching rooms
func _on_test_interact_area_area_entered(area: Area2D) -> void: #keep for example but delete later
	if area.is_in_group("item"):
		if area.get_parent().item_id == 1:
			$Open.visible = false
			$Closed.visible = true
			$Key.visible = true
			#testitem_used = true
			
			empty_slot(area.get_parent().drop_location_id)
			area.get_parent().queue_free()
			Input.set_custom_mouse_cursor(cursor)


func _on_river_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item"):
			if area.get_parent().item_id == 1:
				$"In Left Painting/Filled Bucket".visible = true
				
				empty_slot(area.get_parent().drop_location_id)
				area.get_parent().queue_free()
				Input.set_custom_mouse_cursor(cursor)


func _on_closed_flower_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item"):
			if area.get_parent().item_id == 2:
				$"In Right Painting/Open Flower".visible = true
				$"In Right Painting/Closed Flower".queue_free()
				$"In Right Painting/Weapon Key".visible = true
				
				empty_slot(area.get_parent().drop_location_id)
				area.get_parent().queue_free()
				Input.set_custom_mouse_cursor(cursor)


func _on_closed_trap_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"In Left Painting/Open Trap".visible = true
		$"In Left Painting/Closed Trap".queue_free()
		$"In Left Painting/River Key". visible = true


func _on_closed_toolbox_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		$"In Right Painting/Open Toolbox".visible = true
		$"In Right Painting/Closed Toolbox".queue_free()
		$"In Right Painting/Chisel".visible = true


func _on_brick_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("item"):
			if area.get_parent().item_id == 5:
				$"In Front Painting/Well Key".visible = true
				$"In Front Painting/Brick".queue_free()
				
				empty_slot(area.get_parent().drop_location_id)
				area.get_parent().queue_free()
				Input.set_custom_mouse_cursor(cursor)
