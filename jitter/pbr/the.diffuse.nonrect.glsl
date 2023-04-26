///////////////////////////////////
// Diffuse Shading Models

float lambertian(vec3 Nn, vec3 L) {
	return max(dot(Nn, L), 0.);
}
float oren_nayer(vec3 Vn, vec3 Nn, vec3 L, float roughness) {
	float roughness2 = roughness*roughness;
	float A = 1. - (0.5*roughness2)/(roughness2+0.33);
	float B = (0.45*roughness2)/(roughness2+0.09);
	float VdotN = dot(Vn, Nn);
	// reflected (between vertex normal and view direction)
	float LdotN = dot(L, Nn);
	// incident (between vertex normal and light direction
	float irradiance = max(0., LdotN);
	// clamp incident
	float cos_delta_angle = max(0., dot(normalize(Vn-Nn*VdotN), normalize(L-Nn*LdotN)));
	float theta_r = acos(VdotN);
	float theta_i = acos(LdotN);
	float alpha = max(theta_i, theta_r);
	float beta = min(theta_i, theta_r);
	float profile = sin(alpha) * tan(beta);
	return (A+B*cos_delta_angle*profile)*irradiance;
}
float oren_nayer_lut(sampler2DRect ONtex, vec3 Vn, vec3 Nn, vec3 L, float roughness) {
	float roughness2 = roughness*roughness;
	float A = 1. - (0.5*roughness2)/(roughness2+0.33);
	float B = (0.45*roughness2)/(roughness2+0.09);
	float VdotN = dot(Vn, Nn);
	// reflected (between vertex normal and view direction)
	float LdotN = dot(L, Nn);
	// incident (between vertex normal and light direction
	float irradiance = max(0., LdotN);
	// clamp incident
	float cos_delta_angle = max(0., dot(normalize(Vn-Nn*VdotN), normalize(L-Nn*LdotN)));
	float profile = textureJit(ONtex, vec2(VdotN, LdotN)*0.5+0.5).r;
	return (A+B*cos_delta_angle*profile)*irradiance;
}
float toon(vec3 Nn, vec3 L, float size, float smoothfactor) {
	float v = dot(Nn, L);
	float thresh = 1.-size;
	return smoothstep(thresh-0.5*smoothfactor, thresh+0.5*smoothfactor, v);
}
float minnaert(vec3 Vn, vec3 Nn, vec3 L, float darkness) {
	float NL = max(dot(Nn, L), 0.);
	float NV = max(dot(Nn, Vn), 0.);
	return pow(NL, darkness+1.)*pow(1.-NV, 1.-darkness);
}
