/*
the.tab.js
xenorama style tab
*/

// ----------------------- TODO -----------------------

/*

*/


inlets = 2;
outlets = 4;
autowatch = 1;

// debug mode
// max.clearmaxwindow();

// comments when hovering over inlets in patcher
setinletassist(0, 'attributes, int (selection)');
setinletassist(1, 'tab_name + object names: hide objects per tab, stored in named dictionary dictionary');
setoutletassist(0, 'int: tab selection');
setoutletassist(1, 'symbol: selected tab name');
setoutletassist(2, 'list: indexed \'hidden\' messages for UI control');
setoutletassist(3, 'dictionary: object view mappings');

// ----------------------- TODO -----------------------

//

// ----------------------- JSUI -----------------------

// initialize mgraphics
this.box.message("border", 0);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// update jsui box information
// var width = (this.box.rect[2] - this.box.rect[0]);
// var height = this.box.rect[3] - this.box.rect[1];
var width, height

// ----------------------- VARIABLES -----------------------

var click = 0; // idle so far, to be used in poly mode
// var PI = 3.14;
// var HALFPI = PI/2;
var selection = 0;
var hover = -1;
var fontname = "Lato";
var font_size = 14;
var line = 2;
var rounded = 6;
var tab_width = 120;
var tab_height = 50;
var tab_offset = 0.;
var ui_width = this.box.rect[2] - this.box.rect[0] - tab_width - rounded + line;
var ui_height = this.box.rect[3] - this.box.rect[1];
var tabs = ["one","two","three"];
var max_height = tabs.length*tab_height;
var bgcolor = this.patcher.getattr("elementcolor");
var fgcolor = this.patcher.getattr("textcolor_inverse");
var htcolor = this.patcher.getattr("bgcolor");
var framecolor = this.patcher.getattr("textcolor");
var selcolor = this.patcher.getattr("color");
var hilite_color = this.patcher.getattr("accentcolor");
var panel_color = this.patcher.getattr("color");
var panel_alpha = 0.1;
var frame_alpha = 0.1;
var autoscale = 1;
var style = 0;
var hide_objs_by_tab = 1;
var dictionary = undefined;
var obj_dict = undefined;
var active = undefined;
var disabled = undefined;
var gradients = 1;
var blobs = 1;
// var blank = new RegExp('^[-–—\s\(\)]$')
var blank = new RegExp('^(-|–|—|\\s)$')
var inactive = new RegExp('^\\((.*)\\)$')
var orientation = 1;
// var sync = undefined;
// var inactive_size = 0.8;
// var blank = new RegExp('^[-–—\s]$')


declareattribute("tabs","get_tabs","set_tabs",1);
function set_tabs() { tabs = arrayfromargs(arguments); forcesize(); mgraphics.redraw() }; set_tabs.local = 1;
function get_tabs() { return tabs };

declareattribute("rounded","get_rounded","set_rounded",1);
function set_rounded(r) { rounded = Math.max(Math.min(r,tab_height/2),0); mgraphics.redraw() }; set_rounded.local = 1;
function get_rounded() { return rounded };

// declareattribute("inactive_size","get_inactive_size","set_inactive_size",1);
// function set_inactive_size(ias) { inactive_size = 1 - Math.max(Math.min(ias,1),0); mgraphics.redraw() }; set_inactive_size.local = 1;
// function get_inactive_size() { return inactive_size };

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

declareattribute("autoscale","get_autoscale","set_autoscale",1);
function set_autoscale(a) { autoscale = (a !== 0); forcesize(); mgraphics.redraw() }; set_autoscale.local = 1;
function get_autoscale() { return autoscale };

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

declareattribute("orientation","get_orientation","set_orientation",1);
function set_orientation(o) { orientation = o !== 0; mgraphics.redraw();}; set_orientation.local = 1;
function get_orientation() { return orientation };

// declareattribute("sync","get_sync","set_sync",1);
// function set_sync(s) { sync = (typeof s === "string") ? s : undefined; mgraphics.redraw() }; set_sync.local = 1;
// function get_sync() { return sync };

