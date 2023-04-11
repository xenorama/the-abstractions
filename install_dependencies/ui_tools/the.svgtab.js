// max.clearmaxwindow();

// ----------------------- TODO -----------------------

/*
* scaling shifts SVGs slightly when != 0.65
*/

autowatch = 1;
inlets = 2;
outlets = 3;

// include("the.delay.js") // more precise timing method

// ----------------------- JSUI -----------------------

// initialize mgraphics
this.box.message("border", 0);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autooutline = 0;

setinletassist(0, 'attributes, int (selection)');
setinletassist(1, 'tab_name + object names: hide objects per tab, stored in named dictionary');
setoutletassist(0, 'int: tab selection');
setoutletassist(1, 'list: indexed \'hidden\' messages for UI control');
setoutletassist(2, 'dictionary: object view mappings');

// ----------------------- VARIABLES -----------------------

var PI = 3.1415926535;
var HALFPI = PI/2;
var TWOPI = PI*2;

var svg = [];
if (jsarguments[1]) svg = jsarguments.slice(1,jsarguments.length)
var img = [];
var offset = [0,0]
var line_width = 0.7;
var outline = 0;
// var rescale = [0.4,0.4];
var rescale = [0.65,0.65];
var mode = 1;
var hover = -1;
var val = -1;
var help_grid = 0;
var rounded = 0.3;
var round_pos = 0;
var circle = 0;
var panel = 0;
var patch = this.patcher;
var patch_attrs = patch.getattrnames();
var on_color_name = "color";
var panel_color_name = "bgcolor";
var outline_color_name = "bgcolor";
var svg_off_color_name = "locked_bgcolor";
var hover_color_name = "accentcolor";
var text_color_name = "bgcolor";
var on_color = patch.getattr(on_color_name)
var panel_color = patch.getattr(panel_color_name)
var outline_color = patch.getattr(outline_color_name)
var svg_off_color = patch.getattr(svg_off_color_name)
var hover_color = patch.getattr(hover_color_name)
var text_color = patch.getattr(text_color_name)
var annotation_text;
var click = 0;
var align = 1;
var active = 1;
var alpha = 1;
var annotation_target;
var erase_white = 1;
var allow_hover = 1;
var text = [];
var font_size = 13;
var font_name = "Lato"
var text_offset = 0;
var tab_offset = 3;
var tot_meas = 0;
var orientation = 1;
var bsize = [];
var dictionary = undefined;
var obj_dict = undefined;
var shown = [];


// ----------------------- PATTR -----------------------

function getvalueof() { return val; }
function setvalueof(v) { val = v; output(); refresh() }


// ----------------------- ATTRIBUTES -----------------------

declareattribute("svg","get_svg","set_svg",1);
function set_svg() {
  if (!arguments) {
    img[0] = new MGraphicsSVG()
    svg = [];
  }
  else {
    var s = arrayfromargs(arguments);
    if (s.length == 1) svg = [s[0]];
    else svg = s;
    create_mgraphics_svg(svg);
    // post(svg,'\n')
  }
  refresh()
}; set_svg.local = 1;
function get_svg() { return svg };

declareattribute("offset","get_offset","set_offset",1);
function set_offset() { offset = arrayfromargs(arguments); refresh() }; set_offset.local = 1;
function get_offset() { return offset };

declareattribute("help_grid","get_help_grid","set_help_grid",1);
function set_help_grid(hg) { help_grid = hg; refresh() }; set_help_grid.local = 1;
function get_help_grid() { return help_grid };

declareattribute("outline","get_outline","set_outline",1);
function set_outline(f) { outline = f; refresh() }; set_outline.local = 1;
function get_outline() { return outline };

declareattribute("panel","get_panel","set_panel",1);
function set_panel(f) { panel= f; refresh() }; set_panel.local = 1;
function get_panel() { return panel };

declareattribute("mode","get_mode","set_mode",1);
function set_mode(m) { mode = m; if (!mode) val = 0; hover = -1; refresh() }; set_mode.local = 1;
function get_mode() { return mode };

declareattribute("outline_size","get_outline_size","set_outline_size",1);
function set_outline_size(ols) { line_width = ols; refresh() }; set_outline_size.local = 1;
function get_outline_size() { return line_width };

declareattribute("text","get_text","set_text",1);
function set_text() { text = arrayfromargs(arguments); refresh() }; set_text.local = 1;
function get_text() { return text };

