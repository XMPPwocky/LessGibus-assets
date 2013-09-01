#version 330 
 
in vec3 VertexPosition; 

in vec2 diffuse_uv;

layout(std140) uniform GlobalMatrices 
{ 
	mat4 worldToCameraMatrix; 
  	mat4 cameraToClipMatrix; 
	mat4 worldToClipMatrix; 
}; 
 
uniform mat4 modelToClipMatrix; 

out vec2 diffuseuv;
 
void main() 
{ 
	gl_Position = modelToClipMatrix * vec4(VertexPosition, 1); 
	diffuseuv = diffuse_uv;
}