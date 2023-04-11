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

var val = 0;
function getvalueof() { return val; }
function setvalueof(v) { mouse = 0; val = v; output(); }

// var rd = 0.995
var line_width = 2
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

var hover = 0;
var off_alpha = 0.66;

var blob_size = 0.67;
var pos = [0,999];
var mouse = 0;


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
	if (rect[1] > rect[0]) orientation = 1;
	else orientation = 0;

	with (mgraphics) {

		if (orientation == 0) {

			if (mouse) val = Math.min(1,Math.max(0,pos[0]/rect[0]));

			var m = rect[1]*0.15
			var xpos = (rect[0]-(m*2))*val + m;

			set_source_rgba(textcolor_rgba)
			rectangle_rounded(xpos,rect[1]/2-m,rect[0]-xpos-m,m*2,m*2,m*2)
			// stroke_preserve()
			fill();

			rectangle_rounded(m,rect[1]/2-m,xpos,m*2,m*2,m*2)
			// set_source_rgba(textcolor_rgba)
			var coeff = 1.5;
			var r = m*3;;
			set_line_width(r*(0.67/coeff))
			stroke_preserve()
			set_source_rgba(oncolor_rgba)
			fill();

			set_source_rgba(textcolor_rgba)
			arc(((rect[0]-(2*r))*val)+r,rect[1]/2,r,0,TWOPI)
			fill();
			r *= 1/coeff;
			set_source_rgba(oncolor_rgba)
			arc(((rect[0]-(r*2*coeff))*val)+(r*coeff),rect[1]/2,r,0,TWOPI)
			fill();


		}
		else if (orientation == 1) {

			if (mouse) val = Math.min(1,Math.max(0,(rect[1]-pos[1])/rect[1]));

			var m = rect[0]*0.15
			var ypos = (rect[1]-(m*2))*val + m;

			set_source_rgba(textcolor_rgba)
			rectangle_rounded(rect[0]/2-m,0,m*2,rect[1]-ypos+m,m*2,m*2)
			// stroke_preserve()
			fill();
			rectangle_rounded(rect[0]/2-m,rect[1]-ypos,m*2,ypos-m,m*2,m*2)
			var r = m*3;;
			var coeff = 1.5;
			set_line_width(r*(0.67/coeff))
			stroke_preserve();
			set_source_rgba(oncolor_rgba)
			fill();

			set_source_rgba(textcolor_rgba)
			arc(rect[0]/2,rect[1]-((rect[1]-(r*2))*val + r),r,0,TWOPI)
			fill();
			r *= 1/coeff;
			set_source_rgba(oncolor_rgba)
			arc(rect[0]/2,rect[1]-((rect[1]-(r*2*coeff))*val + (r*coeff)),r,0,TWOPI)
			fill();

		}

	}

}


// ----------------------- MOUSE INTERACTION -----------------------

function onclick(x,y)
{ ondrag(x,y);  }
onclick.local = 1;

function ondrag(x,y)
{ mouse = 1; pos = [x,y]; output(); mgraphics.redraw() }
onclick.local = 1;


function output()
{
	notifyclients();
	outlet(0,val);
	mgraphics.redraw();
}
output.local = 1;


// ----------------------- COLOUR HANDLING -----------------------

function patch_color(c){
	if (typeof c === "string" && patch_attrs.indexOf(c) !== -1) { return patch.getattr(c) }
	else if (c.length == 4) return c;
}
patch_color.local = 1;


// ----------------------- MAX MESSAGES -----------------------

function msg_float(f) { mouse = 0; val = Math.min(1,Math.max(0,f)); output(); }

function set(i){ mouse = 0; val = i; notifyclients(); mgraphics.redraw(); }

function bang(){ output(); }

// box.size(150,12)
mgraphics.redraw();
