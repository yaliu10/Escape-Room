extends Area2D
class_name TestItem

const DRAGGING_SPEED = 50

var initial_position = Vector2.ZERO
var initial_scale = Vector2.ZERO
var is_dragging = true
var texture: Texture

signal dropped

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

func _ready():
	if texture:
		sprite_2d.texture = texture
	initial_position = position
	initial_scale = scale
	play_spawn_animation()
	
func _process(delta: float) -> void:
	if is_dragging:
		global_position = lerp(
			global_position,
			get_global_mouse_position(),
			delta
		)
	

func self_destruct():
	await play_self_destruct_animation()
	queue_free()

func play_spawn_animation():
	scale = Vector2.ZERO
	get_tree().create_tween().tween_property(self, "scale", initial_scale, 0.3) \
		.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_QUAD)
		
func play_self_destruct_animation():
	await get_tree().create_tween().tween_property(self, "scale", Vector2(0.0,0.0), 0.1) \
		.set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_QUAD).finished
