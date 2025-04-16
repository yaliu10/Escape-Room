extends Panel

@onready var item : TextureRect = $Item

func pick_from_slot():
	item.set_texture(null)
	
func put_into_slot(new_texture):
	item.set_texture(new_texture)