// declareattribute("blobs","get_blobs","set_blobs",1);
// function set_blobs(b) { blobs = b !== 0; mgraphics.redraw();}; set_blobs.local = 1;
// function get_blobs() { return blobs };

// ----------------------- RENDER -----------------------

init.local = 1;
paint.local = 1;
output_sel.local = 1;

function init(){
  mgraphics.redraw();
}


function paint(){
  var offset = line/1.5;

  width = mgraphics.size[0];
  height = mgraphics.size[1];

  // if (autoscale) {
  //   tab_height = (ui_height-line)/tabs.length;
  // }
  if (autoscale) {
    if (orientation == 0) {
      tab_width = width;
      tab_height = (height)/tabs.length;
    }
    else {
      tab_width = (width)/tabs.length;
      tab_height = height;
    }
  }
  // if (autoscale) {
  //   if (orientation == 1) { tab_width = (width-line)/tabs.length }
  //   else tab_height = (ui_height-line)/tabs.length;
  // }
  // post(tab_width,'\n')
  rounded = Math.max(Math.min(rounded,tab_height/2),0)

	max_height = (orientation) ? tabs.length*tab_width : tabs.length*tab_height;
	ui_width = (orientation) ? ui_width : width-tab_width-rounded+line;
  // post(ui_width,height,tab_height,rounded,line,'\n')
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
  max_height = (orientation) ? tabs.length*tab_width : tabs.length*tab_height;
  var frame_end_y = Math.max(max_height,ui_height-line);

  // forcesize();

  if (style == 0)
  {
    // with (mgraphics){
    //
    //   // identity_matrix();
    //   translate(offset,offset)
    //
    //   set_source_rgba(panel_color);
    //   set_line_width(line/2);
    //   move_to(frame_begin_x,0);
    //   line_to(frame_end_x,0);
    //   line_to(frame_end_x,frame_end_y);
    //   line_to(frame_begin_x,frame_end_y);
    //   if (selection !== -1){
    //     line_to(frame_begin_x,tab_lower_edge);
    //     line_to(0,tab_lower_edge);
    //     line_to(0,upper_tab_edge_y);
    //     line_to(frame_begin_x,upper_tab_edge_y)
    //   }
    //   close_path();
    //   if (rounded > 0) path_roundcorners(dist_outer)
    //
    //   if (gradients) {
    //     var panel = pattern_create_linear(tab_width,ui_height/2,width,ui_height/2);
    //     panel.add_color_stop_rgba(0,panel_color);
    //     panel.add_color_stop_rgba(1,0,0,0,0);
    //     set_source(panel);
    //   }
    //   else set_source_rgba(panel_color);
    //   fill_preserve_with_alpha(panel_alpha);
    //   set_source_rgba(framecolor);
    //   stroke_with_alpha(frame_alpha);
    // }


    // offset += 0.5;

    // var inactive_offset = 0;

    for (t=0;t<tabs.length;t++){
      var this_height = t * tab_height;
      var this_width = t * tab_width;
      var blank_tab = blank.test(tabs[t]);
      var inactive_tab = inactive.test(tabs[t]);
      with (mgraphics) {
        identity_matrix();
        // translate(offset,offset)
        var tab_color = selcolor;
        var enabled = (blank_tab || inactive_tab || (active !== undefined && active.indexOf(tabs[t]) == -1)) ? 0 : 1;
        if (enabled) {
          if (selection !== t && hover !== t) tab_color = bgcolor;
          else if (hover == t && selection !== t) tab_color = hilite_color;
          set_source_rgba(tab_color);

          if (orientation == 0) {

            if (rounded > 0) {
              if (t == 0){
                move_to(offset,this_height+tab_height-offset);
                line_to(offset,this_height+offset);
                line_to(tab_width-offset,this_height+offset);
                path_roundcorners(dist_inner);
                line_to(tab_width-offset,this_height+tab_height-offset);
                close_path();
              }
              else if (t == tabs.length-1) {
                move_to(tab_width-offset,this_height+tab_height-offset);
                line_to(offset,this_height+tab_height-offset);
                line_to(offset,this_height+offset);
                path_roundcorners(dist_inner);
                line_to(tab_width-offset,this_height+offset);
                line_to(tab_width-offset,this_height+tab_height-offset);
                close_path();
              }
              else {
                move_to(offset,this_height+offset);
                line_to(tab_width-offset,this_height+offset);
                line_to(tab_width-offset,this_height+tab_height-offset);
                line_to(offset,this_height+tab_height-offset);
                close_path();
                // if (rounded > 0) path_roundcorners(dist_inner);
              }
            }
            else {
              move_to(offset,this_height+offset);
              line_to(tab_width-offset,this_height+offset);
              line_to(tab_width-offset,this_height+tab_height-offset);
              line_to(offset,this_height+tab_height-offset);
              close_path();
              // if (rounded > 0) path_roundcorners(dist_inner);
            }
            // scale(1,0.5);

            if (gradients) {
              var thistab = pattern_create_linear(0,this_height-(tab_height/2),tab_width+200,this_height-(tab_height/2));
              // var thistab = pattern_create_linear(0,this_height,tab_width+200,tab_height+this_height+200);
              thistab.add_color_stop_rgba(0,tab_color);
              thistab.add_color_stop_rgba(1,0,0,0,0);
              set_source(thistab);
            }
            else set_source_rgba(tab_color);

          }

          else /* if (orientation == 1) */ {

            if (rounded > 0) {
              if (t == 0){
                move_to(this_height+tab_width-offset,offset);
                line_to(this_height+offset,offset);
                line_to(this_height+offset,tab_height-offset);
                path_roundcorners(dist_inner);
                line_to(this_height+tab_width-offset,tab_height-offset);
                close_path();
              }
              else if (t == tabs.length-1) {
                move_to(this_width+tab_width-offset,tab_height-offset);
                line_to(this_width+tab_width-offset,offset);
                line_to(this_width+offset,offset);
                path_roundcorners(dist_inner);
                line_to(this_width+offset,tab_height-offset);
                line_to(this_width+tab_width-offset,tab_height-offset);
                close_path();
              }
              else {
                move_to(this_width+offset,offset);
                line_to(this_width+offset,tab_height-offset);
                line_to(this_width+tab_width-offset,tab_height-offset);
                line_to(this_width+tab_width-offset,offset);
                close_path();
                // if (rounded > 0) path_roundcorners(dist_inner);
              }
            }
            else {
              move_to(this_width+offset,offset);
              line_to(this_width+offset,tab_height-offset);
              line_to(this_width+tab_width-offset,tab_height-offset);
              line_to(this_width+tab_width-offset,offset);
              close_path();
              // if (rounded > 0) path_roundcorners(dist_inner);
            }

            if (gradients) {
              // var thistab = pattern_create_linear(this_width-(tab_width/2),0,this_width-(tab_width/2),this_height+200);
              var thistab = pattern_create_linear(this_width-(tab_width/2),0,this_width-(tab_width/2),tab_height+200);
              thistab.add_color_stop_rgba(0,tab_color);
              thistab.add_color_stop_rgba(1,0,0,0,0);
              set_source(thistab);
            }
            else set_source_rgba(tab_color);

          }

          // scale(1,-1)
          fill();
        }
        // else {
        //
        //   inactive_offset -= tab_height*inactive_size;
        //   if (orientation == 0) translate(0,inactive_offset);
        //   else translate(inactive_offset,0);
        // }
      }
      if (!blank_tab) {
        /*if (orientation == 0)*/ render_tabs(this_height,this_width,0,enabled,t);
        // else /* if (orientation == 1) */ render_tabs(this_width,0,enabled,t);
      }
    }
  }
}

