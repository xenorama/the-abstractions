max.clearmaxwindow()

box.message("border",0)
mgraphics.init()
mgraphics.relative_coords = 0;

var rect = [this.box.rect[2]-this.box.rect[0],this.box.rect[3]-this.box.rect[1]];
var w = rect[0]
var h = rect[1]
var mouse = [-1,-1]
var coords = [0,0]

var aspect = 1.370155;
var rect_ext = [1,1.2]
var gb_small = 0.058;
var gb_large = 0.0708;
var gb_thin = 0.067;
var gb_thin_height = 0.0428;
var click = 0;
var hover = [0,-1];

/* ————————— CNTRL:R ————————— */

var num_buttons = 68
var num_ctls = 46

var btns = new Array(num_buttons)
post(btns.length,'\n')
var btn_map =
  /*4x4 grid buttons*/ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
  /*2x16 grid buttons*/ 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,
  /*3x4 push encoders*/ 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
  /*xpc extensions*/ 60, 61, 62, 63, 64, 65, 66, 67]


var ctls = new Array(num_ctls)
var ctl_map =
  /*left dials*/ [1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15,
  /*right dials*/ 17, 21, 25, 29, 18, 22, 26, 30, 19, 23, 27, 31,
  /*left faders*/ 4, 8, 12, 16,
  /*right faders*/ 20, 24, 28, 32,
  /*encoders*/ 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
  /*xpc expansion ccs*/ 38, 39, 40, 41, 42, 43, 44, 45 ] // not yet correctly mapped

var alpha = 0.8;
var panel_color = this.patcher.getattr("bgcolor")
var textcolor = this.patcher.getattr("textcolor")
var outline_color = this.patcher.getattr("color").map(function(x,i) { return (i==3) ? 0.5 : 1 } )

var client_exec_port = "the.cntrlr.execute"

// function setvalueof(v) {}
// function getvalueof() { return }

function paint(){

  /* ————————— RESIZE JSUI ————————— */

  rect = mgraphics.size
  if ((rect[0]*(1/rect_ext[0]))/(rect[1]*(1/rect_ext[1])) !== aspect) {
    rect = [rect[0],rect[0]/aspect];
    box.size(rect.map(function(x,i) { return x * rect_ext[i] }))
  }

  w = rect[0]
  h = rect[1]

  with (mgraphics){

    /* ————————— PANEL ————————— */

    set_source_rgba(panel_color)
    rectangle(0,0,rect)
    fill_with_alpha(0.7);

    set_line_width(w*0.002)

    /* ————————— CTLs ————————— */

    index = 0;
    index = cntrlr_dials(index)
    index = cntrlr_faders(index)
    index = cntrlr_encs(index)
    index = cntrlr_xpcs(index)

    /* ————————— BUTTONs ————————— */

    index = 0;
    index = cntrlr_gblarge(index)
    index = cntrlr_gbsmall(index)
    index = cntrlr_pebs(index)
    index = cntrlr_xpcbs(index)

  }

  if (hover[1] !== -1) get_desc(hover)

}

/* ————————— MOUSE INTERACTION ————————— */

onidle.local = 1;
function onidle(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 0;
  coords = [x,y]
  refresh();
}

onidleout.local = 1;
function onidleout(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 0;
  hover = [0,-1];
  refresh();
}

onclick.local = 1;
function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 1;
  coords = [x,y]
  refresh();
}

/* ————————— SETUP ————————— */

setup.local = 1;
function setup(){
  for (i=0;i<btns.length;i++) {
    btns[i] = new Button(btn_map[i],0,"—",1,0,1,-1,-1);
  }

  for (i=0;i<ctls.length;i++) {
    ctls[i] = new Ctl(ctl_map[i],0,"—",1,-1,-1);
  }

}

/* ————————— COMPONENTS ————————— */

Button.local = 1;
function Button(map,in_use,description,active,mode,local,modifier,banks){
  this.map = map;
  this.in_use = in_use;
  this.on = 0;
  this.description = description;
  this.active = active;
  this.mode = mode;
  this.local = local;
  this.modifier = modifier;
  this.banks = banks;
  this.off_color = [0.,0.,0.,0.6]; // transparent
  this.cue_color = [1.,1.,0.,0.9]; // yellow
  this.on_color = [0.,1.,0.,0.9]; // green
}

