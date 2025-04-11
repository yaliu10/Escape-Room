extends Panel

@onReady var item : TextureRect : $Item

func pick_from_slot():
	item.set.texture(null)
	
func put_into_slot():
	item.set.texture(new_texture)