declareattribute("font_name","get_font_name","set_font_name",1);
function set_font_name(fn) { font_name = (typeof fn === "string") ? fn : "Lato"; refresh() }; set_font_name.local = 1;
function get_font_name() { return font_name };

declareattribute("font_size","get_font_size","set_font_size",1);
function set_font_size(fs) { font_size = (typeof fs === "number") ? fs : 13; refresh() }; set_font_size.local = 1;
function get_font_size() { return font_size };

declareattribute("text_offset","get_text_offset","set_text_offset",1);
function set_text_offset(to) { text_offset = to; refresh() }; set_text_offset.local = 1;
function get_text_offset() { return text_offset };

declareattribute("orientation","get_orientation","set_orientation",1);
function set_orientation(o) {
  if (orientation != o) {
    orientation = o;
    if (bsize.length) box.size(bsize[1],bsize[0])
    refresh();
    }
  }; set_orientation.local = 1;
function get_orientation() { return orientation };

declareattribute("scale","get_scale","set_scale",1);
function set_scale() {
  var rs = arrayfromargs(arguments)
  if (rs.length == 1) {
    rs = Math.max(0,rs);
    rescale = [rs,rs]
  }
  else {
    rescale = [Math.max(0,rs[0]),Math.max(0,rs[1])];
  }
  refresh()
}; set_scale.local = 1;
// function set_scale() {
//   var rs = arrayfromargs(arguments)
//   if (rs.length == 1) {
//     if (outline && line_width <= 0) rs = Math.max(0,Math.min(rs,1));
//     else rs = Math.max(0,Math.min(rs,HALFPI/2));
//     rescale = [rs,rs]
//   }
//   else {
//     if (outline && line_width <= 0) rescale = [Math.max(0,Math.min(rs[0],1)),Math.max(0,Math.min(rs[1],1))];
//     else rescale = [Math.max(0,Math.min(rs[0],HALFPI/2)),Math.max(0,Math.min(rs[1],HALFPI/2))]
//   }
//   refresh()
// }; set_scale.local = 1;
function get_scale() { return rescale };

declareattribute("circle","get_circle","set_circle",1);
function set_circle(c) { circle = c; refresh() }; set_circle.local = 1;
function get_circle() { return circle };

declareattribute("rounded","get_rounded","set_rounded",1);
function set_rounded(r) { rounded = r; refresh() }; set_rounded.local = 1;
function get_rounded() { return rounded };

declareattribute("round_pos","get_round_pos","set_round_pos",1);
function set_round_pos(r) { round_pos = r; refresh() }; set_round_pos.local = 1;
function get_round_pos() { return round_pos };

declareattribute("annotation_text","get_annotation_text","set_annotation_text",1);
function set_annotation_text(t) { annotation_text = t; }; set_annotation_text.local = 1;
function get_annotation_text() { return annotation_text };

declareattribute("align","get_align","set_align",1);
function set_align(a) { align = a; refresh() }; set_align.local = 1;
function get_align() { return align };

declareattribute("active","get_active","set_active",1);
function set_active(a) { active = a; if (active) output(); refresh(); }; set_active.local = 1;
function get_active() { return active };

declareattribute("annotation_target","get_annotation_target","set_annotation_target",1);
function set_annotation_target(a) { annotation_target = a; }; set_annotation_target.local = 1;
function get_annotation_target() { return annotation_target };

declareattribute("on_color","get_on_color","set_on_color",1);
function set_on_color() {
	on_color_name = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	on_color = patch_color(on_color_name);
	refresh();
}; set_on_color.local = 1;
function get_on_color() { return on_color_name };

declareattribute("panel_color","get_panel_color","set_panel_color",1);
function set_panel_color() {
	panel_color_name = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	panel_color = patch_color(panel_color_name);
	refresh();
}; set_panel_color.local = 1;
function get_panel_color() { return panel_color_name };

declareattribute("outline_color","get_outline_color","set_outline_color",1);
function set_outline_color() {
	outline_color_name = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	outline_color = patch_color(outline_color_name);
	refresh();
}; set_outline_color.local = 1;
function get_outline_color() { return outline_color_name };

declareattribute("svg_off_color","get_svg_off_color","set_svg_off_color",1);
function set_svg_off_color() {
	svg_off_color_name = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	svg_off_color = patch_color(svg_off_color_name);
	refresh() };
	set_svg_off_color.local = 1;
function get_svg_off_color() { return svg_off_color_name };

