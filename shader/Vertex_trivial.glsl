#version 110

attribute vec4 position;
attribute vec2 uv;

uniform mat4 MVP;

varying vec2 transformed_uv;

void main()
{
    gl_Position = position * MVP;
    transformed_uv = uv;
}