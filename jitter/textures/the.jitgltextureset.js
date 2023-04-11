// autowatch = 1;
outlets = 2;



var outname = undefined;
declareattribute("outname", null, null, 0);

var texturecount = 15;
declareattribute("texturecount", null, null, 0);

var drawto = "";
declareattribute("drawto", null, "setdrawto", 0);

var index = 0;
declareattribute("index", null, "setindex", 0);

var adapt = 1;
declareattribute("adapt", null, null, 0);

var dim = [256, 256];
declareattribute("dim", null, null, 0);

var clearindex = 0;
var initedcount = 0;

var texset = new Array();
var vob = new JitterObject("jit.gl.videoplane")
vob.transform_reset = 2;
vob.automatic = 0;

function postln(arg) {
	//if(verbose)
		post(arg+"\n");
}
postln.local = 1;

function jit_matrix(s) {
	do_capture(s, true);
}

function jit_gl_texture(s) {
	do_capture(s, false);
}

function do_capture(s, ismatrix) {
	while (initedcount <= index) {
		var tob = new JitterObject("jit.gl.texture", drawto);
		tob.dim = dim;
		texset.push(tob);
		initedcount++;
	}

	if (outname) tob.name = outname+"."+(index+1);

	if(adapt) {
		proxy.name = s;
		dim = proxy.send("getdim");
	}

	texset[index].dim = dim;

	// mark as initialized
	if(texset[index].name.indexOf(".") < 0) {
		texset[index].name = texset[index].name+"."+(index+1);
	}
	// if(texset[index].name.indexOf("_cap") < 0) {
	// 	texset[index].name = texset[index].name+"_cap";
	// }

	vob.capture = texset[index].name;

	if(ismatrix)
		vob.jit_matrix(s);
	else
		vob.jit_gl_texture(s);

	vob.draw();
	outlet(1,index);
}
do_capture.local = 1;

function outputtexture(a) {
	if(a >= 0 && a < texturecount && a < initedcount) {
		// only output if tex had been initialized with a capture
		if(texset[a].name.indexOf(".") >= 0) {
			outlet(0, "jit_gl_texture", texset[a].name);
		}
	}
}

function clear() {
	for(i in texset) {
		texset[i].name = "u"+clearindex;
		clearindex++;
		texset[i].freepeer();
	}
	texset = new Array();
	initedcount = 0;
}

function setindex(a) {
	if(a >= 0 && a < texturecount) {
		index = a;
	}
}

function setdrawto(val) {
	explicitdrawto = true;
	dosetdrawto(val);
}

function dosetdrawto(a) {
	drawto = a;
	for(i in texset) {
		texset[i].drawto = drawto;
	}
	vob.drawto = drawto;
}
dosetdrawto.local = 1;

//function getvalueof() {
//	postln("getvalueof");
//}

//function setvalueof() {
//	postln("setvalueof");
//}

function notifydeleted() {
	clear();
	vob.freepeer();
	implicit_lstnr.subjectname = "";
	implicit_tracker.freepeer();
}
notifydeleted.local = 1;

var implicitdrawto = "";
var explicitdrawto = false;
var implicit_tracker = new JitterObject("jit_gl_implicit");
var implicit_lstnr = new JitterListener(implicit_tracker.name, implicit_callback);
var proxy = new JitterObject("jit.proxy");

function implicit_callback(event) {
	if(!explicitdrawto && implicitdrawto != implicit_tracker.drawto[0]) {
		// important! drawto is an array so get first element
		implicitdrawto = implicit_tracker.drawto[0];
		dosetdrawto(implicitdrawto);
	}
}
implicit_callback.local = 1;
