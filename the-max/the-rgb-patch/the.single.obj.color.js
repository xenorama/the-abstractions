outlets = 3;

var obj = undefined;
var obj_type = undefined;
var patch = this.patcher;
var dict = new Dict("the.object_colors_temp")
var aliases = new Dict("the.object.aliases")
var thisobj = {}
var log = 0;
var changed_objs = []
var identifier = jsarguments[1]


function ThisOBJ(){
  this.class = "",
  this.textcolor = [],
  this.bordercolor = [],
  this.color = [],
  this.bgcolor = []
}

function set_obj(o){
  obj = undefined;
  obj_type = undefined;
  log = 0;
  patch.apply(check_obj)
  if (aliases.contains(obj.maxclass)) obj_type = aliases.get(obj.maxclass);
  else {
    obj_type = obj.maxclass;
    aliases.replace(obj_type,obj_type);
  }
  apply_obj(obj.maxclass)
  changed_objs = [];
  update_log();
}

function check_obj(o){
  if (o.getattr("varname") == "obj") { obj = o; }
}

function clear_log(){
  log = 0;
  changed_objs = [];
  update_log();
  find_related_objs();
}

function update_log(){
  outlet(2,"clear");
  if (changed_objs instanceof Array) changed_objs.forEach(function (x) {
    outlet(2,"append",x)
  })
}

function change(c,r,g,b,a){
  log = 1;
  if (changed_objs.indexOf(thisobj.class) == -1) changed_objs.push(thisobj.class);
  colorize(c,r,g,b,a)
}

function colorize(c,r,g,b,a){
  var attr = (c == "bordercolor") ? "color" : c;
  if (obj) obj.setboxattr(attr,r,g,b,a)
  outlet(0,c,r,g,b,a);
  if (log) {
    update_log();
    attr = (attr == "color") ? "bordercolor" : attr;
    dict.replace(thisobj.class+"::"+attr,thisobj.class,r,g,b,a);
  }
}

function find_related_objs(o){
  outlet(1,"clear");
  dict.getkeys().forEach(function (clss) {
    var match = [];
    if (typeof dict.get(clss).getkeys() === "object" && clss !== "patcher_style") {
      dict.get(clss).getkeys().forEach(function (col,index) {
        if (dict.get(thisobj.class).contains(col)){
          var colors = dict.get(clss).get(col)
          colors.splice(0,1);
          match.push(colors.reduce(function (bool,val,pos) { return Math.ceil(bool) * (val == thisobj[col][pos]) }))
        }
      })
        if (match.reduce(function (t,x) { return t*x })) outlet(1,"append",clss)
      }
    })
  }

function apply_obj(target,source){
  var obj_source = (!source) ? target : source;
  thisobj = new ThisOBJ()
  thisobj.class = target;
  if (dict.contains(obj_source)) {
    var colors = dict.get(obj_source).getkeys()
    for (k in colors) {
      if (Object.keys(thisobj).indexOf(colors[k]) !== -1){
        thisobj[colors[k]] = dict.get(obj_source+"::"+colors[k])
        thisobj[colors[k]].splice(0,1);
        change(colors[k],thisobj[colors[k]])
      }
    }
    find_related_objs(thisobj)
  }
}

function copy_from(c){
  apply_obj(thisobj.class,c)
};

function default(){
  var all = dict.get("patcher_style");
  colorize("bgcolor",all.get("bgcolor"))
  colorize("textcolor",all.get("textcolor_inverse"))
  colorize("bordercolor",all.get("accentcolor"))
}

function save_for_all(){
  var all_colors = new Dict()
  all_colors.readany("the.rgb.layouts.json")
  var presets = all_colors.getkeys();
  if (changed_objs) {
    if (!changed_objs instanceof Array) changed_objs = [changed_objs]
    changed_objs.forEach(function (obj) {
      presets.forEach(function (prst) {
        all_colors.replace(prst+"::"+obj,dict.get(obj))
      });
    });
    all_colors.writeagain();
    all_colors.freepeer();
    messnamed(identifier+"_toRGB","reloaddict");
}
}
