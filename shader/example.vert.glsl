#version 330 
 
in vec3 VertexPosition; 
 
layout(std140) uniform GlobalMatrices 
{ 
	mat4 worldToCameraMatrix; 
  	mat4 cameraToClipMatrix; 
	mat4 worldToClipMatrix; 
}; 
 
uniform mat4 modelToClipMatrix; 
 
smooth out vec3 theColor; 
 
void main() 
{ 
	gl_Position = modelToClipMatrix * vec4(VertexPosition, 1); 
	theColor = vec3(0.0f, 0.f, (VertexPosition.x)+0.5); 
}