Ctl.local = 1;
function Ctl(map,in_use,description,active,modifier,banks){
  this.map = map;
  this.in_use = in_use;
  this.description = description;
  this.active = active;
  this.modifier = modifier;
  this.banks = banks;
}

to_clients.local = 1;
function to_clients(type,index){
  if (type == 0) messnamed(client_exec_port,btns[index].map,64)
}

view.local = 1;
function view(type,index,mouse){

  /* ————————— BUTTONs ————————— */

  if (type == 0) {
    if (mgraphics.in_fill(mouse)) {
      hover = [type,index]
      if (click) to_clients(type,index)
    }
    if (!btns[index].in_use) {
      if (mgraphics.in_fill(mouse)) mgraphics.stroke()
      else mgraphics.stroke_with_alpha(outline_color[3])
    }
    else {
      mgraphics.set_source_rgba(btns[index].current_color);
      if (mgraphics.in_fill(mouse)) { mgraphics.fill_preserve(); mgraphics.set_source_rgba(outline_color); mgraphics.stroke() }
      else { mgraphics.fill_preserve_with_alpha(alpha); mgraphics.set_source_rgba(outline_color); mgraphics.stroke_with_alpha(outline_color[3]) }
    }
  }

  /* ————————— CTLs ————————— */

  else if (type == 1){
    if (mgraphics.in_fill(mouse)) { hover = [type,index] }
    mgraphics.set_source_rgba(outline_color)
    if (!ctls[index].in_use) {
      if (mgraphics.in_fill(mouse)) mgraphics.stroke()
      else mgraphics.stroke_with_alpha(outline_color[3])
    }
    else {
      if (mgraphics.in_fill(mouse)) { mgraphics.fill_preserve(); mgraphics.set_source_rgba(outline_color); mgraphics.stroke() }
      else { mgraphics.fill_preserve_with_alpha(alpha); mgraphics.set_source_rgba(outline_color); mgraphics.stroke_with_alpha(outline_color[3]) }
    }
  }

}

/* ————————— INIT DRAWING AREA ————————— */

relocate.local = 1;
function relocate(x,y){
  var offset = [w*x,h*y]
  mgraphics.identity_matrix();
  mgraphics.translate(offset)
  mouse = coords.map(function (c,i) { return c-offset[i] } )
}


/* —————————————————— MAX METHODS —————————————————— */

/* ————————— AUTO UPDATE GUI ————————— */

function msg_int(type,number,in_use,on,r,g,b){
  click = 0;
  if (type == 0){
    var index = btn_map.indexOf(number);
    btns[index].in_use = in_use;
    btns[index].on = on;
    btns[index].current_color = [r,g,b,alpha]
  }
  else if (type == 1){
    var index = ctl_map.indexOf(number);
    ctls[index].in_use = in_use;
  }
  mgraphics.redraw()
}

function description(type,number,desc){
  click = 0;
  if (type == 0) {
    var index = btn_map.indexOf(number);
    btns[index].description = desc;
  }
  else if (type == 1) {
    var index = ctl_map.indexOf(number);
    ctls[index].description = desc;
  }
  mgraphics.redraw()
  outlet(0,"clear")
  outlet(0,"append","(BUTTONS:)")
  for (b=0;b<btn_map.length;b++){
    var info = btns[b].description;
    if (btns[b].in_use) outlet(0,"append",btns[b].map+": "+btns[b].description)
    else outlet(0,"append","(["+btns[b].map+"])")
  }
}

/* ————————— DESCRIPTIONS/INFO ————————— */

get_desc.local = 1;
function get_desc(hover){
  var type = hover[0]
  var index = hover[1]
  with(mgraphics){
    identity_matrix()
    set_source_rgba(textcolor)
    select_font_face("Lato")
    move_to(5,rect[1]+15)
    if (type == 0){
      if (btns[index].in_use) show_text("# "+btns[index].map+": "+btns[index].description)
      else show_text("[# "+btns[index].map+"]")
    }
    else if (type == 1){
      if (ctls[index].in_use) show_text("cc "+ctls[index].map+": "+ctls[index].description)
      else show_text("[cc "+ctls[index].map+"]")
    }
    fill();
  }
}

grab.local = 1;
function grab() { messnamed("the.cntrlr.getinfo","bang") }

