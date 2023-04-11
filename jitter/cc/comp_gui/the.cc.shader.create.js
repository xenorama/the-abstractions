autowatch = 1;
outlets = 3;
inlets = 2;
max.clearmaxwindow();

var shader_objs = ["jit.gl.pix","jit.gl.slab","jit.gl.shader"]
var param = ""
var pval = undefined
var attrs = []
var shader_name = "";

function slab(name){
  shader(name,"jit.gl.slab");
}

function shader(name,other){
  if (!arguments.length) outlet(1,"shader name required as argument")
  else {
    var shader_type = (other) ? other : "jit.gl.shader";
    // post(shader_type)
    var patch = this.patcher.parentpatcher;
    var connected_objs = this.box.patchcords.outputs;
    var slab = undefined;
    attrs = []
    for (o in connected_objs) {
      if (shader_objs.indexOf(connected_objs[o].dstobject.maxclass) !== -1) {
        slab = connected_objs[o].dstobject;
        outlet(2,0);
        outlet(0,"getparamlist")
        break;
      }
    }
  var filename = slab.getattr("file").replace(/.+\/(.+)$/g,'$1');
  var shader_pos = [this.patcher.box.rect[0],this.patcher.box.rect[3]+100]
  if (shader_type == "jit.gl.shader") patch.newdefault(shader_pos[0],shader_pos[1],"jit.gl.shader","@name",name,"@file",filename,attrs)
  else patch.newdefault(shader_pos[0],shader_pos[1],shader_type,"@name",name,"@file",filename,attrs)
  outlet(2,1)
  }
}

function paramlist(){
  var list = arrayfromargs(arguments);
  for (p in list) {
    param = list[p];
    if (list[p] !== "colormap") outlet(0,"getparamval",list[p]);
  }
}

function paramval(){
  pval = arrayfromargs(arguments);
  outlet(0,"getparamdefault",param)
}

function paramdefault(){
  var pdefault = arrayfromargs(arguments);
  var changed = 0;
  for (d=0;d<pdefault.length;d++) {
      if (pdefault[d] !== pval[d]) {
        changed = 1;
        attrs.push("@param");
        attrs.push(param);
        if (pval instanceof Array) {
          for (v in pval) { attrs.push(pval[v]) }
        }
        else attrs.push(pval)
        break;
    }
  }
}
