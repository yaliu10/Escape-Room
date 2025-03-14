extends Button

var open = preload("res://art/ph-opened case.PNG")
var closed = preload("res://art/ph-closed case.PNG")

func _process(delta: float) -> void:
	if (pressed):
		set_button_icon(open)
	else:
		set_button_icon(closed)
