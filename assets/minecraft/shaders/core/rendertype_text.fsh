#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform vec2 ScreenSize;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec3 pos;
in vec4 lightMapColor;
in vec4 screenPos;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * ColorModulator;
    if (color.a == 1.0) {
        color *= vertexColor;
//(Shadows)     chat text       chat input     emoji selector      shown chat        cp chat text    cp shown chat   tooltips
    } else if (pos.z == 50.0 || pos.z == 0.0 || pos.z == 350.0 || pos.z == 2650.0 || pos.z == 0.1 || pos.z == 2600.1 || pos.z == 400.0) { // Note: the 'chat input' is the one that also interferes with the book text
        if (pos.z == 0.0 && screenPos.y > (ScreenSize.y / 5.0)) { //200.0
            color *= vec4(62.0/252.0, 62.0/252.0,62.0/252.0, vertexColor.a) * lightMapColor;
        } else if (pos.z != 0.0) {
            color *= vec4(62.0/252.0, 62.0/252.0,62.0/252.0, vertexColor.a) * lightMapColor;
        }
    } else {
        color.a *= vertexColor.a;
        color *= lightMapColor;
    }
    if (color.a < 0.1) {
        discard;
    }
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
