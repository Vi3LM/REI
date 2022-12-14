#version 450

layout(location=0) in vec2 aPos;
layout(location=1) in vec2 aUV;

layout(push_constant) uniform uPushConstant { vec2 uScale; vec2 uTranslate; } vpc;

out gl_PerVertex { vec4 gl_Position; };
layout(location = 0) out struct { vec2 Pos; vec2 UV; } Out;

void main(void)
{
    Out.UV = aUV;
    Out.Pos = aPos;
    gl_Position = vec4(aPos * vpc.uScale + vpc.uTranslate, 0, 1);
}
