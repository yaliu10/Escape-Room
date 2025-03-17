extends Control

func resume():
	get_tree().paused = false
	
func pause():
	get_tree().paused = true
	

func return_to_start():
	var start = preload("res://Scenes/main.tscn")
	get_tree().get_root().add_child(start)
