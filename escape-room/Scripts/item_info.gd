extends Control

func ItemPopup(slot: Rect2i, item: Item):
	if item != null:
		set_value(item)
		%ItemPopup.size = Vector2i.ZERO

	var mouse_pos = get_viewport().get_mouse_position()
	var correction
	var padding = 4
	
	if mouse_pos.x <= get_viewport_rect().size.x/2:
		correction = Vector2i(slot.size.x + padding, 0)
	else:
		correction = Vector2i(%ItemPopup.size.x + padding, 0)
	
	%ItemPopup.popup(Rect2i(slot.position + correction, %ItemPopup.size))


func HideItemPopup(slot, item):
	%ItemPopup.hide()


func set_value(item: Item):
	%Name.text = item.name
	%Information.text = item.description
