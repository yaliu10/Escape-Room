extends Sprite2D

var dragging = false
var grab_cursor = preload("res://art/ph-slot.PNG")#placeholder
var picked_up = false
var drop_location_id = 0
var drop_location
@export var item_id = 1

func _physics_process(delta: float) -> void:
	if dragging:
		global_position = lerp(global_position, get_global_mouse_position(), 30 * delta)