declareattribute("hover_color","get_hover_color","set_hover_color",1);
function set_hover_color() {
	hover_color_name = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	hover_color = patch_color(hover_color_name);
	refresh() };
	set_hover_color.local = 1;
function get_hover_color() { return hover_color_name };

declareattribute("text_color","get_text_color","set_text_color",1);
function set_text_color() {
	text_color_name = (arguments.length == 1) ? arrayfromargs(arguments)[0] : arrayfromargs(arguments);
	text_color = patch_color(text_color_name);
	refresh() };
	set_text_color.local = 1;
function get_text_color() { return text_color_name };

declareattribute("dictionary","get_dictionary","set_dictionary",1);
function set_dictionary(hp) { if (hp) { dictionary = hp; obj_dict = new Dict(hp)} else { dictionary = undefined; obj_dict = undefined}; output()}; set_dictionary.local = 1;
function get_dictionary() { return dictionary };


// ----------------------- MGRAPHICS -----------------------

function paint(){
  bsize = mgraphics.size;
  alpha = (active) ? 1 : 0.4;
  var count = svg.length;
  // count += 10; // offset


  if (orientation){
    tot_meas = (bsize[1]+tab_offset)*count-tab_offset;
    var meas = bsize[1]+tab_offset;

    // if (circle && !text) { bsize = [bsize[1],bsize[1]]; aspect = 1; }
    aspect = bsize[0]/bsize[1];
    box.size(tot_meas,bsize[1]);
    bsize = [bsize[1],bsize[1]];
  }
  else {
    tot_meas = (bsize[0]+tab_offset)*count-tab_offset;
    var meas = bsize[0]+tab_offset;

    // if (circle && !text) { box.size(bsize[0],tot_meas); bsize = [bsize[0],bsize[0]]; aspect = 1; }
    if (text.length) { bsize = [bsize[1],bsize[1]]; aspect = 1; }
    else {
      aspect = bsize[0]/bsize[1];
      box.size(bsize[0],tot_meas)
    }
    bsize = [bsize[0],bsize[0]];

  }


  // var r = [bsize[0],bsize[0]];
  var small = Math.min(bsize[0],bsize[1]);
  var r = small * rounded;
  if (circle) r = (orientation) ? bsize[1] : bsize[0]
  // lwidth = bsize[0]*0.05*line_width;
  lwidth = small*0.05*line_width;

  with (mgraphics) {

    for (m=0;m<count;m++){

      bsize = (orientation) ? [bsize[1],bsize[1]] : [bsize[0],bsize[0]]
      var this_meas = m*meas;

      // if (text[m]) { bsize = [bsize[1],bsize[1]]; aspect = 1; }
      identity_matrix();
      if (!orientation) translate(0,this_meas)
      else translate(this_meas,0)

      // BOX / OUTLINE

      var this_color = panel_color;

      if (panel) {
        if (hover == m && val != m) this_color = hover_color;
        else if (val == m) this_color = on_color;
        // else if (val != m) this_color = off_color;
        set_source_rgba(this_color);
        // post(this_color,'\n')

        if (outline && line_width != 0){
          draw_box(lwidth/2,lwidth/2,bsize[0]-(lwidth),bsize[1]-(lwidth),r,r,m)
          // rectangle_rounded(lwidth/2,lwidth/2,bsize[0]-(lwidth),bsize[1]-(lwidth),r,r)
          fill_preserve_with_alpha(alpha);
          if (hover == m && val == m) this_color = hover_color;
          else this_color = on_color;
          // else if (!val) this_color = on_color;
          // else this_color = panel_color;
          set_source_rgba(this_color);
          set_line_width(lwidth)
          stroke_with_alpha(alpha);
        }
        else {
          draw_box(0,0,bsize[0],bsize[1],r,r,m);
          // rectangle_rounded(0,0,bsize[0],bsize[1],r,r);
          fill_with_alpha(alpha); }
      }
      else if (outline && line_width != 0){
        if (hover == m) this_color = hover_color;
        else if (val == m) this_color = on_color;
        set_source_rgba(this_color);
        set_line_width(lwidth)
        draw_box(lwidth/2,lwidth/2,bsize[0]-(lwidth),bsize[1]-(lwidth),r,r,m)
        // rectangle_rounded(lwidth/2,lwidth/2,bsize[0]-(lwidth),bsize[1]-(lwidth),r,r)
        stroke_with_alpha(alpha);
      }

      // TEXT

      // if (text[m]) {
      //   // identity_matrix()
      //   if (!orientation) move_to(0,this_meas)
      //   else move_to(this_meas,0)
      //   bsize = mgraphics.size;
      //   translate(bsize[1]*1.25,bsize[1]*0.5)
      //   move_to(text_offset,0)
      //   select_font_face(font_name)
      //   set_font_size(font_size)
      //   if (hover == m) set_source_rgba(hover_color)
      //   else set_source_rgba(text_color)
      //   rel_move_to(0,font_extents()[1]*2)
      //   text_path(text)
      //   fill_with_alpha(alpha);
      // }

      // else if (outline && line_width != 0.) {
      //   if (hover && !val) this_color = hover_color;
      //   else if (val) this_color = on_color;
      //   set_source_rgba(this_color);
      //   rectangle_rounded(lwidth/2,lwidth/2,bsize[0]-(lwidth),bsize[1]-(lwidth),r,r)
      //   stroke_with_alpha(alpha);
      // }

      // else {
      //
      //   if (hover && !val) set_source_rgba(hover_color);
      //   else if (val) set_source_rgba(on_color); else set_source_rgba(panel_color)
      //   if (circle) arc(bsize[0]/2,bsize[1]/2,bsize[0]/2-lwidth,0,TWOPI)
      //   else if (!outline) rectangle_rounded(0,0,bsize[0],bsize[1],r,r)
      //   else rectangle_rounded(lwidth/2,lwidth/2,bsize[0]-(lwidth),bsize[1]-(lwidth),r,r)
      //
      //   set_line_width(lwidth);
      //   if (!outline) { if (circle) { fill_preserve_with_alpha(alpha); stroke_with_alpha(alpha); } else fill_with_alpha(alpha); }
      //   else stroke_with_alpha(alpha);
      //
      // }



      // SVG IMAGE

      if (img[m]) {

        // identity_matrix();
        // move_to(0,m*meas

        if (orientation) translate(bsize[1]/2*(0.65-rescale[0]),0); else translate(0,bsize[0]/2*(0.65-rescale[1]))

        var img_val = img[m]

        isize = img_val.size;
        var resize = normalize(isize,small*0.96)
        var shift_x = small*(0.5*(1-rescale[0]))+lwidth/4
        var shift_y = small*(0.5*(1-rescale[1]))+lwidth/4

        // ALIGN

        var repos = [shift_x,shift_y]
        if (align == 2 && aspect > 1) repos = [bsize[0]-bsize[1]+shift_x,shift_y]
        else if (align == 2 && aspect < 1) repos = [shift_x,bsize[1]-bsize[0]+shift_y]
        else if (align == 1 && aspect > 1) repos = [bsize[0]/2-((bsize[1]+shift_x)/4),shift_y]
        else if (align == 1 && aspect < 1) repos = [shift_x,bsize[1]/2-((bsize[0]+shift_y)/4)]
        translate(repos)

        translate(small*offset[0],small*offset[1])

        scale(rescale[0],rescale[1])
        scale(resize,resize);

        // if (aspect > 1) translate(resize*((1/aspect)-1)/small,0)
        // else if (aspect < 1) translate(0,resize*(aspect-1)/small)

        if (outline && !panel) {
          if (hover == m) img_val.mapcolor([0,0,0,1],svg_alpha(hover_color));
          else if (val == m) img_val.mapcolor([0,0,0,1],svg_alpha(on_color));
          else img_val.mapcolor([0,0,0,1],svg_alpha(panel_color));
        }
        else if (outline && panel) {
          if (hover == m && val == m) img_val.mapcolor([0,0,0,1],svg_alpha(hover_color));
          else if (val != m) img_val.mapcolor([0,0,0,1],svg_alpha(svg_off_color));
          // else if (!val) img_val.mapcolor([0,0,0,1],svg_alpha(on_color));
          else img_val.mapcolor([0,0,0,1],svg_alpha(panel_color));
        }
        else if (!panel && !outline){
          if (hover == m) img_val.mapcolor([0,0,0,1],svg_alpha(hover_color));
          else if (val == m) img_val.mapcolor([0,0,0,1],svg_alpha(on_color));
          else img_val.mapcolor([0,0,0,1],svg_alpha(panel_color));
                      // post(panel_color,hover,val,m,'\n')
        }
        else if (hover == m && val == m) {
          img_val.mapcolor([0,0,0,1],svg_alpha(hover_color))
        }
        else if (val == m) img_val.mapcolor([0,0,0,1],svg_alpha(panel_color)); else img_val.mapcolor([0,0,0,1],svg_alpha(svg_off_color));
        svg_render(img_val)
        fill_with_alpha(alpha);
      }
    }
  }
}


