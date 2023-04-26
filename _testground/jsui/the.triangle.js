/*
the.triangle.js
triangle for tri-polar nodes interpolation
*/


inlets = 1;
outlets = 0;
autowatch = 1;

// debug mode
// max.clearmaxwindow();

// ----------------------- JSUI -----------------------

// initialize mgraphics
this.box.message("border", 0);
mgraphics.init();
mgraphics.relative_coords = 0;

var width = (this.box.rect[2] - this.box.rect[0]);
var height = this.box.rect[3] - this.box.rect[1];

var brgb = this.patcher.getattr("bgcolor");
var crgb = this.patcher.getattr("locked_bgcolor");

var PI = 3.14;
var HALFPI = PI/2;

var grad = mgraphics.pattern_create_radial(width/2,height/1.5,HALFPI,0,1.4*height,-HALFPI)
grad.add_color_stop_rgba(0,brgb);
grad.add_color_stop_rgba(1,crgb)


function paint(){
  with (mgraphics) {
    set_source_rgba(brgb);
    move_to(width/2,0);
    line_to(width,height);
    line_to(0,height);
    close_path();
    set_source(grad);
    path_roundcorners(20)
    fill();
  }
}

function onresize(w,h)
{
  width = (this.box.rect[2] - this.box.rect[0]);
  height = this.box.rect[3] - this.box.rect[1];
	mgraphics.redraw();
}
onresize.local = 1;

mgraphics.redraw();
