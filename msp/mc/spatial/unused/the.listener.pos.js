
this.box.message("border",0)

mgraphics.init()
mgraphics.relative_coords = 1;
mgraphics.autofill = 0;

var coords = [0,0]
var rel_coords = [0,0]
var rad = 0;
var rect = [0,0]
var PI = 3.14
var TWOPI = PI * 2;
var listener = new Buffer ("listener")

function setvalueof(x,y,r) { rad = r; rel_coords = [x,y]; puke(); refresh() }
function getvalueof() { return [rel_coords[0],rel_coords[1],rad] }

function paint(){
  rect = mgraphics.size;
  var aspect = rect[0]/rect[1]
  with (mgraphics){
    set_source_rgba(this.patcher.getattr("bgcolor"))
    rectangle_rounded(-1 * aspect,1,2*aspect,2,0.1,0.1)
    fill_with_alpha(0.67)
    set_source_rgba(this.patcher.getattr("color"))
    move_to(rel_coords)
    rotate(rad)
    rel_move_to(-0.1,0)
    rel_line_to(0.2,0)
    rel_line_to(-0.1,0.3)
    close_path()
    fill();
  }
}

function onclick(x,y) {
  ondrag(x,y)
}

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl)
{
  if (cmd) rad += (0.01 * TWOPI*(coords[1]-y)/rect[1])
  else coords = [x,y]
  rel_coords = coords.map(function (x,i) {
    var map = x*2/rect[i]-1
    if (i == 1) map *= -1
    return map;
  } )
  puke()
  refresh()
}
onclick.local = 1;

function puke(){
  listener.poke(1,0,rel_coords[0])
  listener.poke(1,1,rel_coords[1])
  listener.poke(1,3,rad % TWOPI)
}
