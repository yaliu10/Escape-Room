extends TextureRect

@onready var scroll_container: ScrollContainer = $ScrollContainer
@onready var movable_item : Node2D = $MovableItem
const SlotClass = preload("res://Scripts/slot.gd")
var temp_item_texture = null
var current_slot = null
var next_slot = null
var place_item : bool = false

func _ready() -> void:
	for h_slot in scroll_container.get_node("HBoxContainer").get_children():
		h_slot.connect("gui_input", self, "slot_gui_input", [h_slot])

func slot_gui_input(event: InputEvent, slot: SlotClass):
	if (event is InputEventMouseButton):
		if (event.button_index) == BUTTON_LEFT && event.pressed:
			temp_item_texture = slot.item.get_texture()
			current_slot = slot
			movable_item.visible = true

			movable_item.get_node("Item").set_texture(temp_item_texture)
			movable_item.global_position = current_slot.item.get_global_transform().origin
			current_slot.pick_from_slot()
		if (event.button_index) == BUTTON_LEFT && !event.pressed:
			movable_item.visible = false
			current_slot.put_into_slot(temp_item_texture)

func _on_left_arrow_button_pressed() -> void:
	var value = scroll_container.scroll_horizontal
	scroll_container.set_h_scroll(value - 200)

func _on_right_arrow_button_pressed() -> void:
	var value = scroll_container.scroll_horizontal
	scroll_container.set_h_scroll(value + 200)

func _on_briefcase_button_pressed() -> void:
	self.visible = !self.visible
