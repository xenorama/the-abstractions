max.clearmaxwindow()

box.message("border",0)
mgraphics.init()
mgraphics.relative_coords = 0;

var rect = [this.box.rect[2]-this.box.rect[0],this.box.rect[3]-this.box.rect[1]];
var aspect = 1.77;
var rect_ext = [1,1.2]
// var aspect = 1.63;
var gb_small = 0.0538;
var gb_large = 0.066;
var gb_thin = 0.067;
var gb_thin_height = 0.0428;
var click = 0;
var hover = [0,-1];


var btns = new Array(87)
post(btns.length,'\n')
var btn_map =
  /*8x8 grid buttons*/ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
  /*3x2 mode buttons*/ 69, 70, 71, 77, 78, 79,
  /*4x2 fade buttons*/ 65, 73, 66, 74, 67, 75, 68, 76,
  /*left/right cx buttons*/ 64, 72,
  /*gary*/ 87]


var ctls = new Array(25)
var ctl_map = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24 ] // not yet correctly mapped
// var ctls_selection = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

var coords = [0,0]

var alpha = 0.9;

var panel_color = this.patcher.getattr("bgcolor")
var textcolor = this.patcher.getattr("textcolor")
var outline_color = [1.,0.95,1.,0.5] // this.patcher.getattr("color")

// var ohm_board = new MGraphics(rect)
var ohmrgb = new Image("livid_ohmrgb.png"); // create a new Image instance from a file from disk
var ohmrgb_size = ohmrgb.size;
post(ohmrgb_size)


function setvalueof(v) {}
function getvalueof() { return }

function paint(){
  rect = mgraphics.size
  if ((rect[0]*(1/rect_ext[0]))/(rect[1]*(1/rect_ext[1])) !== aspect) {
    rect = [rect[0],rect[0]/aspect];
    box.size(rect.map(function(x,i) { return x * rect_ext[i] }))
  }

  ohmrgb.size = rect;
  // post(ohmrgb.size)

  var w = rect[0]
  var h = rect[1]

  with (mgraphics){
                set_source_rgba(panel_color)
                rectangle(0,0,rect)

                // rectangle_rounded(0,0,rect,w*0.03,w*0.03)
                fill_with_alpha(0.7);

    // var instance = new MGraphics(rect)

    // var ohm_diff = rect[0]/ohmrgb_size[0]
    // post(ohm_diff)
    // ohmrgb.size = ohmrgb_size.map(function(x){return x*ohm_diff})
                        // image_surface_draw(ohmrgb,0,0,100,100)
    // fill()

    set_line_width(w*0.002)

    var index = 0;

    set_source_rgba(outline_color)
    // var offset = [w*0.294,h*0.043]
    //
    // translate(offset)
    // var mouse = coords.map(function (c,i) { return c-offset[i] } )
    //
    //                                                                 // main grid buttons (64) by column
    //
    // for(b=0;b<64;b++){
    //   var width = gb_small * w
    //   var x = Math.floor(b/8) * width
    //   var y = (b % 8) * width;
    //   rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
    //   set_source_rgba(1,0.95,1,1)
    //   view(0,index,mouse);
    //   index++
    // }

    // identity_matrix();
    // var offset = [w*0.738,h*0.043]
    //
    // translate(offset)
    // var mouse = coords.map(function (c,i) { return c-offset[i] } )
    //
    //
    //                                                                 // mode buttons (6) by row
    //                                                                 // 69 70 71, 77 78 79
    //
    // for(b=0;b<6;b++){
    //   var width = gb_thin * w
    //   var height = gb_thin_height * w
    //   var x = (b % 3) * width;
    //   var y = Math.floor(b/3) * height;
    //   rectangle_rounded(x,y,width*0.75,height*0.75,w*0.017,w*0.017)
    //   set_source_rgba(1,0.95,1,1)
    //   view(0,index,mouse)
    //   index++
    // }


    // identity_matrix();
    // var offset = [w*0.018,h*0.861]
    //
    // translate(offset)
    // var mouse = coords.map(function (c,i) { return c-offset[i] } )
    //
    //
    //                                                                 // large grid buttons (11) from bottom left to top right by row
    //                                                                 // 65, 73, 66, 74, 67, 75, 68, 76, 64, 72, 87
    //
    // for(b=0;b<11;b++){
    //   var width = gb_large * w
    //   var x = b * width;
    //   var y = 0;
    //   if (b > 3) x += w * 0.453
    //   if (b == 8) {
    //     x -= w * 0.689
    //     y -= (w*0.03)
    //   }
    //   else if (b == 9) {
    //     x -= w * 0.423
    //     y -= (w*0.03)
    //   }
    //   else if (b == 10) {
    //     x = 7 * width;
    //     x += w * 0.455
    //     y = h*0.043 - offset[1]
    //   }
    //   rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
    //   set_source_rgba(1,0.95,1,1)
    //   view(0,index,mouse)
    //
    //   index++
    // }

                                                                    // left dial group (12), 4 x 3 dials

    // identity_matrix();
    // var offset = [w*0.0185,h*0.045]
    //
    // translate(offset)
    // var mouse = coords.map(function (c,i) { return c-offset[i] } )
    //
    // index = 0;
    //
    // for(b=0;b<12;b++){
    //   var radius = gb_large * w / 2.2
    //   var x = (Math.floor(b / 3)) * (width*1.01) + (width/2.6);
    //   var y = (b % 3) * (width*1.03) + (width/3);
    //
    //   arc(x, y, radius, 0, 6.28);
    //   set_source_rgba(1,0.95,1,1)
    //   view(1,index,mouse)
    //
    //   index++
    // }

                                                                    // all faders (9), 2 x 4 faders, crossfader

    identity_matrix();
    var offset = [w*0.018,h*0.462]

    translate(offset)
    var mouse = coords.map(function (c,i) { return c-offset[i] } )

    for(b=0;b<9;b++){

      if (b < 8) {
        var x = b * width;
        if (b > 3) x += w * 0.453;
        var y = height*4.27;
        rectangle(x,0,width*0.8,y)
      }
      else {
        rectangle(w*0.392,w*0.196,height*4.27,width*0.8)
      }

      set_source_rgba(1,0.95,1,1)
      view(1,index,mouse)

      index++
    }

                                                                    // right dial group (4), 4 x 1 dial

    identity_matrix();
    var offset = [w * 0.736,h*0.25]

    translate(offset)
    var mouse = coords.map(function (c,i) { return c-offset[i] } )

    for(b=0;b<4;b++){
      var radius = gb_large * w / 2.2
      var x = b * (width*1.01) + (width/2.6);
      var y = height

      arc(x, y, radius, 0, 6.28);
      set_source_rgba(1,0.95,1,1)
      view(1,index,mouse)

      index++
    }

  }

  if (hover[1] !== -1) get_desc(hover)

}

