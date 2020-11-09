varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float shift;

void main()
{	
    vec4 finalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	finalColor.rgb += vec3(shift,shift,shift);
	gl_FragColor = finalColor;
}