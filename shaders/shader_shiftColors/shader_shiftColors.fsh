varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 shiftColors;

void main()
{	
    vec4 finalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	finalColor.rgb += shiftColors;
	gl_FragColor = finalColor;
}