autowatch = 1;

var adapt = 1;
declareattribute("adapt",null,"set_adapt")
var drawto = jsarguments[1] || "";
declareattribute("drawto",null,"set_drawto")
var world = undefined;
var dim = [];
var observer = undefined;
var patch = this.patcher.parentpatcher;

function set_adapt(a){
  adapt = a;
  if (!world) patch.apply(get_world)
  if (world) {
    observer = new MaxobjListener(world,"dim",get_dim)
    if (adapt) outlet(0,world.getattr("dim"))
  }
} set_adapt.local = 1;

function set_drawto(dt){
  drawto = dt;
  set_adapt(adapt)
}

function get_world(w){
  if (w.maxclass == "jit.world") {
    if (!world) world = w;
    if (drawto !== "" && w.getattr("name") == drawto) { world = w; };
  }
}

function get_dim(d){
  if (adapt) outlet(0,d.value)
}
