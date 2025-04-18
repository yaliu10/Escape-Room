extends TextureRect

@onready var item: Button = %Item
var preview_texture
var key: Texture2D

func _on_item_pressed() -> void:
	key = item.get_button_icon()

func _get_drag_data(at_position: Vector2) -> Variant:
	
	preview_texture.texture = texture
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(90,90)
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	set_drag_preview(preview)
	texture = null
	
	return preview_texture.texture

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return data is Texture2D
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	texture = data
