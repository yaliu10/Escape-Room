extends Control

@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton

@export var dialogue_items: Array[String] = [
	"[shake]Where am I?[/shake]",
	"[shake]This place looks like a museum...but why...do I feel like I've been here before?[/shake]",
	"[shake]Who am I? Why can’t I remember anything...?[/shake]",
	"[shake]These paintings...[/shake]",
]

var current_item_index := 0

func _ready() -> void:
	show_text()

func show_text() -> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item
	rich_text_label.visible_ratio = 0.0

	var tween := create_tween()
	var text_appearing_duration := 0.3
	tween.tween_property(rich_text_label, "visible_ratio", 1.0, text_appearing_duration)
	

func advance() -> void:
	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().change_scene_to_file("res://Scenes/room.tscn")
	else:
		show_text()


func _on_next_button_pressed() -> void:
	advance()
