extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.text = str(Global.score)
	

func _on_button_pressed() -> void:
	Global.score += 1
	$"../Button".queue_free()
