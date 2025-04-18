extends Control

@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton

@export var dialogue_items: Array[String] = [
	"Where am I?",
	"This place looks like a museum...but why do I feel like I've been here before?",
	"Who am I? Why can't I remember anything?",
	"Maybe I should look around...",
]

var current_item_index := 0

func _ready() -> void:
	show_text()
	next_button.pressed.connect(advance)

func show_text() -> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item

func advance() -> void:
	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().change_scene_to_file("res://Scenes/main.tscn")
	else:
		show_text()
