/*
the.tab.js
xenorama style tab
*/

// ----------------------- TODO -----------------------

/*

*/


// ----------------------- MAX OBJ -----------------------

inlets = 2;
outlets = 4;
autowatch = 1;

// debug mode
max.clearmaxwindow();

// comments when hovering over inlets in patcher
setinletassist(0, 'attributes, int (selection)');
setinletassist(1, 'tab_name + object names: hide objects per tab, stored in named dictionary');
setoutletassist(0, 'int: tab selection');
setoutletassist(1, 'symbol: selected tab name');
setoutletassist(2, 'list: indexed \'hidden\' messages for UI control');
setoutletassist(3, 'dictionary: object view mappings');


// ----------------------- JSUI -----------------------

// initialize mgraphics
this.box.message("border", 0);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// update jsui box information
// var width = (this.box.rect[2] - this.box.rect[0]);
// var height = this.box.rect[3] - this.box.rect[1];
var width, height, ui_width, ui_height

// ----------------------- VARIABLES -----------------------

var click = 0; // idle so far, to be used in poly mode
// var PI = 3.14;
// var HALFPI = PI/2;
var selection = 0;
var hover = -1;
var fontname = "Lato";
var font_size = 12;
var line = 2;
var rounded = 6;
var tab_width = 100;
var tab_height = 50;
var tab_offset = 0.;
// var ui_width = this.box.rect[2] - this.box.rect[0] - tab_width - rounded + line;
// var ui_height = this.box.rect[3] - this.box.rect[1];

var autoscale_height = 1;
var tabs = ["one","two","three"];
var max_height = tabs.length*tab_height;
var patch = this.patcher;
var patch_attrs = patch.getattrnames();
var bg_color = "elementcolor";
var fg_color = "textcolor_inverse";
var ht_color = "bgcolor";
var framecolor = "textcolor";
var selcolor = "color";
var hilite_color = "accentcolor";
var panel_color = "color";
var bgcolor_rgba = patch_color(bg_color);
var fgcolor_rgba = patch_color(fg_color);
var htcolor_rgba = patch_color(ht_color);
var framecolor_rgba = patch_color(framecolor);
var selcolor_rgba = patch_color(selcolor);
var hilite_color_rgba = patch_color(hilite_color);
var panel_color_rgba = patch_color(panel_color);
var panel_alpha = 0.1;
var frame_alpha = 0.1;
var style = 0;
var hide_objs_by_tab = 1;
var dictionary = undefined;
var obj_dict = undefined;
var active = undefined;
// var active = undefined;
var gradients = 1;
var blobs = 1;
var blank = new RegExp('^(-|–|—|\s)$')
var inactive = new RegExp('^\\((.*)\\)$')
var header = 0;
var info_text = 1;
var svg_px = [];
var svg_mg = [];
svg_imgs();

function svg_imgs(){
  for (s=0;s<svg_px.length;s++) {
    if (blank.test(svg_px[s])) svg_mg[s] = 0;
    else svg_mg[s] = new MGraphicsSVG(svg_px[s])
  };
} svg_imgs.local = 1;
// var pr = new MaxobjListener(this.box,"presentation_rect",p_resize);
// var blank = new RegExp('^[-–—\s]$')


// ----------------------- ATTRIBUTES -----------------------

declareattribute("autoscale_height","get_autoscale_height","set_autoscale_height",1);
function set_autoscale_height(a) { autoscale_height = (a !== 0); forcesize(); mgraphics.redraw() }; set_autoscale_height.local = 1;
function get_autoscale_height() { return autoscale_height };

declareattribute("tabs","get_tabs","set_tabs",1);
function set_tabs() { tabs = arrayfromargs(arguments); forcesize(); mgraphics.redraw() }; set_tabs.local = 1;
function get_tabs() { return tabs };

declareattribute("rounded","get_rounded","set_rounded",1);
function set_rounded(r) { rounded = Math.max(Math.min(r,tab_height/2),0); mgraphics.redraw() }; set_rounded.local = 1;
function get_rounded() { return rounded };

declareattribute("tab_width","get_tab_width","set_tab_width",1);
function set_tab_width(ts) { tab_width = ts; mgraphics.redraw() }; set_tab_width.local = 1;
function get_tab_width() { return tab_width };

declareattribute("tab_height","get_tab_height","set_tab_height",1);
function set_tab_height(th) { tab_height = th; forcesize(); mgraphics.redraw() }; set_tab_height.local = 1;
function get_tab_height() { return tab_height };

