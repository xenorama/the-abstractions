//PBR common functions

//utilities
vec3 	lin2sRGB(vec3 x){ return pow(x, vec3(0.4545454545));}
vec3 	sRGB2lin(vec3 x){ return pow(x, vec3(2.2));}
float 	saturate(float x){ return clamp(x, 0., 1.);}

//biplanar mapping
// from Inigo Quilez implementation:
//https://iquilezles.org/www/articles/biplanar/biplanar.htm
vec4 biplanar( sampler2DRect tex, in geometry geom )
{
    // grab coord derivatives for texturing
    vec3 p = jit_in.modelPos;
    vec3 dpdx = dFdx(p);
    vec3 dpdy = dFdy(p);
    vec3 n = abs(jit_in.modelNor);

    // determine major axis (in x; yz are following axis)
    ivec3 ma = (n.x>n.y && n.x>n.z) ? ivec3(0,1,2) :
               (n.y>n.z)            ? ivec3(1,2,0) :
                                      ivec3(2,0,1) ;
    // determine minor axis (in x; yz are following axis)
    ivec3 mi = (n.x<n.y && n.x<n.z) ? ivec3(0,1,2) :
               (n.y<n.z)            ? ivec3(1,2,0) :
                                      ivec3(2,0,1) ;
    // determine median axis (in x;  yz are following axis)
    ivec3 me = ivec3(3) - mi - ma;

    // project+fetch
    vec4 x = textureGrad( tex, vec2(   p[ma.y],   p[ma.z]),
                               vec2(dpdx[ma.y],dpdx[ma.z]),
                               vec2(dpdy[ma.y],dpdy[ma.z]) );
    vec4 y = textureGrad( tex, vec2(   p[me.y],   p[me.z]),
                               vec2(dpdx[me.y],dpdx[me.z]),
                               vec2(dpdy[me.y],dpdy[me.z]) );

    // blend factors
    vec2 w = vec2(n[ma.x],n[me.x]);
    // make local support
    w = clamp( (w-0.5773)/(1.0-0.5773), 0.0, 1.0 );
    // shape transition
    //w = pow( w, vec2(biplanarExp/8.0) );
    // blend and return
    return (x*w.x + y*w.y) / (w.x + w.y);
}

//triplanar mapping
void getTriplanarUVs(inout geometry geom){
	geom.uvX = jit_in.modelPos.zy*texRepeat; //changed the swizzling from yz to zy
	geom.uvX.x = jit_in.modelNor.x < 0. ? geom.uvX.x : -geom.uvX.x;
	geom.uvY = jit_in.modelPos.xz*texRepeat;
	geom.uvY.x = jit_in.modelNor.y < 0. ? geom.uvY.x : -geom.uvY.x;
	geom.uvZ = jit_in.modelPos.xy*texRepeat;
	geom.uvZ.x = jit_in.modelNor.z >= 0. ? geom.uvZ.x : -geom.uvZ.x;
	geom.uvX.y += 0.5;
	geom.uvZ.x += 0.5;
}

void getTriplanarExpBlend(inout geometry geom){
	geom.triBlend = normalize(pow(abs(jit_in.modelNor), vec3(triplanarBlendingAmount*50.)));
	geom.triBlendNormalizer = 1. / (geom.triBlend.x + geom.triBlend.y + geom.triBlend.z);
}

void getTriplanarHeightMap(inout geometry geom){
	// Height Map Triplanar Blend
	vec3 	blend = abs(jit_in.modelNor.xyz);
			blend /= dot(blend, vec3(1.0,1.0,1.0));
	// Height value from each plane's texture. This is usually
	// packed in to another texture or (less optimally) as a separate
	// texture.
	float heightX = texture(RMOHTex, geom.uvX).w;
	float heightY = texture(RMOHTex, geom.uvY).w;
	float heightZ = texture(RMOHTex, geom.uvZ).w;

	vec3 	heights = vec3(heightX, heightY, heightZ) + (blend * 3.0);
	float 	height_start = max(max(heights.x, heights.y), heights.z) - clamp(1. - triplanarBlendingAmount, 0.05, 1.);
	vec3 	h = max(heights - vec3(height_start), vec3(0.0,0.0,0.0));
	geom.triBlend =	h / dot(h, vec3(1.0,1.0,1.0));
	geom.triBlendNormalizer = 1. / (geom.triBlend.x + geom.triBlend.y + geom.triBlend.z);
}

