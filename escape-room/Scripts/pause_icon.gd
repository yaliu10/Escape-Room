extends TextureButton

@onready var pause_screen: CanvasLayer = %PauseScreen


func _ready():
	pressed.connect(_on_pressed)  # Godot 4.3 signal syntax

func _on_pressed():
	if pause_screen:
		pause_screen.is_paused = !pause_screen.is_paused
	else:
		# Fallback if reference fails
		get_tree().paused = !get_tree().paused
		printerr("PauseMenu reference not set")
