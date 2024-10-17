#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform vec2 ScreenSize;
<<<<<<< HEAD
uniform float GameTime;

uniform mat4 ProjMat;
=======
>>>>>>> 47cfe4c8f236bde88407f1d9ab1bbb86e51ba7e2

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec3 pos;
in vec4 lightMapColor;
in vec4 screenPos;

<<<<<<< HEAD
//in vec4 justColor;

=======
>>>>>>> 47cfe4c8f236bde88407f1d9ab1bbb86e51ba7e2
out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * ColorModulator;
<<<<<<< HEAD
    if (color.a == 1.0 || color.a == 0.0) { // if it's normal text
        color *= vertexColor;
//(Shadows)     chat text       chat input     emoji selector      shown chat        cp chat text     cp shown chat        tooltips           title             subtitle           bossbar
    } else if (pos.z == 50.0 || pos.z == 0.0 || pos.z == 350.0 || pos.z == 2650.0 || pos.z == 0.1 || pos.z == 2600.1 || pos.z == 400.0 || pos.z == 2400.0 || pos.z == 2200.0 || pos.z == 1000.0) { // Note: the 'chat input' is the one that also interferes with the book text
        // if it's not in a book or if z isn't 0, make it a shadow
        if (pos.z == 0.0 && screenPos.y > (ScreenSize.y / 5.0) || pos.z != 0.0) {
            color *= vec4(62.0/252.0, 62.0/252.0,62.0/252.0, vertexColor.a) * lightMapColor;
        }
        /*if (pos.z != 0.0) {
            color *= vec4(62.0/252.0, 62.0/252.0,62.0/252.0, vertexColor.a) * lightMapColor;
        } else {
            color = ;//vec4(62.0/252.0, 62.0/252.0,62.0/252.0, vertexColor.a) * lightMapColor;
        }*/
    } else { // Basically if it's an emoji not shadow
        /*if (FogStart < FogEnd) {
            color = textureLod(Sampler0, texCoord0, 0);
            //color = vec4(1.0, 0.0, 0.0, 1.0);
        }*/
        color.a *= vertexColor.a;
        color *= lightMapColor;
        /*
        // fix glowing
        // Make sure it's the background
        vec4 testColor = color * justColor;
        vec4 whiteTestColor = vec4(1.0, 1.0, 1.0, 1.0) * color;
        float rDiff = abs(testColor.r - whiteTestColor.r);
        float gDiff = abs(testColor.g - whiteTestColor.g);
        float bDiff = abs(testColor.b - whiteTestColor.b);

        if (rDiff > 0.0001 && gDiff > 0.0001 && bDiff > 0.0001 && 
            lightMapColor.r > 251.9 / 255.0 && lightMapColor.r < 252.1 / 255.0 && 
            lightMapColor.g > 251.9 / 255.0 && lightMapColor.g < 252.1 / 255.0 && 
            lightMapColor.b > 251.9 / 255.0 && lightMapColor.b < 252.1 / 255.0 &&
            FogStart < FogEnd) {
            discard;
        }
        */
=======
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
>>>>>>> 47cfe4c8f236bde88407f1d9ab1bbb86e51ba7e2
    }
    if (color.a < 0.1) {
        discard;
    }
<<<<<<< HEAD
//            sign           sign editor
    if ((FogStart < FogEnd || pos.z == 54.0) && color.a < 1.0) {
        float light = (lightMapColor.r + lightMapColor.g + lightMapColor.b) / 3.0;
        color.a = mix(color.a, tan(light), abs(1.0 - color.a));
    }
=======
>>>>>>> 47cfe4c8f236bde88407f1d9ab1bbb86e51ba7e2
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
