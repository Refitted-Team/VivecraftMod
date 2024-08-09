#version 150 core

in vec3 Position;
in vec2 UV0;
uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
out vec2 texCoordinates;
void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    texCoordinates = vec2(UV0.s, 1.0 - UV0.t);
}