// TEXT
function render_tabs(this_height,this_width,offset,enabled,t){
  var shift = (t == 0 || t == tabs.length-1) ? peak([rounded,line,font_size,16]) : peak([line,font_size,16]);
  with (mgraphics){
    if (!enabled) set_source_rgba(bgcolor)
    else if (selection !== t) set_source_rgba(fgcolor);
    else set_source_rgba(htcolor)
    if (orientation == 0) move_to(shift,this_height+(tab_height/2)+(font_size/4)+offset);
    // else /* if (orientation == 1) */ move_to(width+shift,(tab_height/2)+(font_size/4)+offset);
    else /* if (orientation == 1) */ move_to(this_width+tab_width/2,(tab_height/2)+(font_size/4)+offset);
    select_font_face(fontname)
    set_font_size(font_size);
    var text = tabs[t].replace(inactive,'$1');
    var length = text_measure(text);
    var compress = Math.min(Math.max(((tab_width-shift-shift)/length[0]),0),1);

    scale(compress,1);
    // if (orientation) scale(1,compress); else scale(compress,1);
    if (orientation) {rel_move_to(-(length[0]/2)+(compress/2),0); }
    text_path(text);
    fill();
  }
}

// FIND MAXIMUM VALUE
function peak(p){
  var maxval = 0;
  for (q in p) { if (p[q] > maxval) maxval = p[q];}
  return maxval;
}

