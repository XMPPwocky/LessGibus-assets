#version 330

in vec3 normal;
in vec2 diffuseuv;
layout(location=0) out vec4 FragColor;
uniform sampler2D diffuse_tex;
uniform vec4 diffuse_constant;
void main()
{
   FragColor = texture2D(diffuse_tex, diffuseuv) * dot(normalize(normal), normalize(vec3(0.5,0.5,5) - vec3(gl_FragCoord.x/640, gl_FragCoord.y/640, gl_FragCoord.z)));
}