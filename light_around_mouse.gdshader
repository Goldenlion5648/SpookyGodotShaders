shader_type canvas_item;

uniform vec2 point_to_reveal;
uniform float animation_progress;
void fragment() {
	COLOR = texture(TEXTURE, UV);
	
	float revealed_radius = .06 + pow(animation_progress / 2.0, 1.2);
	float ratio = 16.0/9.0;
	float x_pos = UV.x + .023 * sin(TIME) / 3.0;
	float y_pos = UV.y + .03 * cos(TIME);
	if (distance(vec2(x_pos,y_pos), point_to_reveal) < revealed_radius ) {
		COLOR.a = 0.0;
	} else {
		COLOR.a = TIME ;
	}
}
