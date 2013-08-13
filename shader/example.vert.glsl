#version 330

layout(location = 0) in vec3 position;

layout(std140) uniform GlobalMatrices
{
    mat4 cameraToClipMatrix;
};

uniform mat4 modelToCameraMatrix;

void main()
{
	gl_Position = cameraToClipMatrix * (modelToCameraMatrix * vec4(position, 1));
}