vec4 	triplanar(sampler2DRect tex, in geometry geom){
	vec4 	X = texture(tex, geom.uvX)*geom.triBlend.x;
	vec4 	Y = texture(tex, geom.uvY)*geom.triBlend.y;
	vec4 	Z = texture(tex, geom.uvZ)*geom.triBlend.z;
	return 	(X+Y+Z) * geom.triBlendNormalizer;
}

vec3 	triplanarNormals(sampler2DRect tex, in geometry geom){
	// Whiteout blend
	// from https://bgolus.medium.com/normal-mapping-for-a-triplanar-shader-10bf39dca05a
	// Tangent space normal maps
	vec3 	tnX = texture(tex, geom.uvX).xyz*2. - vec3(1.);
	vec3 	tnY = texture(tex, geom.uvY).xyz*2. - vec3(1.);
	vec3 	tnZ = texture(tex, geom.uvZ).xyz*2. - vec3(1.);
			tnX.y *= -1.;
			tnX.x *= jit_in.modelNor.x > 0. ? -1. : 1.;
			tnY.y *= -1.;
			tnY.x *= jit_in.modelNor.y > 0. ? -1. : 1.;
			tnZ.y *= -1.;
			tnZ.x *= jit_in.modelNor.z < 0. ? -1. : 1.;
	// Swizzle world normals into tangent space and apply Whiteout blend
			tnX = vec3(
			    tnX.xy + jit_in.modelNor.zy,
			    abs(tnX.z) * jit_in.modelNor.x
			    );
			tnY = vec3(
			    tnY.xy + jit_in.modelNor.xz,
			    abs(tnY.z) * jit_in.modelNor.y
			    );
			//tnY.z *= jit_in.modelNor.y > 0. ? -1. : 1.;
			tnZ = vec3(
			    tnZ.xy + jit_in.modelNor.xy,
			    abs(tnZ.z) * jit_in.modelNor.z
			    );
			tnX *= geom.triBlend.x;
			tnY *= geom.triBlend.y;
			tnZ *= geom.triBlend.z;
	// Swizzle tangent normals to match world orientation and triblend
	return ( M * vec4(normalize( (tnX.zyx + tnY.xzy + tnZ.xyz) * geom.triBlendNormalizer ), 0.)).xyz;
}

// parallax
float getHeight(vec2 uv){
	//forcing to look-up the fist mip level avoids partial derivatives problems
	//aka, random black pixels here and there

	return heightScale >= 0. ? textureLod(RMOHTex, uv, 0.).w : 1. - textureLod(RMOHTex, uv, 0.).w;// * 0.95 + 0.05; // bias to avoid stepping over the depth map
}
void binarySearch(inout vec3 P, inout float H, in vec3 offset){
	offset *= 0.5;
	P.xy += offset.xy;
	P.z -= offset.z;
	for(int j = 0; j < 10; j++){
		//prevP = P;
		//prevH = H;
		H = (1. - getHeight(P.xy*texRepeat))*abs(heightScale);
		offset *= 0.5;
		P += P.z > H ? vec3(offset.xy, -offset.z) : vec3(-offset.xy, offset.z);
	}
}

void parallax(inout geometry geom){
	vec3 	V = normalize(eye - jit_in.pos);
	vec3 	P;
			P.xy = geom.uv/texRepeat;
			P.z = 0.;

	float H;
	float prevH;
	vec3 prevP;
	vec3 offset;

	//linear search
	for(int i = 0; i < parallaxIterations; i++){
		//mat3 	TBN = create_tbn_from_texture(P.xy);
		 		offset = parallaxStep * jit_in.transTBN * V;
				P.xy -= offset.xy;
				P.z += offset.z;
		if(P.z < 0.){
			discard;
			return;
		}
		H = (1. - getHeight(P.xy*texRepeat))*abs(heightScale);
		if(P.z > H){

			binarySearch(P, H, offset);
			geom.uv = texRepeat * P.xy;
			geom.height = H;
			geom.pos    -= geom.N * geom.height;
			return;
		}
		prevH = H;
		prevP = P;
	}
}

