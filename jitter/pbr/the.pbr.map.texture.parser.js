autowatch = 1;

function postln(arg) {
	post(arg+"\n");
}
postln.local = 1;


var jit_matrix = new JitterMatrix();
var jit_gl_texture = new JitterObject("jit_gl_texture");

function clear_maps() {
	outlet(0, "albedo_texture");
	outlet(0, "normals_texture");
	outlet(0, "roughness_texture");
	outlet(0, "metallic_texture");
	outlet(0, "ambient_texture");
	outlet(0, "heightmap_texture");
	outlet(0, "emission_texture");
}

function load_folder(path) {
	var f = new Folder(path);
	f.typelist = ["JPEG", "PNG", "TIFF"];
	f.reset();

	clear_maps();

	while (!f.end) {
		var type = find_type(f.filename);
		if(type) {
			//postln(f.filename);
			//postln(type);
			jit_matrix.importmovie(f.pathname+"/"+f.filename);
			jit_gl_texture.read(f.pathname+"/"+f.filename);
			// outlet(0, type+"_texture", jit_matrix.name);
			outlet(0, type+"_texture", jit_gl_texture.name);
		}
		f.next();
	}
}

function find_type(filename) {
	var texType = 0;
	filename = filename.toLowerCase();
	if (/diff|col|alb|base/.test(filename)) {
		texType = "albedo";
	}
	else if (/nor/.test(filename)) {
		texType = "normals";
	}
	else if (/rou/.test(filename)) {
		texType = "roughness";
	}
	else if (/ao|occ|amb/.test(filename)) {
		texType = "ambient";
	}
	else if (/disp|hei/.test(filename)) {
		texType = "heightmap";
	}
	else if (/spec|met/.test(filename)) {
		texType = "metallic";
	}
	else if (/emis/.test(filename)) {
		texType = "emission";
	}
	return texType;
}
