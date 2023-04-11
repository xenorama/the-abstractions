max.clearmaxwindow();

// ----------------------- JSUI -----------------------

// initialize mgraphics
this.box.message("border", 0);
mgraphics.init();
mgraphics.relative_coords = 1;
mgraphics.autofill = 0;

var patch = this.patcher;
var patch_attrs = patch.getattrnames();
var locked_color = "elementcolor";
var hover_color = "color";
var unlocked_color = "accentcolor";
var locked_color_rgba = patch_color(locked_color);
var hover_color_rgba = patch_color(hover_color);
var unlocked_color_rgba = patch_color(unlocked_color);
var click
var locked = 0;
var hover = 0;
var gradients = 1;

function getvalueof() { return !locked; }
function setvalueof(v) { locked = !v; refresh(); output(); }


// ----------------------- MGRAPHICS -----------------------

function paint() {
  with (mgraphics) {

    var coords = mgraphics.size;
    // var aspect = coords[0]/coords[1]
    // if (coords[0]>coords[1]) scale(aspect,1)
    // else scale(1,aspect)


    // COLOR

    var current_color = (hover) ? hover_color_rgba : ((!locked) ? unlocked_color_rgba : locked_color_rgba);
    var dark_color = current_color.map(function (x,i) { if (i !== 3) return x*0.87; else return 1 });
    var bright_color = current_color.map(function (x,i) { if (i !== 3) return x*0.8+0.2; else return 1 });


    // LOCK BO

    if (gradients) {
      var grad = pattern_create_linear(coords[0]*0.4,coords[1]*0.5,coords[0],0)
      grad.add_color_stop_rgba(0,current_color);
      grad.add_color_stop_rgba(1,bright_color);
      set_source(grad)
    }
    else set_source_rgba(current_color)

    if (!locked) {
      move_to(-0.6,-0.1)
      if (click){
        line_to(-0.6,0.7)
        line_to(0,0.7)
        line_to(0.6,0.7)
        line_to(0.6,0.3)
      }
      else {
        line_to(-0.6,0.6)
        line_to(0,0.7)
        line_to(0.4,0.7)
        line_to(0.6,0.3)
      }
      set_line_cap("round")
    }
    else {
      if (!click) translate(0,0.2)
      move_to(-0.6,0)
      line_to(-0.6,0.7)
      line_to(0,0.7)
      line_to(0.6,0.7)
      line_to(0.6,0)
      set_line_cap("square")
    }
    path_roundcorners(.3)
    set_line_width(.25)
    stroke()

    if (gradients) {
      var grad = pattern_create_linear(0,coords[1]*0.75,coords[0],coords[1]*0.75)
      grad.add_color_stop_rgba(0,dark_color);
      grad.add_color_stop_rgba(1, current_color);
      set_source(grad)
    }
    else set_source_rgba(current_color)

    identity_matrix();
    translate(0,1.05)
    scale(1,0.8)

    // BODY

    move_to(-1,1)
    line_to(1,1)
    line_to(1,-0.2)
    line_to(-1,-0.2)
    close_path()
    path_roundcorners(0.12)

    // KEY HOLE

    scale(0.8,0.8)
    translate(0.7,0.15)

    if (click && locked) {
      rotate(-0.6)
      translate(-0.4,0.5)
    }
    else if (click && !locked) {
      rotate(0.6)
      translate(0.05,-0.63)
    }

    move_to(-0.06,0)
    line_to(0.06,0)
    line_to(0.06,0.45)
    line_to(0.18,0.55)
    path_roundcorners(0.05)
    line_to(0.18,0.8)
    line_to(-0.18,0.8)
    line_to(-0.18,0.55)
    path_roundcorners(1)
    line_to(-0.06,0.45)
    close_path();
    path_roundcorners(0.05)
    fill()

    if (coords[0]!=coords[1]) box.size(coords[0],coords[0])
  }
}


function forcesize(w,h)
{
	if (w!=h) {
		w = h;
		box.size(w,h);
	}
}
forcesize.local = 1;

function onresize(w,h)
{
	forcesize(w,h);
	// draw();
	refresh();
}
onresize.local = 1;

function onclick(){
  click = 1;
  refresh();
} onclick.local = 1;

function onidle(){
  if (click) { locked = !locked; output(); }
  click = 0;
  hover = 1;
  refresh();
} onidle.local = 1;

function onidleout(){
  hover = 0;
  refresh();
}

function output(){
  outlet(0,!locked);
}


// ----------------------- MAX MESSAGES -----------------------

function msg_int(i){
  locked = !i;
  output();
  refresh()
}

function msg_float(f){
  msg_int(Math.floor(f))
}

// ----------------------- COLOR HANDLING -----------------------

function patch_color(c){
	if (typeof c === "string" && patch_attrs.indexOf(c) !== -1) { return patch.getattr(c) }
	else if (c.length == 4) return c;
}
patch_color.local = 1;


mgraphics.redraw();
