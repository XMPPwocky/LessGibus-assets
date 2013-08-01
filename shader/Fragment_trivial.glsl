#version 110

uniform float fade_factor;
uniform sampler2D texture;

varying vec2 uv_transformed;

void main()
{
    gl_FragColor = texture2D(texture, uv_transformed);
}