float selfShadow(vec3 L, in geometry geom){
	vec3 	P = vec3(geom.uv/texRepeat, geom.height);
	vec3 	offset 	= shadowStep * jit_in.transTBN * L;
			P.xy 	+= offset.xy;
			P.z 	-= offset.z;
	float 	sha = 0.;
	int i;
	for(i = 0; i < shadowIterations; i++){
		 //a stochastic variation of the marching step seems to create better results with low quality settings
		float jittering = fract( fract(float(i)*PI_INV)*abs(P.x+P.z)*2358940.12345) * shadowStep;
		offset 	= ( shadowStep + jittering ) * jit_in.transTBN * L;
		P.xy 	+= offset.xy;
		P.z 	-= offset.z;
		if(P.z < 0.){
			return 1. - saturate(sha*shadowAmount);
		}
		float 	H = (1. - getHeight(P.xy*texRepeat))*abs(heightScale);
		if(P.z > H){
			sha = max(sha, (P.z - H)/(1. + float(i)*0.2));
		}
	}
	return i == shadowIterations - 1 ? 1. : 1. - saturate(sha*shadowAmount);
}

//PBR functions
vec3 	fresnelSchlickRoughness(float HdotV, vec3 F0, float rou){
	float 	x = saturate(1. - HdotV); //x^5
	float 	x2 = x*x;
			x2 *= x2;
			x *= x2;
    return F0 + (max(vec3(1.0 - rou), F0) - F0) * x;
}
float 	DistributionGGX(float NdotH, float rou){
			rou *= rou; //Disney trick!
			rou *= rou; //roughness^4
     		NdotH *= NdotH; //square the dot product
    float 	denom = (NdotH * (rou - 1.0) + 1.0);
    		denom *= denom;
    		denom *= PI;

    return 	rou / denom;
}
float 	GeometrySchlickGGX(float NdotV, float rou){
			rou += 1.;
    float 	k = (rou*rou) / 8.0; //Disney trick again...
    return NdotV / ( NdotV * (1.0 - k) + k );
}
float 	GeometrySmith(float NdotV, float NdotL, float rou){
    float ggx2  = GeometrySchlickGGX(NdotV, rou);
    float ggx1  = GeometrySchlickGGX(NdotL, rou);

    return ggx1 * ggx2;
}
vec3 	getRadiance(vec3 V, vec3 N, vec3 L, vec3 rad, vec3 pos, in material mate){

	vec3	H = normalize(V + L);					//half vector

	//compute dot products
	float	HdotV = saturate(dot(H, V));
    float 	NdotV = saturate(dot(N, V)) + 0.001; //avoid dividing by 0
    float 	NdotL = saturate(dot(N, L));
    float   NdotH = saturate(dot(N, H));

	vec3 	F  	= fresnelSchlickRoughness(HdotV, mate.F0, mate.rou); 		//compute fresnel
	float	NDF = DistributionGGX(NdotH, mate.rou);   	//compute NDF term
	float 	G   = GeometrySmith(NdotV, NdotL, mate.rou); //compute G term
	vec3 	spe = (NDF*G*F)/(4.*NdotV*NdotL+0.0001);

	vec3 	kS = F;					//k specular
	vec3 	kD = vec3(1.0) - kS;	//k diffuse
			kD *= 1.0 - mate.met;		//nullify k diffuse if metallic

	return 	(kD * mate.alb * PI_INV + spe) * rad * NdotL;
}

//gamma correction
vec3 	gammaCorrection(vec3 x){
	x /= x + vec3(1.);  //from HDI lo LDI
	//lin = ACES(lin);
	return lin2sRGB(x);	//gamma correction
}