// ----------------------- MOUSE INTERACTION -----------------------

	onclick.local = 1;
	onresize.local = 1;

	function onresize(){
		width = mgraphics.size[0];
		height = mgraphics.size[1];
		// width = this.box.rect[2] - this.box.rect[0];
		// height = this.box.rect[3] - this.box.rect[1];
		ui_height = height;
		ui_width = width-tab_width-rounded+line;
    forcesize();
		mgraphics.redraw();
	}

function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
	this.click = 1;
	if (orientation == 0 && x <= rounded+tab_width && y < (tabs.length)*tab_height) {
    if (active == undefined || active.indexOf(tabs[Math.floor(y/tab_height)]) !== -1) {
      var sel_tab = Math.floor(y/tab_height);
	    if (!blank.test(tabs[sel_tab]) && !inactive.test(tabs[sel_tab])) selection = sel_tab;
	    mgraphics.redraw();
    }
	}
	if (orientation == 1 && x <= (tabs.length)*tab_width && y <= rounded+tab_height) {
    if (active == undefined || active.indexOf(tabs[Math.floor(x/tab_width)]) !== -1) {
      var sel_tab = Math.floor(x/tab_width);
	    if (!blank.test(tabs[sel_tab])) selection = sel_tab;
	    mgraphics.redraw();
    }
	}
	output_sel();
}

function msg_int(s){
  if (!inactive.test(tabs[s])  && !blank.test(tabs[s]) && (active === undefined || active.indexOf(tabs[s]) == -1)) {
	   selection = Math.min(tabs.length-1,Math.max(-1,s));
	   output_sel();
	   mgraphics.redraw();
   }
}

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
}

function hide(obj,h){
  if (shown.indexOf(obj) == -1) this.patcher.message("script","sendbox",obj,"hidden",h);
  if (!h) shown.push(obj);

}

function anything(){
  var args = arrayfromargs(arguments);
  var msg = messagename;
  if (inlet == 1 && obj_dict !== undefined){
    var name_clean = msg.replace(inactive,"$1");
    if (args.length) obj_dict.replace(name_clean,args);
    else if (obj_dict.contains(msg)) obj_dict.remove(msg);
    output_sel();
  }
}

function onidle(x,y){
	this.click = 0;
  if (orientation == 0){
    if (x <= rounded+tab_width && y < (tabs.length)*tab_height) {
	  hover = Math.floor(y/tab_height);
    }
    else hover = -1;
  }
  else /* if (orientation == 0) */{
    // post(tab_width,'\n')
    if (y <= rounded+tab_height && x < (tabs.length)*tab_width) {
	  hover = Math.floor(x/tab_width);
    }
    else hover = -1;
  }
	mgraphics.redraw();
}
function onidleout(x,y){
	this.click = 0;
	hover = -1;
	mgraphics.redraw();
} onidleout.local = 1;

function forcesize(){
  if (!autoscale) {
    if (orientation == 0) {
      max_height = tabs.length*tab_height;
      if (ui_height <= max_height+line) { box.size(width,max_height+line);}
    }
    else if (orientation == 1) {
      max_height = tabs.length*tab_width;
      if (ui_width <= max_height+line) { box.size(max_height+line,width);}
    }
  }
} forcesize.local = 1;


onresize();
init();
messnamed('done','bang');