clear.local = 1;
function clear() { /*btn_selection = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]; */ mgraphics.redraw() }

update.local = 1;
function update() { messnamed("the.cntrlr.update", "bang") }

output.local = 1;
function output(index){
  if (index) outlet(0,index)
  else outlet(0,hover)
}

function cntrlr_gblarge(index){
  with(mgraphics){

    relocate(0.3655,0.3215)

    for(b=0;b<16;b++){
    var width = gb_large * w
    var x = Math.floor(b/4) * width
    var y = (b % 4) * width;
    set_source_rgba(outline_color)
    rectangle_rounded(x,y,width*0.8,width*0.8,w*0.024,w*0.024)

    view(0,index,mouse)

    index++
    }
  }
  return index
}

cntrlr_gbsmall.local = 1;
function cntrlr_gbsmall(index){
  with(mgraphics){
    relocate(0.043,0.715)

    for(b=0;b<32;b++){
      var width = gb_small * w
      var x = (b % 16) * width;
      var y = Math.floor(b/16) * width
      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.78,width*0.78,w*0.03,w*0.03)

      view(0,index,mouse);
      index++
    }
  }
  return index
}


cntrlr_pebs.local = 1;
function cntrlr_pebs(index){
  with(mgraphics){
    relocate(0.3823,0.0915)

    for(b=0;b<12;b++){
      var width = gb_small * w
      var y = (b % 3) * width * 1.18;
      var x = Math.floor(b/3) * width * 1.22
      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.4,width*0.4,w*0.5,w*0.5)

      view(0,index,mouse);
      index++
    }
  }
  return index
}

cntrlr_faders.local = 1;
function cntrlr_faders(index){
  with (mgraphics){
    relocate(0.032,0.368)

    var width = gb_large * w * 0.95
    var height = gb_thin_height * w

    for(b=0;b<8;b++){
      var x = b * width;
      if (b > 3) x += w * 0.412;
      var y = height*4.87;
      set_source_rgba(outline_color)
      rectangle(x,0,width*0.8,y)

      view(1,index,mouse)
      index++
    }
  }
  return index
}

cntrlr_encs.local = 1;
function cntrlr_encs(index){
  with(mgraphics){
    relocate(0.368,0.04)

    for(b=0;b<12;b++){
      var width = gb_small * w
      var x = (b % 4) * width * 1.22;
      var y = Math.floor(b/4) * width * 1.18

      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.9,width*0.9,w*0.5,w*0.5)

      view(0,index,mouse);
      index++
    }
  }
  return index
}

cntrlr_dials.local = 1;
function cntrlr_dials(index){
  with(mgraphics){
    relocate(0.0354,0.058)

    var width = gb_large * w * 0.93
    var height = gb_thin_height * w

    for(b=0;b<24;b++){
      var radius = gb_large * w / 2.2
      var x = (Math.floor(b / 3)) * (width*1.01) + (width/2.6);
      var y = (b % 3) * (width*1.03) + (width/3);
      if (b > 11) x += w * 0.413;

      arc(x, y, radius, 0, 6.28);

      view(1,index,mouse)
      index++
    }
  }
  return index
}

cntrlr_xpcs.local = 1;
function cntrlr_xpcs(index){
  with(mgraphics){
    relocate(0.024,0.912)

    var width = gb_large * w * 0.91
    var height = gb_thin_height * w

    for(b=0;b<2;b++){
      var radius = gb_large * w / 2.3
      var y = (Math.floor(b / 3)) * (width*1.01) + (width/2.6);
      var x = (b % 3) * (width*1.03) + (width/3);

      arc(x, y, radius, 0, 6.28);

      view(1,index,mouse)
      index++
    }
  }
  return index
}

cntrlr_xpcbs.local = 1;
function cntrlr_xpcbs(index){
  with(mgraphics){
    relocate(0.16,0.91)

    for(b=0;b<8;b++){
      var width = gb_small * w
      var x = (b % 4) * width * 0.48;
      var y = Math.floor(b/4) * width * 0.48

      set_source_rgba(outline_color)
      rectangle(x,y,width*0.4,width*0.4)

      view(0,index,mouse);
      index++
    }
  }
  return index
}

/* ————————— INITIAL FUNCTION CALLS ————————— */

setup()
grab()
update()
