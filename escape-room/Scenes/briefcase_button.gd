extends Button

var open = preload("res://art/ph-opened case.PNG")
var closed = preload("res://art/ph-closed case.PNG")

var is_open: bool = false  

func _ready() -> void:
	set_button_icon(closed) 
	connect("pressed", _on_pressed)

func _on_pressed() -> void:
	if not is_open:  
		set_button_icon(open)
		is_open = true
	else:
		set_button_icon(closed)
		is_open = false
		
