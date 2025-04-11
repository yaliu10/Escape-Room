extends Control

#@onready var ArtInfo: Control = $UI.get_node("ArtInfo")


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