function onidle(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 0;
  coords = [x,y]
  refresh();
}
function onidleout(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 0;
  hover = [0,-1];
  refresh();
}
function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 1;
  coords = [x,y]
  refresh();
}

function setup(){
  for (i=0;i<btns.length;i++) {
    btns[i] = new Button(btn_map[i],0,"—",1,0,1,-1,-1);
  }

  for (i=0;i<ctls.length;i++) {
    ctls[i] = new Ctl(ctl_map[i],0,"—",1,-1,-1);
  }

}

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

function Ctl(map,in_use,description,active,modifier,banks){
  this.map = map;
  this.in_use = in_use;
  this.description = description;
  this.active = active;
  this.modifier = modifier;
  this.banks = banks;
  this.bgcolor = [0.2,0.2,0.2,0.9];
}

function to_clients(type,index){
  if (type == 0) messnamed("dkr.ohm.execute",btns[index].map,64)
}

function view(type,index,mouse){

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

  else if (type == 1){
    if (mgraphics.in_fill(mouse)) { hover = [type,index] }

    // post(index)

    if (!ctls[index].in_use) {
      if (mgraphics.in_fill(mouse)) mgraphics.stroke()
      else mgraphics.stroke_with_alpha(outline_color[3])
    }
    else {

      mgraphics.set_source_rgba(ctls[index].bgcolor);
      if (mgraphics.in_fill(mouse)) { mgraphics.fill_preserve(); mgraphics.set_source_rgba(outline_color); mgraphics.stroke() }
      else { mgraphics.fill_preserve_with_alpha(alpha); mgraphics.set_source_rgba(outline_color); mgraphics.stroke_with_alpha(outline_color[3]) }

    }
  }

}

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

function grab() { messnamed("dkr.ohm.getinfo","bang") }

function clear() { /*btn_selection = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]; */ mgraphics.redraw() }

function output(index){
  if (index) outlet(0,index)
  else outlet(0,hover)
}

setup()
grab()
