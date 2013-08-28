#version 330

out vec4 outputColor;

uniform sampler2D ColorTexture1;
smooth in vec2 _ColorTexture1_uv;

void main()
{
   outputColor = texture(ColorTexture1, _ColorTexture1_uv);
}