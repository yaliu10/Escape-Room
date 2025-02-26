extends Control

func _on_up_button_pressed() -> void:
	var game = preload ("res://wall_1.tscn").instantiate()
	get_tree().get_root().add_child(game)

func _on_right_button_pressed() -> void:
	var game = preload ("res://right_wall.tscn").instantiate()
	get_tree().get_root().add_child(game)

func _on_left_button_pressed() -> void:
	var game = preload ("res://left_wall.tscn").instantiate()
	get_tree().get_root().add_child(game)
