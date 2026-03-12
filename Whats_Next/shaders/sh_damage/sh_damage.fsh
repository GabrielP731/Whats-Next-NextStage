//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float flash;
void main()
{
	vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;
	vec3 red = vec3(1.0, 0.0, 0.0);
	col.rgb = mix(col.rgb, red, flash);
    gl_FragColor = col;
}
