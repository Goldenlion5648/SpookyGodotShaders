extends TextureRect

var pumpkin_animation: AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pumpkin_animation = $"../pumpkin_animation"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	var pos_x = mouse_pos.x / get_viewport_rect().size.x
	var pos_y = mouse_pos.y / get_viewport_rect().size.y
#	var view_rect = get_viewport_rect()
	var current_progress = (float(pumpkin_animation.frame) / 
						float(pumpkin_animation.sprite_frames.get_frame_count("default")))
	print(current_progress)
	self.material.set_shader_parameter("point_to_reveal", [pos_x, pos_y])
	self.material.set_shader_parameter("animation_progress", current_progress)
