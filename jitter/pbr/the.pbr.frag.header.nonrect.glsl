#define PI 3.14159265
#define TWOPI 6.28318531
#define PI_INV 0.3183098861

uniform sampler2DRect albedoTex, normalTex, RMOHTex, emissionTex, rectLightTex, integMap;
// uniform sampler2DRect albedoTex;
uniform samplerCube environmentTex, reflectionTex;
uniform int shadowIterations, parallaxIterations, occlusionIterations;
uniform float heightScale, triplanarBlendingAmount;
uniform float shadowAmount, shadowStep, parallaxStep;
uniform float occlusionAmount, occlusionOffset;
uniform float roughness, metalness;
uniform float near, far;
uniform float texRepeat;
uniform vec3 eye;
uniform mat4 Vmat, Pmat, M;

// shadow params
uniform vec3 vsm_params;

struct PBRMaterialParameters {
	vec4 diffuse;
	vec4 emission;
};

struct PBRLightSourceParameters {
	vec4 color;
	vec4 ambient;
	vec4 position;
	vec3 spotDir;
	float spotExponent;
	float spotCosCutoff;
	float constAtten;
	float linAtten;
	float quadAtten;
};

struct 	material{
	vec3 	alb;
	float 	occ;
	float 	met;
	float 	rou;
	vec3 	F0;
};

struct 	geometry{
	vec3	V;
	vec3	N;
	vec3 	R;
	vec3	pos;
	vec2	uv;
	float 	height;

	//common triplanar params
	vec2 	uvX, uvY, uvZ;
	vec3 	triBlend;
	float 	triBlendNormalizer;
};

in jit_PerVertex {
	smooth 	vec3 nor;
	smooth 	vec3 tan;
	smooth 	vec3 bit;
	smooth 	vec3 pos;
	smooth 	vec2 uv;
	smooth  vec3 eyePos;
	smooth  vec3 modelPos;
	smooth  vec3 modelNor;
	smooth  mat3 TBN;
	smooth  mat3 transTBN;
	smooth  vec4 currPos;
	smooth  vec4 prevPos;
	vec2 texcoord;
} jit_in;
