extends CanvasLayer

var _is_paused: bool = false:
	set(value):
		_is_paused = value
		get_tree().paused = _is_paused
		visible = _is_paused

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("pause"):
		_is_paused = !_is_paused

func _on_resume_button_pressed() -> void:
	_is_paused = false

func _on_quit_button_pressed() -> void:
	get_tree().quit()
