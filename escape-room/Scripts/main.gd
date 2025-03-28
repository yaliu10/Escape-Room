extends Control

func _on_up_button_pressed() -> void:
	var game = preload ("res://Scenes/wall_1.tscn").instantiate()
	get_tree().get_root().add_child(game)

func _on_right_button_pressed() -> void:
	var game = preload ("res://Scenes/right_wall.tscn").instantiate()
	get_tree().get_root().add_child(game)

func _on_left_button_pressed() -> void:
	var game = preload ("res://Scenes/left_wall.tscn").instantiate()
	get_tree().get_root().add_child(game)



func _on_text_object_pressed() -> void:
	var game = preload ("res://Scenes/dialogue.tscn").instantiate()
	get_tree().get_root().add_child(game)


func _on_pause_icon_pressed() -> void:
	print("Pause button clicked!")  # Check if this appears in the Output
	var pause_screen = preload("res://Scenes/pause_screen.tscn").instantiate()
	if pause_screen:
		print("Pause scene loaded successfully!")  # Check if this appears
		get_tree().get_root().add_child(pause_screen)
		get_tree().paused = true  # Pause the game
	else:
		print("Error: Failed to load pause screen!")  # Check if this appears
