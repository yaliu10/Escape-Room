extends PanelContainer

@export var item: Item = null:
	set(value):
		item = value
		if value != null:
			$TextureRect.texture = value.texture

func _on_mouse_entered() -> void:
	if item == null:
		return

	ItemInfo.ItemPopup(Rect2i(Vector2i(global_position), Vector2i(size)), null)


func _on_mouse_exited() -> void:
	ItemInfo.HideItemPopup(Rect2i(Vector2i(global_position), Vector2i(size)), item)
