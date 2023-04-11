max.clearmaxwindow()
autowatch = 1;

var hierarchy = new Dict(jsarguments[1]+"_hierarchy")
var world_dict = new Dict()

var world = "";
var focus = world;
// var prev = focus

function Group(ctx,name){
  this.ctx = ctx;
  this.name = name
}

function get_children(a)
				  {
            var type = a.maxclass;
            if ((/^jit\.gl\..+/).test(type) && a.getattr("drawto") == focus && a.getattr("layer") !== undefined){
              if (hierarchy.contains(focus+"::layer "+a.getattr("layer"))) {
                hierarchy.append(focus+"::layer "+a.getattr("layer"),type+"/"+a.getattr("name"))
              }
              else hierarchy.replace(focus+"::layer "+a.getattr("layer"),type+"/"+a.getattr("name"))
              // post(a.getattr("layer")+" — "+a.maxclass+" ("+a.getattr("name")+")");
              // post();
              if ((/^jit\.gl\.node$/).test(type)) {
                // prev = focus;
                focus = a.getattr("name")
                this.patcher.applydeep(get_children)
              }
              // else focus = prev;
              return;
            }
				  }

function get_world(w){
  if ((/^jit\.world$/).test(w.maxclass)){
    world = w.getattr("name")
    focus = world;
    // prev = focus;
    hierarchy.replace(world)
    this.patcher.applydeep(get_children);
  }
}

hierarchy.clear()
this.patcher.apply(get_world);
outlet(0,"dictionary",hierarchy.name)