declareattribute("font_size","get_font_size","set_font_size",1);
function set_font_size(fs) { font_size = fs; mgraphics.redraw() }; set_font_size.local = 1;
function get_font_size() { return font_size };

declareattribute("line","get_line","set_line",1);
function set_line(l) {
  line = Math.max(0,Math.min(l,font_size));
  mgraphics.redraw()
}; set_line.local = 1;
function get_line() { return line };

declareattribute("fontname","get_fontname","set_fontname",1);
function set_fontname(fn) { fontname = fn; mgraphics.redraw() }; set_fontname.local = 1;
function get_fontname() { return fontname };

declareattribute("tab_offset","get_tab_offset","set_tab_offset",1);
function set_tab_offset(tbofst) { tab_offset = Math.max(tbofst,Math.min(tbofst,1)); mgraphics.redraw() }; set_tab_offset.local = 1;
function get_tab_offset() { return tab_offset };

declareattribute("panel_alpha","get_panel_alpha","set_panel_alpha",1);
function set_panel_alpha(pa) { panel_alpha = Math.max(0,Math.min(pa,1)); mgraphics.redraw() }; set_panel_alpha.local = 1;
function get_panel_alpha() { return panel_alpha };

declareattribute("frame_alpha","get_frame_alpha","set_frame_alpha",1);
function set_frame_alpha(pa) { frame_alpha = Math.max(0,Math.min(pa,1)); mgraphics.redraw() }; set_frame_alpha.local = 1;
function get_frame_alpha() { return frame_alpha };

declareattribute("style","get_style","set_style",1);
function set_style(s) { style = s; mgraphics.redraw() }; set_style.local = 1;
function get_style() { return style };

declareattribute("hide_objs_by_tab","get_hide_objs_by_tab","set_hide_objs_by_tab",1);
function set_hide_objs_by_tab(hobt) { hide_objs_by_tab = hobt !== 0; output_sel() }; set_hide_objs_by_tab.local = 1;
function get_hide_objs_by_tab() { return hide_objs_by_tab };

declareattribute("dictionary","get_dictionary","set_dictionary",1);
function set_dictionary(hp) { if (hp) { dictionary = hp; obj_dict = new Dict(hp)} else { dictionary = undefined; obj_dict = undefined}; output_sel()}; set_dictionary.local = 1;
function get_dictionary() { return dictionary };

declareattribute("active","get_active","set_active",1);
function set_active(a) { active = (arguments.length) ? arrayfromargs(arguments) : undefined; mgraphics.redraw();}; set_active.local = 1;
function get_active() { return active };

declareattribute("gradients","get_gradients","set_gradients",1);
function set_gradients(g) { gradients = g !== 0; mgraphics.redraw();}; set_gradients.local = 1;
function get_gradients() { return gradients };

declareattribute("header","get_header","set_header",1);
function set_header(h) { header = h !== 0; mgraphics.redraw() }; set_header.local = 1;
function get_header() { return header };

declareattribute("info_text","get_info_text","set_info_text",1);
function set_info_text(it) { info_text = it !== 0; mgraphics.redraw() }; set_info_text.local = 1;
function get_info_text() { return info_text };

// declareattribute("blobs","get_blobs","set_blobs",1);
// function set_blobs(b) { blobs = b !== 0; mgraphics.redraw();}; set_blobs.local = 1;
// function get_blobs() { return blobs };

declareattribute("bg_color","get_bg_color","set_bg_color",1);
function set_bg_color() {
	bg_color = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	bgcolor_rgba = patch_color(bg_color);
	mgraphics.redraw() };
	set_bg_color.local = 1;
function get_bg_color() { return bg_color };

declareattribute("fg_color","get_fg_color","set_fg_color",1);
function set_fg_color() {
	fg_color = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	fgcolor_rgba = patch_color(fg_color);
	mgraphics.redraw() };
	set_fg_color.local = 1;
function get_fg_color() { return fg_color };

declareattribute("ht_color","get_ht_color","set_ht_color",1);
function set_ht_color() {
	ht_color = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	htcolor_rgba = patch_color(ht_color);
	mgraphics.redraw() };
	set_ht_color.local = 1;
function get_ht_color() { return ht_color };

