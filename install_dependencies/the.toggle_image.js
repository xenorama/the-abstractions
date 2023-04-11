autowatch = 1;
outlets = 2;

max.clearmaxwindow();

this.box.message("border", 0);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

/*
VARIABLES
*/

var PI = 3.14
var HALFPI = PI/2;
var TWOPI = PI*2;

var val = 0;
function getvalueof() { return val; }
function setvalueof(v) { val = v; output(); }
var updated = 0;
var content = new Image();

var rd = 0.995
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

var text;
var fontsize = 12;
var fontname = "Lato";
var text_width = [0];
var t_width = 0;
var t_height = 0;


var orientation = 1;
var justification = 0;
var width = 43;
var panel_height = width/2;
var box_width = this.box.rect[2] - this.box.rect[0];
var box_height = this.box.rect[3] - this.box.rect[1];

var hover = 0;
var off_alpha = 0.66;

var layout = 5;

var outline = 2;
var panel_fill = 0;
var blob_dim = 0;
var bg_width = 0;
var bg_alpha = 0.24;
var blob_size = 0.67;

var multi_line = 0;

// if (!multi_line) box.size(width,panel_height);

/*
ATTRIBUTES
*/

declareattribute("text","get_text","set_text",1);
function set_text() { updated = 0; text = arrayfromargs(arguments); mgraphics.redraw(); /*forcesize();*/ }; set_text.local = 1;
function get_text() { return text };

declareattribute("orientation","get_orientation","set_orientation",1);
function set_orientation(ornt) { updated = 0; orientation = ornt; mgraphics.redraw(); /*forcesize();*/ }; set_orientation.local = 1;
function get_orientation() { return orientation };

declareattribute("justification","get_justification","set_justification",1);
function set_justification(just) { updated = 0; justification = just; mgraphics.redraw(); /*forcesize();*/  }; set_justification.local = 1;
function get_justification() { return justification };

declareattribute("width","get_width","set_width",1);
function set_width(s) { updated = 0; width = s; mgraphics.redraw(); forcesize(); }; set_width.local = 1; // /*forcesize(/*box_meas()[0],box_meas()[1]*/);
function get_width() { return width };

declareattribute("fontname","get_fontname","set_fontname",1);
function set_fontname(fn) { updated = 0; fontname = fn; mgraphics.redraw() }; set_fontname.local = 1;
function get_fontname() { return fontname };

declareattribute("fontsize","get_fontsize","set_fontsize",1);
function set_fontsize(fs) { updated = 0; fontsize = fs; mgraphics.redraw() }; set_fontsize.local = 1;
function get_fontsize() { return fontsize };

declareattribute("off_alpha","get_off_alpha","set_off_alpha",1);
function set_off_alpha(oa) { off_alpha = Math.min(Math.max(oa,0),1); mgraphics.redraw() }; set_off_alpha.local = 1;
function get_off_alpha() { return off_alpha };

declareattribute("bg_alpha","get_bg_alpha","set_bg_alpha",1);
function set_bg_alpha(oa) { bg_alpha = Math.min(Math.max(oa,0),1); mgraphics.redraw() }; set_bg_alpha.local = 1;
function get_bg_alpha() { return bg_alpha };

declareattribute("bg_width","get_bg_width","set_bg_width",1);
function set_bg_width(bgw) { bg_width = Math.min(Math.max(bgw,0),1); mgraphics.redraw() }; set_bg_width.local = 1;
function get_bg_width() { return bg_width };

declareattribute("blob_size","get_blob_size","set_blob_size",1);
function set_blob_size(bs) { blob_size = Math.min(Math.max(bs,0.1),0.8); mgraphics.redraw() }; set_blob_size.local = 1;
function get_blob_size() { return blob_size };

declareattribute("outline","get_outline","set_outline",1);
function set_outline(b) { outline = b; mgraphics.redraw() }; set_outline.local = 1;
function get_outline() { return outline };

declareattribute("multi_line","get_multi_line","set_multi_line",1);
function set_multi_line(ml) { updated = 0; multi_line = ml; mgraphics.redraw() }; set_multi_line.local = 1;
function get_multi_line() { return multi_line };

