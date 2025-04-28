extends Sprite2D

var grab_cursor = preload("res://art/IMG_2834.PNG")
var hand_cursor = preload("res://art/IMG_2835.PNG")

var dragging = false
var picked_up = false
var drop_location_id = 0
var drop_location
var dropped = false
var timer_off = true

@export var item_id = 1

func _physics_process(delta: float) -> void:
	if dragging:
		global_position = lerp(global_position, get_global_mouse_position(), 30 * delta)
		dropped = false
		Input.set_custom_mouse_cursor(grab_cursor)
	else:
		if picked_up:
			if !dropped:
				drop_location = get_parent().set_drop_location(self)
				if timer_off:
					$Timer.start()
					timer_off = false
			global_position = lerp(global_position, drop_location, 20 * delta)

func _on_test_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if !picked_up and !dragging:
			global_position = get_parent().choose_slot(self)
			z_index = 10
			picked_up = true
		else:
			if event.pressed:
				dragging = true
			else:
				dragging = false

func _on_timer_timeout() -> void:
	dropped = true
	timer_off = true
