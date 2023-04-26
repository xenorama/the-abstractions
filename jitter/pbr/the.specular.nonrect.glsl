///////////////////////////////////
// Specular Shading Models

// aka Blinn (really Blinn-Phong)
float blinn(vec3 Vn, vec3 Nn, vec3 L, float Ns) {
	vec3 H = normalize(L + Vn);
	return pow(max(dot(Nn, H), 0.), Ns);
}
	
// aka Phong
float specular_phong(vec3 Vn, vec3 Nn, vec3 L, float Ns) {
	vec3 R = reflect(-L, Nn);
	return pow(max(dot(R, Vn), 0.), Ns);
}
float toonspecular(vec3 Vn, vec3 Nn, vec3 L, float Ns, float size, float smoothfactor) {
	vec3 H = normalize(L + Vn);
	float v = pow(max(dot(Nn, H), 0.), Ns);
	float thresh = 1.-size;
	return smoothstep(thresh-0.5*smoothfactor, thresh+0.5*smoothfactor, v);
}
	
// Ward Isotropic model
float ward(vec3 Vn, vec3 Nn, vec3 L, float rms) {
	vec3 H = normalize(Vn + L);
	float NH = max(dot(Nn, H), 0.);
	float NV = max(dot(Nn, Vn), 0.);
	float NL = max(dot(Nn, L), 0.);
	float alpha = max(rms, 0.001);
	// prevent divide-by 0
	float angle = acos(NH);
	float angle2 = angle*angle;
	float alpha2 = alpha*alpha;
	return NL * 0.25 * (1.0/alpha2) * exp(-2.*angle2/alpha2);
}
float cook_torrance(vec3 Vn, vec3 Nn, vec3 L, float rms) {
	vec3 H = normalize(Vn + L);
	float NH = max(dot(Nn, H), 0.);
	float VH = max(dot(Vn, H), 0.);
	float NV = max(dot(Nn, Vn), 0.);
	float NL = max(dot(Nn, L), 0.);
	float factor = min(NV, NL);
	float G = min(1., 2.*NH*factor/VH);
	float alpha = acos(NH);
	float exponent = alpha/rms;
	float D = exp(-exponent*exponent);
	return D*G/(0.001+NV);
}