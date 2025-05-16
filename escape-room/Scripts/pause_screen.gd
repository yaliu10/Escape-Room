extends Control

@export_file var restart_scene : String :
	set(value):
		if value == null:
			return
		restart_scene = value

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


func _on_pause_icon_pressed() -> void:
	_is_paused = !_is_paused


func _on_restart_button_pressed() -> void:
	if not restart_scene:
		push_error("No restart scene set on loading [RestartButton]")
	
	get_tree().change_scene_to_file(restart_scene)
