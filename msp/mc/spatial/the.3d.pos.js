max.clearmaxwindow();
autowatch = 1;

// max.clearmaxwindow();

this.box.message("border", 0);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// ----------------------- VARIABLES -----------------------

var PI = 3.14
var HALFPI = PI/2;
var TWOPI = PI*2;

var pos = [0,0,0]
function getvalueof() { return val; }
function setvalueof(v) { mouse = 0; val = v; output(); }

var patch = this.patcher;
var patch_attrs = patch.getattrnames();

var offcolor = "elementcolor";
var oncolor = "color";
var textcolor = "bgcolor";
var hovercolor = "accentcolor";
var offcolor_rgba = patch_color(offcolor);
var oncolor_rgba = patch_color(oncolor);
var textcolor_rgba = patch_color(textcolor);
var hovercolor_rgba = patch_color(hovercolor);

var orientation = 0;
var width = this.box.rect[2] - this.box.rect[0];
var height = this.box.rect[3] - this.box.rect[1];
var rect = [width,height]


var blob_size = 0.05;
var line_width = 0.01;
var cube = [[-1,1],[-1,1],[0,1]]

// ----------------------- ATTRIBUTES -----------------------

declareattribute("offcolor","get_offcolor","set_offcolor",1);
function set_offcolor() {
	offcolor = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	offcolor_rgba = patch_color(offcolor);
	mgraphics.redraw() };
	set_offcolor.local = 1;
function get_offcolor() { return offcolor };

declareattribute("oncolor","get_oncolor","set_oncolor",1);
function set_oncolor() {
	oncolor = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	oncolor_rgba = patch_color(oncolor);
	mgraphics.redraw() };
	set_oncolor.local = 1;
function get_oncolor() { return oncolor };

declareattribute("textcolor","get_textcolor","set_textcolor",1);
function set_textcolor() {
	textcolor = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	textcolor_rgba = patch_color(textcolor);
	mgraphics.redraw() };
	set_textcolor.local = 1;
function get_textcolor() { return textcolor };

declareattribute("hovercolor","get_hovercolor","set_hovercolor",1);
function set_hovercolor() {
	hovercolor = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	hovercolor_rgba = patch_color(hovercolor);
	mgraphics.redraw() };
	set_hovercolor.local = 1;
function get_hovercolor() { return hovercolor };



// ----------------------- MGRAPHICS -----------------------

function paint() {
	rect = mgraphics.size;
	rect = rect.map(function (x,i) { if (i==0) return x/3; else return x } )

	var margin = (line_width * rect[0]) / 2
	var frame = [margin,margin,rect[0]-margin,rect[1]-margin]
	var area =

	// var p = pos.map(function (x,i) {
	// 	var d = cube[i] / ;
	// 	var h = d + (x/2);
	// } )

	scale(pos,cube)

	var r = blob_size * rect[0]
	var box_inner = [frame[2]/2-r,frame[3]/2-r]

	var zoom = 0.5;
	var offset = [rect[0]*zoom,rect[1]*zoom]

	with (mgraphics) {


		scale(zoom,zoom)
		translate(offset)

		set_source_rgba(offcolor_rgba)
		// rectangle()
		rectangle(frame)
		stroke()

		set_source_rgba(0.7,0.3,0,1)
		var this_pos = [pos[0]*box_inner[0]+(frame[2]/2),pos[1]*box_inner[1]+(frame[3]/2)]
		move_to(frame[2]/2,frame[3]/2)
		line_to(this_pos)
		// line_to(this_pos[0],frame[3]/2)
		// line_to(frame[2]/2,frame[3]/2)
		stroke()
		arc(this_pos,r,0,6.28)
		fill()

		scale(1/zoom,1/zoom)
		translate(rect[0]+offset,0)
		scale(zoom,zoom)
		set_source_rgba(offcolor_rgba)
		rectangle(frame)
		stroke()
		this_pos = [pos[0]*box_inner[0]+(frame[2]/2),pos[2]*box_inner[1]+(frame[3]/2)]
		move_to(frame[2]/2,frame[3]/2)
		line_to(this_pos)
		// line_to(this_pos[0],frame[3]/2)
		// line_to(frame[2]/2,frame[3]/2)
		stroke()
		set_source_rgba(0,0.4,0.1,1)
		arc(this_pos,r,0,6.28)
		fill()

		scale(1/zoom,1/zoom)
		translate(rect[0],0)
		scale(zoom,zoom)
		set_source_rgba(offcolor_rgba)
		rectangle(frame)
		stroke()
		this_pos = [pos[1]*box_inner[0]+(frame[2]/2),pos[2]*box_inner[1]+(frame[3]/2)]
		move_to(frame[2]/2,frame[3]/2)
		line_to(this_pos)
		// line_to(this_pos[0],frame[3]/2)
		// line_to(frame[2]/2,frame[3]/2)
		stroke()
		set_source_rgba(0.3,0,0.7,1)
		arc(this_pos,r,0,6.28)
		fill();


	}

}


function scale(p,c){
	return p.map(function (v,i) {
		var range = Math.abs(cube[i][0]-cube[i][1])
		// post(range,'\n')
	} )
}

// ----------------------- COLOUR HANDLING -----------------------

function patch_color(c){
	if (typeof c === "string" && patch_attrs.indexOf(c) !== -1) { return patch.getattr(c) }
	else if (c.length == 4) return c;
}
patch_color.local = 1;


// ----------------------- MAX MESSAGES -----------------------

function coords(x,y,z) { pos = [x,y,z]; mgraphics.redraw(); }

mgraphics.redraw();