//from cube to equirectangular sampling coordinates
vec2 	dir2uv(vec3 v){
    vec2 uv = vec2(atan(v.z, v.x), asin(v.y));
    uv *= vec2(-0.1591, -0.3183); //to invert atan
    uv += 0.5;
    return uv;
}

//compute the solid angle
float 	rectSolidAngle(vec3 v0, vec3 v1, vec3 v2, vec3 v3){
	// Based on the technique in EA's frostbite engine
    vec3 n0 = normalize(cross(v0, v1));
    vec3 n1 = normalize(cross(v1, v2));
    vec3 n2 = normalize(cross(v2, v3));
    vec3 n3 = normalize(cross(v3, v0));

    float g0 = acos(dot(-n0, n1));
	float g1 = acos(dot(-n1, n2));
	float g2 = acos(dot(-n2, n3));
	float g3 = acos(dot(-n3, n0));

    return g0 + g1 + g2 + g3 - TWOPI;
}

//custom GGX
float 	normalDistributionGGXRect(float NdotH, float alpha, float alphaPrime){
    float 	alpha2 		= alpha * alpha;
    float 	alpha4 		= alpha2 * alpha2;
    float 	alphaPrime3 = alphaPrime * alphaPrime * alphaPrime;
    float 	denom 		= NdotH * NdotH * (alpha2 - 1.) + 1.;

    return 	(alpha2 * alphaPrime3) / (denom * denom);
}

//find intersection with plane
vec3 	rayPlaneIntersect(vec3 ro, vec3 rd, vec3 ligDir, vec3 ligPos){

	float a = dot(ligDir, rd);
    return a == 0. ? ro + rd * (dot(ligDir, ligPos - ro) / a) : vec3(ro + rd*1000);
}

float getHeightDifference(vec2 uv, float lod, float currH){
	return heightScale >= 0. ? 	max(0., (textureLod(RMOHTex, uv, lod).w - currH)) :
					max(0., (1. - (textureLod(RMOHTex, uv, lod).w) - currH));
}

float getAO(in geometry geom, float currH){

	float 	occ = 0.;
	vec2 	off = vec2(occlusionOffset, 0.) / texRepeat;
	float 	lod = 0.;
	float 	intensity = 1.;

	for(int i = 0; i < occlusionIterations; i++){
		float toAdd = 0.;
		toAdd += getHeightDifference(geom.uv - off.xy, lod, currH);
		toAdd += getHeightDifference(geom.uv + off.xy, lod, currH);
		toAdd += getHeightDifference(geom.uv - off.yx, lod, currH);
		toAdd += getHeightDifference(geom.uv + off.yx, lod, currH);
		occ += toAdd*intensity;
		off *= 2.;
		lod += 2.;
		intensity *= 0.5;
	}

	//occ /= float(occlusionIterations);
	occ *= abs(heightScale);
	occ *= occlusionAmount;
	occ /= 1. + occ;
	return 1. - occ;

}

float getNormAndHeightFromDerivatives(inout geometry geom, inout material mate){

	// 3 taps: better quality than float2(ddx fine(H), ddy fine(H)).
	vec2 	texDx = dFdx(jit_in.uv), texDy = dFdy(jit_in.uv);
	vec3 	dPdx = dFdx(geom.pos), dPdy = dFdy(geom.pos);
	float 	Hll = getHeight(geom.uv);
	float 	Hlr = getHeight(geom.uv + texDx); //*** put back texDx
	float 	Hul = getHeight(geom.uv + texDy);
	vec2 	deriv = vec2(Hlr - Hll, Hul - Hll);
		deriv *= abs(heightScale);

	// Equation 3 in [Mikkelsen 2010].
	vec3 	vR1 = cross(dPdy, geom.N);
	vec3 	vR2 = cross(geom.N, dPdx);
	float 	det = dot(dPdx, vR1);
	float 	eps = 1.192093e-15F;
	float 	sign_det = det < 0.0 ? -1.0 : 1.0;
	float 	s = sign_det/max(eps, abs(det));
		    geom.N = normalize(geom.N - s*(deriv.x*vR1 + deriv.y*vR2));

    return Hll;
}
