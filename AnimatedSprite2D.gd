extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var current_progress = (float(self.frame) / 
						float(self.sprite_frames.get_frame_count("default")))
	self.material.set_shader_parameter("animation_progress", current_progress)
