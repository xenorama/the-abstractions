autowatch = 1;

var infos = [{}]

var attrs = {
  ctx: jsarguments[1],
  fontsize: 45,
  fontname: "Lato",
  blend_enable: 1,
  color: [1.,0.98,0.87,0.6],
  enable: 0,
  align: 1,
  layer: 3
}

var mat = new JitterMatrix()
var attrlist = Object.keys(attrs);
var info_type = 1; // 0 = disabled 1 = indices; 2 = position; 3 on selection
var selection = -1;

function Info(pos){
  this.obj = new JitterObject("jit.gl.text",attrs.ctx)
  this.obj.fontsize = attrs.fontsize;
  this.obj.fontname = attrs.fontname;
  this.obj.blend_enable = attrs.blend_enable;
  this.obj.color = attrs.color;
  this.obj.enable = attrs.enable;
  this.obj.align = attrs.align;
  this.obj.layer = attrs.layer;
  this.obj.position = pos;
}

function jit_matrix(n){
  mat = new JitterMatrix(n)
  var dim = mat.dim;
  var num_speakers = (dim instanceof Array) ? dim[0] : dim;
  var additions = num_speakers - infos.length;
  // if (infos.length < num_speakers)
  infos = [{}]
  for (s=0;s<num_speakers;s++){
    var data = mat.getcell(s,0)
    var pos = [data[0],data[1],data[2]]
    infos[s] = new Info(pos.map(function (x) { return Math.round(x*100)/100 } ));
    // post(data,'\n')
    if (info_type == 1) infos[s].obj.text(data[3]+1);
    else if (info_type == 2) infos[s].obj.text(infos[s].obj.position);
    else if (info_type == 3 && selection == s) infos[s].obj.text(data[3]+1);
    else if (info_type == 4 && selection == s) infos[s].obj.text(data[3]+1+":",infos[s].obj.position);
  }
}

function anything(){
  var attr = messagename;
  var args = arrayfromargs(arguments)
  setall(attr,args)
}

function setall(data,values){
  attrs[data] = values;
  infos.forEach(function (o) {
    o.obj[data] = values;
  } )
}

function set_info_type(im){
  info_type = im;
  if (mat.name) jit_matrix(mat.name)
}

function set_selection(s){
  selection = s;
  if (mat.name && (info_type == 3 || info_type == 4)) jit_matrix(mat.name)
}