declareattribute("framecolor","get_framecolor","set_framecolor",1);
function set_framecolor() {
	framecolor = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	framecolor_rgba = patch_color(framecolor);
	mgraphics.redraw() };
	set_framecolor.local = 1;
function get_framecolor() { return framecolor };

declareattribute("selcolor","get_selcolor","set_selcolor",1);
function set_selcolor() {
	selcolor = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	selcolor_rgba = patch_color(selcolor);
	mgraphics.redraw() };
	set_selcolor.local = 1;
function get_selcolor() { return selcolor };

declareattribute("hilite_color","get_hilite_color","set_hilite_color",1);
function set_hilite_color() {
	hilite_color = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	hilite_color_rgba = patch_color(hilite_color);
	mgraphics.redraw() };
	set_hilite_color.local = 1;
function get_hilite_color() { return hilite_color };

declareattribute("panel_color","get_panel_color","set_panel_color",1);
function set_panel_color() {
	panel_color = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	panel_color_rgba = patch_color(panel_color);
	mgraphics.redraw() };
	set_panel_color.local = 1;
function get_panel_color() { return panel_color };

declareattribute("svg_px","get_svg_px","set_svg_px",1);
function set_svg_px() {
  svg_px = arrayfromargs(arguments);
  if (svg_px.length) {
    svg_mg = [];
    svg_imgs();
  }
  mgraphics.redraw();
};
set_svg_px.local = 1;
function get_svg_px() { return svg_px };


// ----------------------- MGRAPHICS -----------------------

  function paint(){

    width = mgraphics.size[0];
    height = mgraphics.size[1]

    var offset = line/1.5;

    if (autoscale_height) {
      tab_height = (height-line)/tabs.length;
      // tab_height = (ui_height-line)/tabs.length;
    }
    // rounded = (isNaN(rounded)) ? 6 : Math.max(Math.min(rounded,tab_height/2),0)
    rounded = Math.max(Math.min(rounded,tab_height/2),0)

  	// var max_height = (autoscale_height) ? tabs.length*tab_height : mgraphics.size[1];
  	var max_height = tabs.length*tab_height;
  	ui_width = width-tab_width-rounded+line;
  	// ui_width = mgraphics.size[0];
    ui_height = mgraphics.size[1];
    var dist_outer = rounded+offset;
    var dist_inner = rounded;
    var tot_tab_width = tab_width+offset;
    var tot_width = width-line;
    var frame_end_x = tot_width;
    var frame_begin_x = tab_width;
    var upper_tab_edge_y = selection*tab_height;
    var upper_tab_inner_edge_y = selection*tab_height-line;
    var frame_higher_edge = upper_tab_edge_y+line;
    var frame_lower_edge = frame_higher_edge+tab_height;
    var tab_lower_edge = frame_lower_edge-line;
    var ovalize_thresh = max_height+line+line;
    var tab_edge_x = tab_width-line;
    var tab_higher_edge = tab_lower_edge-line;
    // max_height = (autoscale_height) ? tabs.length*tab_height : mgraphics.size[1];
    var frame_end_y = Math.max(max_height,ui_height-line);

    if (style == 0)
    {
      with (mgraphics){
        translate(offset,offset)
        set_source_rgba(panel_color_rgba);
        set_line_width(line/2);
        move_to(frame_begin_x,0);
        line_to(frame_end_x,0);
        line_to(frame_end_x,frame_end_y);
        line_to(frame_begin_x,frame_end_y);
        if (selection !== -1){
          line_to(frame_begin_x,tab_lower_edge);
          line_to(0,tab_lower_edge);
          line_to(0,upper_tab_edge_y);
          line_to(frame_begin_x,upper_tab_edge_y)
        }
        close_path();
        if (rounded > 0) path_roundcorners(dist_outer)

        if (gradients) {
          var panel = pattern_create_linear(tab_width,ui_height/2,width,ui_height/2);
          panel.add_color_stop_rgba(0,panel_color_rgba);
          panel.add_color_stop_rgba(1,0,0,0,0);
          set_source(panel);
        }
        else set_source_rgba(panel_color_rgba);
        fill_preserve_with_alpha(panel_alpha);
        set_source_rgba(framecolor_rgba);
        stroke_with_alpha(frame_alpha);

        if (header && selection !== -1) {
          move_to(tab_width+(tab_height/2),(tab_height/2)+(tab_height/6));
          select_font_face(fontname)
          set_font_size(tab_height/2);
          var text = tabs[selection]
          set_source_rgba(framecolor_rgba)
          text_path(text);
          fill();
          move_to(tab_width+(tab_height/2),tab_height-(tab_height/6));
          line_to(width-(tab_height-(tab_height/6)),tab_height-(tab_height/6));
          stroke();
        }
        // post(tab_color,'\n')
        // var length = text_measure(text)[0];
        // var compress = Math.min(Math.max(((tab_width-shift-shift)/length),0),1);
        // scale(compress,1);
        else fill();

      }
      offset += 0.5;

    	for (t=0;t<tabs.length;t++){
    		var height = t * tab_height;
        var blank_tab = blank.test(tabs[t]);
        var inactive_tab = inactive.test(tabs[t]);
        with (mgraphics) {
          identity_matrix();
          translate(offset,offset)
          var tab_color = selcolor_rgba;
          var enabled = (blank_tab || inactive_tab || (active !== undefined && active.indexOf(tabs[t]) == -1)) ? 0 : 1;
    			if (enabled) {
            if (selection !== t && hover !== t) tab_color = bgcolor_rgba;
      			else if (hover == t && selection !== t) tab_color = hilite_color_rgba;
            set_source_rgba(tab_color);

      			move_to(offset+1,height+offset+1);
            line_to(tab_width-offset-2,height+offset+1);
            line_to(tab_width-offset-2,height+tab_height-offset-2);
      			line_to(offset+1,height+tab_height-offset-2);
      	    close_path();
            if (rounded > 0) path_roundcorners(dist_inner);

            if (gradients) {
              var thistab = pattern_create_linear(0,height,tab_width+200,tab_height+height+200);
              thistab.add_color_stop_rgba(0,tab_color);
              thistab.add_color_stop_rgba(1,0,0,0,0);
              set_source(thistab);
            }
            else set_source_rgba(tab_color);

      			fill();
          }
        }
        if (!blank_tab) {
          // post(height,'\n')
          if (!svg_mg[t]) render_tabs(height,0,enabled,t,0);
          else if (!info_text) render_svg(t,0,height,tab_height/2,enabled);
          else if (hover == t) render_tabs(height,0,enabled,t,0); else { render_svg(t,0,height,tab_height/2,enabled); /* render_tabs(height,0,enabled,t,tab_height); */ }
        }
      }
    }
} paint.local = 1;


