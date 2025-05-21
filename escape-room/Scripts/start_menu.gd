extends Control


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/beginning_dialogue.tscn")
	$ButtonSound.play()


func _on_quit_button_pressed() -> void:
	get_tree().quit()
	$ButtonSound.play()


func _on_credit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/memory_pieces.tscn")
	$ButtonSound.play()