declareattribute("layout","get_layout","set_layout",1);
function set_layout(l) {
	switch(l){
		case 1:
			outline = 0;
			panel_fill = 1;
			blob_dim = 1;
			bg_width = 0;
			blob_size = 0.67;
			bg_alpha = 0.24;
			break;
		case 2:
			outline = 0;
			panel_fill = 0;
			blob_dim = 0;
			bg_width = 1;
			blob_size = 0.67;
			bg_alpha = 0.36;
			break;
		case 3:
			outline = 1;
			panel_fill = 1;
			blob_dim = 0;
			bg_width = 0;
			blob_size = 0.5;
			bg_alpha = 0.24;
			break;
		case 4:
			outline = 0;
			panel_fill = 0;
			blob_dim = 0;
			bg_width = 0.5;
			blob_size = 0.45;
			bg_alpha = 0.5;
			break;
		case 5:
			outline = 0;
			panel_fill = 1;
			blob_dim = 0;
			bg_width = 0;
			blob_size = 0.45;
			bg_alpha = 0.24;
			break;
		case 6:
			outline = 1;
			panel_fill = 0;
			blob_dim = 0;
			bg_width = 0;
			blob_size = 0.6;
			bg_alpha = 0.24;
			break;
		case 7:
			outline = 0;
			panel_fill = 1;
			blob_dim = 0;
			bg_width = 0.5;
			blob_size = 0.45;
			bg_alpha = 0.24;
			break;
		case 8:
			outline = 0;
			panel_fill = 1;
			blob_dim = 0;
			bg_width = 1;
			blob_size = 0.75;
			bg_alpha = 0.4;
			break;
		default:
			outline = 1;
			panel_fill = 0;
			blob_dim = 0;
			bg_width = 0;
			blob_size = 0.67;
			bg_alpha = 0.24;
	}
	layout = l;
	mgraphics.redraw() };
set_layout.local = 1;
function get_layout() { return layout };

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



/*
DRAW CONTENT (MGRAPHICS)
*/

function update(){
	var rd = (width/2);
	line_width = width * 0.025
	rd -= line_width;

	var offset = line_width;
	var panel_width = width-(2*offset);
	panel_height = width/2-(2*offset);

	with (mgraphics) {
		push_group()
		identity_matrix();
		translate(-7,-7);

		// OUTLINE
		current_color =
		(!val) ?
		((hover) ?
		hovercolor_rgba : offcolor_rgba) :
		((outline) ?
		((panel_fill) ?
		((hover) ? hovercolor_rgba : offcolor_rgba) : oncolor_rgba) : ((hover) ? hovercolor_rgba : offcolor_rgba));
		set_source_rgba(current_color);

		if (orientation == 0) translate(box_width-width-line_width,0);

		if (outline || panel_fill) {

			rectangle_rounded(offset,offset,panel_width,panel_height,rd,rd)

			if (panel_fill && !outline) fill();
			else if (!panel_fill && outline) stroke();
			else { fill_preserve(); set_line_width(line_width); set_source_rgba(oncolor_rgba); if (val) stroke(); else stroke_with_alpha(bg_alpha) }
		}

		rd = width/4;
		var pos = (val) ? [width-rd,rd] : [rd,width-rd];

		// BG SLIDER

		if (bg_width > 0) {
			if (panel_fill) set_source_rgba(oncolor_rgba); else set_source_rgba(offcolor_rgba);
			move_to(pos[1],rd);
			set_line_width(blob_size*panel_height*1.1*bg_width)
			set_line_cap("round")
			line_to(pos[0],rd)
			stroke_with_alpha(bg_alpha)
			if (!val) {
				if (hover) set_source_rgba(hovercolor_rgba);
				else set_source_rgba(offcolor_rgba);
			}
			else set_source_rgba(oncolor_rgba);
		}

		// BLOB

		move_to(pos[0],rd);
		arc(pos[0],rd,Math.abs(rd*blob_size),0,TWOPI);
		if (blob_dim) {
			if (panel_fill) { set_source_rgba(oncolor_rgba); if (val) fill(); else fill_with_alpha(0.33); }
			else if (val) { set_source_rgba(oncolor_rgba); fill(); }
			else if (hover) { set_source_rgba(hovercolor_rgba); stroke(); }
			else { set_source_rgba(offcolor_rgba); stroke(); }
		}
		else if (panel_fill) {
			set_source_rgba(oncolor_rgba);
			if (!val) {
				set_line_width(line_width);
				if (bg_width > 0) {
					scale_source_rgba(0.7,0.7,0.7,1);
					set_source_rgba(oncolor_rgba);
					fill() }
				else fill_with_alpha(bg_alpha); }
			else fill(); }
		else fill()

		// toggle = new Image(pop_group())

		// TEXT

		if (text && text.length !== 0){
			// push_group();
			identity_matrix();
			translate(-7,-7);
			if (orientation == 1) move_to(width+rd,rd-(line_width*3)+(fontsize/2));
			else move_to(line_width,rd-(line_width*3)+(fontsize/2))
			select_font_face(fontname)
			set_font_size(fontsize);
			text_vis = (text.length == 1) ? [text[0],text[0]] : text;
			set_source_rgba(textcolor_rgba);
			t_width = (val) ? text_measure(text_vis[1])[0] : text_measure(text_vis[0])[0]
			var t_pos_x = (orientation == 0) ? line_width : width+rd;
			if (justification == 1 && !multi_line){
				if (orientation == 0){
					rel_move_to(box_width-t_width-(width+rd),0);
					t_pos_x = 0;
				}
				else /*if (orientation == 1) */ {
					rel_move_to(box_width-(width*1.5)-t_width+10,0);
					t_pos_x = box_width-(width*1.5);
				}
			}
			if (multi_line) {
				t_pos_x = 0;
				if (orientation == 0) translate(0,2); else translate(width+rd,2);
				if (val) wordwrap(text_vis[1],box_width-width,t_pos_x); else wordwrap(text_vis[0],box_width-width,t_pos_x);
			}
			else {
				rel_move_to(-1,0.5)
				if (val) text_path(text_vis[1]); else text_path(text_vis[0]);
				t_width = Math.max(text_measure(text_vis[0])[0],text_measure(text_vis[1])[0])
			}
			if (hover) fill(); else fill_with_alpha(off_alpha+(val*(1-off_alpha)));
		}
		content = new Image(pop_group());
		forcesize();
	}
	updated = 1;
}
update.local = 1;