// ----------------------- TEXT -----------------------

function render_tabs(height,offset,enabled,t,r){
  var shift = peak([rounded,line,font_size,16,r]);
  with (mgraphics){
    if (!enabled) set_source_rgba(bgcolor_rgba)
    else if (selection !== t) set_source_rgba(fgcolor_rgba);
    else set_source_rgba(htcolor_rgba)
    move_to(shift,height+(tab_height/2)+(font_size/4)+offset);
    select_font_face(fontname)
    set_font_size(font_size);
    var text = tabs[t].replace(inactive,'$1');
    var length = text_measure(text)[0];
    var compress = Math.min(Math.max(((tab_width-shift-shift)/length),0),1);
    scale(compress,1);
    text_path(text);
    // set_line_width(0.2)   // imitate BOLD fontface
    // stroke_preserve()
    fill();
  }
} render_tabs.local = 1;


// ----------------------- VECTOR SYMBOLS -----------------------

function render_svg(logo,x,y,w,enabled){
  var shift = peak([rounded,line,font_size,16]);
  with (mgraphics) {
    // identity_matrix();
    // translate(x,y);
    translate(shift,y+(tab_height/4))
    if (svg_mg[logo] != 0) {
      var resize = normalize(svg_mg[logo].size,w*0.96)
      scale(resize,resize);
      svg_mg[logo].mapreset()
      if (!enabled) svg_mg[logo].mapcolor([0,0,0,1],bgcolor_rgba);
      else if (selection != logo) svg_mg[logo].mapcolor([0,0,0,1],fgcolor_rgba);
      else svg_mg[logo].mapcolor([0,0,0,1],htcolor_rgba);
      svg_render(svg_mg[logo]);
      fill();
      scale(1/resize,1/resize);
      translate(-shift,-y-(tab_height/4))
    }
  }
} render_svg.local = 1;

function normalize(svg_size,coeff,axis){
  return svg_size.map(function (coord) { return coeff / coord });
} normalize.local = 1;


// ----------------------- MOUSE INTERACTION -----------------------