// ----------------------- INTERNAL FUNCTIONS -----------------------

normalize.local = 1;
create_mgraphics_svg.local = 1;
output.local = 1;
invert.local = 1;
refresh_later.local = 1;
patch_color.local = 1;
svg_alpha.local = 1;
hide.local = 1;
draw_box.local = 1;
// svg_erase.local = 1;

// DRAW PANEL / outline

function draw_box(xo,yo,xs,ys,r,r,index){
  switch(round_pos){
    case 1: // independent rounding at begin/end of tab
      if (index == 0) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo,yo+ys)
          line_to(xo,yo)
          line_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          path_roundcorners(r);
          close_path();
        }
        else {
          move_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          line_to(xo,yo)
          line_to(xo+xs,yo)
          path_roundcorners(r);
          close_path();
        }
      }
      else if (index == img.length-1) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          line_to(xo,yo)
          path_roundcorners(r);
          close_path();
        }
        else {
          move_to(xo,yo)
          line_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          path_roundcorners(r);
          close_path();
        }
      }
      else mgraphics.rectangle(xo,yo,xs,ys)
      break;
    case 2: // round on left/top of begin/end
      if (index == 0) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo,yo+ys)
          line_to(xo,yo)
          line_to(xo+xs,yo)
          path_roundcorners(r);
          line_to(xo+xs,yo+ys)
          close_path();
        }
        else {
          move_to(xo,yo+ys)
          line_to(xo,yo)
          line_to(xo+xs,yo)
          path_roundcorners(r);
          line_to(xo+xs,yo+ys)
          close_path();
        }
      }
      else if (index == img.length-1) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          line_to(xo,yo)
          path_roundcorners(r);
          line_to(xo+xs,yo)
          close_path();
        }
        else {
          move_to(xo,yo)
          line_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          path_roundcorners(r);
          line_to(xo,yo+ys)
          close_path();
        }
      }
      else mgraphics.rectangle(xo,yo,xs,ys)
      break;
    case 3: // round on diagonal ecorners only
      if (index == 0) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo,yo)
          line_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          path_roundcorners(r);
          line_to(xo,yo+ys)
          close_path();
        }
        else {
          move_to(xo,yo)
          line_to(xo,yo+ys)
          line_to(xo+xs,yo+ys)
          path_roundcorners(r);
          line_to(xo+xs,yo)
          close_path();
        }
      }
      else if (index == img.length-1) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          path_roundcorners(r);
          line_to(xo,yo)
          close_path();
        }
        else {
          move_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          path_roundcorners(r);
          line_to(xo,yo)
          close_path();
        }
      }
      else mgraphics.rectangle(xo,yo,xs,ys)
      break;
    case 4: // round on diagonal ecorners only
      if (index == 0) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo,yo+ys)
          line_to(xo,yo)
          line_to(xo+xs,yo)
          path_roundcorners(r);
          line_to(xo+xs,yo+ys)
          close_path();
        }
        else {
          move_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          line_to(xo,yo)
          path_roundcorners(r);
          line_to(xo+xs,yo)
          close_path();
        }
      }
      else if (index == img.length-1) with (mgraphics) {
        if (orientation == 0) {
          move_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          line_to(xo,yo+ys)
          path_roundcorners(r);
          line_to(xo,yo)
          close_path();
        }
        else {
          move_to(xo,yo)
          line_to(xo+xs,yo)
          line_to(xo+xs,yo+ys)
          path_roundcorners(r);
          line_to(xo,yo+ys)
          close_path();
        }
      }
      else mgraphics.rectangle(xo,yo,xs,ys)
      break;
    default: // round all tabsequally
      mgraphics.rectangle_rounded(xo,yo,xs,ys,r,r)
  }
}


