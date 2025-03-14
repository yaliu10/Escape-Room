extends TextureRect

@onready var scroll_container: ScrollContainer = $ScrollContainer

func _on_left_arrow_button_pressed() -> void:
	var value = scroll_container.scroll_horizontal
	scroll_container.set_h_scroll(value - 200)

func _on_right_arrow_button_pressed() -> void:
	var value = scroll_container.scroll_horizontal
	scroll_container.set_h_scroll(value + 200)

func _on_briefcase_button_pressed() -> void:
	self.visible = !self.visible
