extends Control

@onready var rich_text_label: RichTextLabel = %RichTextLabel

@export var dialogue_items: Array[String] = [
	"I've been here before.",
	"I remember now.",
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
		hide()
	else:
		show_text()



func _on_next_button_pressed() -> void:
	advance()
	$ButtonSound.play()
