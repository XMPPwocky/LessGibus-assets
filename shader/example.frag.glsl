#version 330
smooth in vec3 theColor;
out vec4 outputColor;
void main()
{
   outputColor = vec4(0, gl_FragCoord.z + 1, (theColor.z),1);
}