function paint() {
	if (!updated) update();
	mgraphics.image_surface_draw(content)
	// if (updated == 0) forcesize();
}

/*
WRAP TEXT AROUND
*/

function wordwrap(str, t_width,tpx /*, brk, cut */)
{
  var brk = brk || '\\cr';
  textblock_width = Math.floor((box_width-(width/2))*2/fontsize)-2;
  var cut = cut || false;
  if (!str) { return str; }
  var regex = '.{1,' +textblock_width+ '}(\\s|$)' + (cut ? '|.{' +textblock_width+ '}|.+$' : '|\\S+?(\\s|$)');
  var v=str.match( RegExp(regex, 'g') );
	var line_length = 0;
	var text_meas = [];
	with (mgraphics) {
		if (justification == 1) {
			for(i=0;i<v.length;i++) {
				text_meas.push(text_measure(v[i])[0]);
				if (text_meas[i] > line_length) { line_length = text_meas[i]; }
			}
		}
		if (v.length > 1) translate(0,-4)
		for(i=0;i<v.length;i++){
			if (justification == 0 && v[i].length > line_length) { line_length = v[i].length; }
			else if (justification == 1) { tpx = (orientation) ? box_width-width-10-text_meas[i] : box_width-width-10-text_meas[i]-((i==v.length-1)*3.2) }
			move_to(tpx, fontsize * (i+1) + (i*2));
			text_path(v[i]);
		}
	}

	t_width = line_length - width +10;
	panel_height = (v.length) * fontsize + 5 + ((v.length+1)*2);

	return;
}
wordwrap.local = 1;


/*
MOUSE INTERACTION
*/

function onclick()
{
	val = !val;
	hover = 1;
	output();
}
onclick.local = width;

function onidle(x,y,but,cmd,shift,capslock,option,ctrl)
{
	hover = 1;
	mgraphics.redraw();
}
onclick.local = 1;

function onidleout(x,y,but,cmd,shift,capslock,option,ctrl)
{
	hover = 0;
	mgraphics.redraw();
}
onclick.local = 1;

function onresize(w,h)
{
	hover = 0;
	updated = 0;
	// box_meas();
	forcesize();
	updated = 0;
	mgraphics.redraw();
}
onresize.local = 1;


/*
JSUI BOX ATTRIBUTES
*/

function forcesize(/*w,h*/)
{
	if (!multi_line) {
		var w = width;
		h = width/2+line_width;
		if (text !== undefined && w < (width + t_width + 10)) w = width + t_width + 10;
		w = Math.max(box_meas()[0],w);
		// else w = width;
	}
	else {
		var w = Math.max(box_meas()[0],width);
		h = panel_height;
	}
	post(w,h,'\n')
	box.size(w,h);
	// updated = 1;
	// if (updated == 0) { updated = 1; mgraphics.redraw(); }
}
forcesize.local = 1;

function calcAspect() {
	// if (this.box.getattr("presentation")) {
	// 	box_width = this.box.getattr("presentation_rect")[2] - this.box.getattr("presentation_rect")[0];
	// 	box_height = this.box.getattr("presentation_rect")[3] - this.box.getattr("presentation_rect")[1];
	// }
	// else {
		box_width = this.box.rect[2] - this.box.rect[0];
		box_height = this.box.rect[3] - this.box.rect[1];
	// }
	return width/height;
}
calcAspect.local = 1;

function box_meas() {
	// if (this.box.getattr("presentation")) {
	// 	box_width = this.box.getattr("presentation_rect")[2] - this.box.getattr("presentation_rect")[0];
	// 	box_height = this.box.getattr("presentation_rect")[3] - this.box.getattr("presentation_rect")[1];
	// }
	// else {
		box_width = this.box.rect[2] - this.box.rect[0];
		box_height = this.box.rect[3] - this.box.rect[1];
	// }
	return [box_width,box_height];
}
box_meas.local = 1;


/*
COLOR HANDLING
*/

function patch_color(c){
	if (typeof c === "string" && patch_attrs.indexOf(c) !== -1) { return patch.getattr(c) }
	else if (c.length == 4) return c;
}
patch_color.local = 1;


/*
MAX MESSSGES
*/

function msg_float(i) { msg_int(i); }

function msg_int(v)
{
	val = v != 0;
	output();
}

function set(i){ val = i; mgraphics.redraw(); }

function bang(){
	val = 1-val;
	output();
}

function output()
{
	// refresh();
	notifyclients();
	outlet(0,val);
	outlet(1,"set",val);
	mgraphics.redraw();
}


updated = 0;
mgraphics.redraw();
