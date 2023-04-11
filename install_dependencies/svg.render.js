max.clearmaxwindow();

this.box.message("border", 0);
this.box.message("ignoreclick", 0);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var svg_px = ["settings.svg", "info.svg", "screen.svg"];
var svg_mg = [];
for (s=0;s<svg_px.length;s++) {
  svg_mg[s] = new MGraphicsSVG(svg_px[s])
};

var hover = -1;
var offset = 10;
var logo_height;

declareattribute("svg_px","get_svg_px","set_svg_px",1);
function set_svg_px() {
  svg_px = arrayfromargs(arguments);
  if (svg_px.length) {
    svg_mg = [];
    for (s=0;s<svg_px.length;s++) {
      svg_mg[s] = new MGraphicsSVG(svg_px[s])
    };
  }
  mgraphics.redraw();
};
set_svg_px.local = 1;
function get_svg_px() { return svg_px };

function paint() {
  var jsui_box = mgraphics.size;
  var num_logos = svg_mg.length;
  logo_height = jsui_box[1] / num_logos
  if (jsui_box[0] < logo_height) logo_height = jsui_box[0]
  // if (jsui_box[0] < logo_height) box.size(logo_height,jsui_box[1])
  with (mgraphics) {
    if (num_logos) {
      for (s=0;s<num_logos;s++) {
        render_svg(s,0,s*logo_height,logo_height-offset)
      }
    }
  }
}

function render_svg(logo,x,y,w){
  with (mgraphics) {
    identity_matrix();
    translate(x,y);
    var resize = normalize(svg_mg[logo].size,w)
    scale(resize,resize);
    svg_mg[logo].mapreset()
    if (hover == logo) svg_mg[logo].mapcolor([0,0,0,1],this.patcher.getattr("color"));
    svg_render(svg_mg[logo]);
    fill();
  }
}

function normalize(svg_size,coeff,axis){
  return svg_size.map(function (coord) { return coeff / coord });
}
normalize.local = 1;

function onidle(x,y){
  hover = (x <= logo_height-offset) ? Math.floor(y/logo_height) : -1;
  mgraphics.redraw();
} onidle.local = 1;

function onidleout(){
  hover = -1;
  mgraphics.redraw();
} onidleout.local = 1;

mgraphics.redraw();
