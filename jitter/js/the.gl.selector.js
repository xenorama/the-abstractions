max.clearmaxwindow()
autowatch = 1;

var mixer = new Dict()

function Object(maxobj,type,name,enable,ctx){
  this.gl = maxobj
  this.type = type
  this.name = name
  this.enable = enable
  this.enable_default = enable
  this.ctx = ctx

}

function solo(i){
  if (all_objs.length){
    for (j=0;j<all_objs.length;j++) {
      if (i == j) all_objs[j].gl.setattr("enable",!all_objs[j].gl.getattr("enable"))
    }
  }
}

function unique(i){
  if (all_objs.length){
    for (j=0;j<all_objs.length;j++) {
      if (i == j) all_objs[j].gl.setattr("enable",1)
      else all_objs[j].gl.setattr("enable",0)
    }
  }
  outlet(0,"unique",i)
}

function unsolo(){
  if (all_objs.length){
    for (j=0;j<all_objs.length;j++) {
      all_objs[j].gl.setattr("enable",all_objs[j].enable_default)
    }
  }
}




function get_gl_objs(gl){
  type = gl.maxclass
  if ((/^jit\.gl\..+/).test(type)){
    var enable = gl.getattr("enable")
    var name = gl.getattr("name")
    var maxobj = gl
    var ctx = gl.getattr("drawto")
    mixer.replace(gl.getattr("name"),enable)
    var obj = new Object(maxobj,type,name, enable,ctx)
    all_objs.push(obj)
    // post(obj.gl.maxclass,'\n')
  }
}

var all_objs = []
this.patcher.apply(get_gl_objs);
outlet(0,"dictionary",mixer.name)
