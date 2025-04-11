extends Control

@onready var Text : RichTextLabel = $RichTextLabel

func _ready() -> void:
	clear()


func toogle(show):
	print("item interacted")
	if(show):
		self.visible = true
	else:
		self.visible = false


func clear():
	self.visible = false
	#Text.bbcode_text = ""
	Text.visible = false