// RESCALE IMG TO BOX

function normalize(svg_size,coeff,axis){
  return svg_size.map(function (coord) { return coeff / coord });
}

// CREATE MGRAPHICS SVG INSTANCE

function create_mgraphics_svg(s){
  img = [];
  for (mg=0;mg<s.length;mg++){
    if (s[mg] && (/.+\.svg$/).test(s[mg])) img[mg] = new MGraphicsSVG(s[mg])
    else img[mg] = undefined;
    // post(mg,'\n')
  }
}

// OUTPUT TO MAX

function output(){
  outlet(0,val);
  shown = [];
	for(sel=0;sel<svg.length;sel++) {
    outlet(1,sel,"hidden",val !== sel)
    var hidden = val !== sel;
    var entry = sel.toString();
    if (obj_dict !== undefined) {
      if (obj_dict.contains(entry)) {
        var objs = obj_dict.get(entry);
        if (objs instanceof Array) for (k in objs) { hide(objs[k],hidden);}
        else { hide(objs,hidden);}
      }
      else hide(entry,hidden);
    }
    else hide(entry,hidden);
  };
  if (obj_dict) outlet(2,"dictionary",obj_dict.name);
  notifyclients();
}

function hide(obj,h){
  if (shown.indexOf(obj) == -1) patch.message("script","sendbox",obj,"hidden",h);
  if (!h) shown.push(obj);
}

