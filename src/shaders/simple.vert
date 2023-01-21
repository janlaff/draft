#version 440 core

layout(location = 0) in vec3 vertexPositionModelSpace;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
    mat4 mvp = projection * view * model;
    gl_Position = mvp * vec4(vertexPositionModelSpace, 1.0);
}