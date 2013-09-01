#version 330

out vec4 outputColor;

in vec2 diffuseuv;

uniform sampler2D diffuse_tex;
uniform vec4 diffuse_constant;
void main()
{
   outputColor = texture(diffuse_tex, diffuseuv);
}