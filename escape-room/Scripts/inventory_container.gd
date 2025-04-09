extends TextureRect

@onready var scroll_container: ScrollContainer = $ScrollContainer
@onready var briefcase_button: Button = %"Briefcase Button"
const SlotClass = preload("res://Scenes/slot.gd")
var temp_item_texture = null
var current_slot = null
var next_slot = null

func _ready() -> void:
	for h_slot in scroll_container.get_node("HBoxContainer").get_children():
		h_slot.connect("gui_input")

func _on_left_arrow_button_pressed() -> void:
	var value = scroll_container.scroll_horizontal
	scroll_container.set_h_scroll(value - 200)

func _on_right_arrow_button_pressed() -> void:
	var value = scroll_container.scroll_horizontal
	scroll_container.set_h_scroll(value + 200)

func _on_briefcase_button_pressed() -> void:
	self.visible = !self.visible