// INVERT

function invert(){
    val = !val;
    refresh();
}

// BLINK WHEN @MODE 0

function refresh_later(ms){
  var t = new Task(invert,this)
  t.interval = ms;
  t.repeat(2);
  t.execute();
}

// PATCH COLORS

function patch_color(c){
	if (typeof c === "string" && patch_attrs.indexOf(c) !== -1) { return patch.getattr(c) }
	else if (c.length == 4) return c;
}

// RENDER SVG WITH alpha

function svg_alpha(color){
  return (active) ? color : color.map(function (x,i) { return (i==3) ? alpha : x } )
}

// function svg_erase(color){
//   return color.map(function (x,i) { return (i==3) ? 0 : x } )
// }

// ----------------------- MOUSE INTERACTION -----------------------

onclick.local = 1;
onidle.local = 1;
onidleout.local = 1;

function onclick(x,y){
  // if (mode) {
    // val = !val;
    click = 1;
    var pos = (orientation) ? x : y;
    val = Math.floor(pos/tot_meas*svg.length);
    if (!panel && hover == val) hover = -1;
    if (active) output();

    mgraphics.redraw();
    allow_hover = val;
    // hover = 0;
  // }
  // else {
  //   val = 1;
  //   output();
  //   allow_hover = 0;
  //   hover = 0;
  //   refresh();
  //   click = 1;
  // }
}

function onidle(x,y){
  // post(JSON.stringify(this),'\n')
  if (active) {
    var pos = (orientation) ? x : y;
    hover = Math.floor(pos/tot_meas*svg.length);
    if (!panel && hover == val) hover = -1;
  }
  if (click) {
    click = 0;
    // val = 0;
  }
  refresh();
  if (active && annotation_text) {
    if (annotation_target) messnamed(annotation_target,"set",annotation_text);
    outlet(1,"set",annotation_text)
  }
}

function onidleout(){
  hover = -1;
  click = 0;
  refresh();
  if (active && annotation_text) {
    if (annotation_target) messnamed(annotation_target,"set");
    outlet(1,"set")
  }
}

// ----------------------- MAX MESSAGES -----------------------

function msg_int(i){
  if (inlet == 1) {
    if (obj_dict && obj_dict.contains(i.toString())) obj_dict.remove(i.toString());
  }
  else {
    val = Math.min(i,svg.length-1);
    if (active) output();
    refresh();
  }
}

function msg_float(f){
  msg_int(f)
}

function bang(){
  if (active) {
    if (mode) {
      val = !val;
      output();
      refresh();
    }
    else {
      val = 1;
      output();
      refresh();
      val = 0;
      refresh_later(50)
    }
  }
}

function set(s){
    // val = s != 0;
    val = s;
    refresh();
}

function anything(){
    if (inlet == 1 && messagename == "list"&& obj_dict !== undefined){
      var args = arrayfromargs(arguments);
      var msg = args[0];
      args = args.slice(1,args.length)
      // post("messagename",msg,"args",args,'\n')
      // var name_clean = msg.replace(inactive,"$1");
      if (args.length) obj_dict.replace(msg,args);
      else if (obj_dict.contains(msg)) obj_dict.remove(msg);
      output();
  }
}

// ----------------------- SVG INFO -----------------------

function query_svg_names(){
  messnamed("svg_files",svg)
}


// ----------------------- INIT -----------------------

create_mgraphics_svg(svg)
mgraphics.redraw();