function onidle(x,y){
  this.click = 0;
  if (x <= rounded+tab_width && y < (tabs.length)*tab_height) {
    hover = Math.floor(y/tab_height);
    refresh();
  }
  else hover = -1;
} onidle.local = 1;

function onidleout(x,y){
  this.click = 0;
  hover = -1;
refresh();
} onidleout.local = 1;

function onresize(){
	// width = mgraphics.size[0];
	// height = mgraphics.size[1];
  // post("onresize",width,height,'\n')
  // post(mgraphics.size,'\n')
	width = this.box.rect[2] - this.box.rect[0];
	height = this.box.rect[3] - this.box.rect[1];
	ui_height = height;
	ui_width = width-tab_width-rounded+line;
  // post("resize >>",autoscale_height,'\n');
  forcesize();
	mgraphics.redraw();
} onresize.local = 1;

function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
  this.click = 1;
  if (x <= rounded+tab_width && y < (tabs.length)*tab_height) {
    if (active == undefined || active.indexOf(tabs[Math.floor(y/tab_height)]) !== -1) {

      var sel_tab = Math.floor(y/tab_height);
      if (!blank.test(tabs[sel_tab]) && !inactive.test(tabs[sel_tab])) {
        selection = sel_tab;
      }
      refresh();
    }
  }
  output_sel();
} onclick.local = 1;


// ----------------------- JSUI BOX -----------------------

function forcesize(){
  if (!autoscale_height) {
    max_height = tabs.length*tab_height;
    ui_height = mgraphics.size[1];
    if (ui_height <= max_height+line && width) { box.size(width,max_height+line);}
  }
} forcesize.local = 1;

function p_resize(pr){
  pr_xy = pr.value;
	width = pr_xy[2];
	height = pr_xy[3];
	ui_height = height;
	ui_width = width-tab_width-rounded+line;
  forcesize();
refresh();
}
p_resize.local = 1;


// ----------------------- FUNCTIONS -----------------------

// HIDE OBJECTS
var shown = [];
function output_sel(){
	outlet(0,selection);
  outlet(1,tabs[selection]);
  shown = [];
	for(sel=0;sel<tabs.length;sel++) {
    outlet(2,sel,"hidden",selection !== sel)
    var hidden = selection !== sel;
    if (obj_dict !== undefined) {
      if (obj_dict.contains(tabs[sel])) {
        var objs = obj_dict.get(tabs[sel]);
        if (objs instanceof Array) for (k in objs) { hide(objs[k],hidden);}
        else { hide(objs,hidden);}
      }
      else if (hide_objs_by_tab) hide(tabs[sel],hidden);
    }
    else if (hide_objs_by_tab) hide(tabs[sel],hidden);
  };
  if (obj_dict) outlet(3,"dictionary",obj_dict.name);
} output_sel.local = 1;

// FIND MAXIMUM VALUE
function peak(p){
  var maxval = 0;
  for (q in p) { if (p[q] > maxval) maxval = p[q];}
  return maxval;
} peak.local = 1;

// ----------------------- COLOR HANDLING -----------------------

function patch_color(c){
	if (typeof c === "string" && patch_attrs.indexOf(c) !== -1) { return patch.getattr(c) }
	else if (c.length == 4) return c;
}
patch_color.local = 1;

function get_prect(prect) { p_resize(prect.value); }
get_prect.local = 1;


// ----------------------- MAX MESSAGES -----------------------

function msg_int(s){
  if (!inactive.test(tabs[s]) && !blank.test(tabs[s]) && (active === undefined || active.indexOf(tabs[s]) == -1)) {
	   selection = Math.min(tabs.length-1,Math.max(-1,s));
	   output_sel();
	   refresh();
  }
}

function msg_float(f) { msg_int(Math.floor(f)); }

function hide(obj,h){
  if (shown.indexOf(obj) == -1) patch.message("script","sendbox",obj,"hidden",h);
  if (!h) shown.push(obj);

}

function anything(){
  var args = arrayfromargs(arguments);
  var msg = messagename;
  if (inlet == 1 && obj_dict !== undefined){
    var name_clean = msg.replace(inactive,"$1");
    if (args.length) obj_dict.replace(msg,args);
    else if (obj_dict.contains(msg)) obj_dict.remove(msg);
    output_sel();
  }
}


// ----------------------- INIT -----------------------

function init() { mgraphics.redraw(); }
init.local = 1;

// onresize();
init();
