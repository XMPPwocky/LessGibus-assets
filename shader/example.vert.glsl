#version 330 
 
in vec3 VertexPosition; 
in vec2 ColorTexture1_uv;

layout(std140) uniform GlobalMatrices 
{ 
	mat4 worldToCameraMatrix; 
  	mat4 cameraToClipMatrix; 
	mat4 worldToClipMatrix; 
}; 
 
uniform mat4 modelToClipMatrix; 

smooth out vec2 _ColorTexture1_uv;
 
void main() 
{ 
	gl_Position = modelToClipMatrix * vec4(VertexPosition, 1); 
	_ColorTexture1_uv = ColorTexture1_uv;
}