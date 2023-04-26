vec2 sphere_map(vec3 v) {
	float m = 2.*sqrt(v.x*v.x + v.y*v.y + (v.z+1.)*(v.z+1.));
	return vec2(v)/m+0.5;
}

// Shadows 
vec4 btex2D(sampler2D map, vec2 uv, float radius, float steps) {
	float stepSize = 2.0 * radius / steps;
	uv.xy -= vec2(radius,radius);
	vec4 total = vec4(0, 0, 0, 0);
	for (int x = 0; x < steps; ++x)
		for (int y = 0; y < steps; ++y)
			total += textureJit(map, vec2(uv.xy + vec2(x * stepSize, y * stepSize)));
	return total / (steps * steps);
}
float compute_shadow(sampler2D shadowMap, vec4 shadowMapPos, float ourDepth, vec3 param)	{				
	// param.x = radius
	// param.y = epsilon
	// param.z = min clamp
	vec2 suv = (shadowMapPos.xy / shadowMapPos.w) * 0.5 + 0.5;
	vec2 moments = btex2D(shadowMap, suv, param.x, 4).xy;
	float litFactor = (ourDepth <= moments.x ? 1 : 0);
	float variance = clamp((moments.y - (moments.x*moments.x)), param.y, 1.0);
	float m_d = moments.x - ourDepth;
	float p = variance / (variance + m_d * m_d);
	return smoothstep(param.z, 1.0, max(litFactor, p));
}