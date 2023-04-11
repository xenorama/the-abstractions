box.message("border",0)
mgraphics.init()
mgraphics.relative_coords = 0;

var rect = [this.box.rect[2]-this.box.rect[0],this.box.rect[3]-this.box.rect[1]];
var aspect = 1.77;
var gb_small = 0.0538;
var gb_large = 0.066;
var gb_thin = 0.067;
var gb_thin_height = 0.0428;
var click = 0;
var hover = -1;
var selection = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
var map = [0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
var descriptions = ["—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—","—"]
var coords = [0,0]

function setvalueof(v) {}
function getvalueof() { return }

function paint(){
  rect = mgraphics.size
  if (rect[0]/rect[1] !== aspect) {
    rect = [rect[0],rect[0]/aspect];
    box.size(rect)
  }

  var w = rect[0]
  var h = rect[1]

  with (mgraphics){
    set_source_rgba(this.patcher.getattr("bgcolor"))
    rectangle(0,0,rect)
    // rectangle_rounded(0,0,rect,w*0.03,w*0.03)
    fill_with_alpha(0.6);

    set_line_width(w*0.002)

    var index = 0;

    // set_source_rgba(this.patcher.getattr("color"))
    set_source_rgba(1,0.95,1,1)
    var offset = [w*0.294,h*0.043]

    translate(offset)
    var mouse = coords.map(function (c,i) { return c-offset[i] } )

    for(b=0;b<64;b++){
      var width = gb_small * w
      var x = Math.floor(b/8) * width
      var y = (b % 8) * width;
      rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
      view(index,mouse);
      index++
    }

    identity_matrix();
    var offset = [w*0.738,h*0.043]

    translate(offset)
    var mouse = coords.map(function (c,i) { return c-offset[i] } )

    for(b=0;b<6;b++){
      var width = gb_thin * w
      var height = gb_thin_height * w
      var x = (b % 3) * width;
      var y = Math.floor(b/3) * height;
      rectangle_rounded(x,y,width*0.75,height*0.75,w*0.017,w*0.017)
      view(index,mouse)
      index++
    }


    identity_matrix();
    var offset = [w*0.018,h*0.861]

    translate(offset)
    var mouse = coords.map(function (c,i) { return c-offset[i] } )

    for(b=0;b<11;b++){
      var width = gb_large * w
      // var x = Math.floor(b/8) * width
      var x = b * width;
      var y = 0;
      if (b > 3) x += w * 0.453
      if (b == 8) {
        x -= w * 0.689
        y -= (w*0.03)
      }
      else if (b == 9) {
        x -= w * 0.423
        y -= (w*0.03)
      }
      else if (b == 10) {
        x = 7 * width;
        x += w * 0.455
        y = h*0.043 - offset[1]
      }
      rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
      view(index,mouse)
      index++
    }

  }
}

function onidle(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 0;
  coords = [x,y]
  refresh();
}
function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 1;
  coords = [x,y]
  refresh();
}

function msg_int(i){
  hover = i;
  refresh();
}

function view(index,mouse){
  // if (hover == index || mgraphics.in_fill(mouse) || selection == index) {
  if (mgraphics.in_fill(mouse)) {
    post("fill",index,'\n')
    if (click) {
      selection[index] = !selection[index];
      if (selection[index]) mgraphics.fill(); else mgraphics.stroke();
    }
    else mgraphics.fill();
    output(selection);
  }
  else if (selection[index]) mgraphics.fill()
  else mgraphics.stroke()
}

function msg_int(index,active){
  click = 0;
  selection[index] = active;
  mgraphics.redraw()
}

function description(index,desc){
  click = 0;
  selection[index] = (desc !== "—") ? 1 : 0;
  descriptions[index] = desc;
  mgraphics.redraw()
}

function clear() { selection = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]; mgraphics.redraw() }

function output(index){
  if (index) outlet(0,index)
  else outlet(0,hover)
}
