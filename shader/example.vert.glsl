#version 330

layout(location = 0) in vec3 position;

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
	gl_Position = modelToClipMatrix * vec4(position, 1);
	theColor = vec3(0.0f, 0.f, (position.x)+0.5);
}