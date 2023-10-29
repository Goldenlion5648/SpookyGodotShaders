shader_type canvas_item;
uniform float animation_progress;
void fragment() {
	COLOR = texture(TEXTURE, UV);
	if (COLOR.r > .82) {
		COLOR.r = clamp(abs(sin(UV.x * UV.y + TIME / 4.0)), .82, .95);
	} else if (animation_progress > .95){
		COLOR.rgb *= abs(clamp(abs(cos(TIME/2.0)), .0, 1.4));
	}
}
