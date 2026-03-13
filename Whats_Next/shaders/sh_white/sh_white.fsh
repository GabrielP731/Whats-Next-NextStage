//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float flash;
void main()
{
	vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;
	vec3 wht = vec3(1.0, 1.0, 1.0);
	col.rgb = mix(col.rgb, wht, flash);
    gl_FragColor = col;
}
