autowatch = 1;

var file = undefined

var ctx = jsarguments[1]
var tex_in = new JitterObject("jit.gl.texture")
if (ctx) tex_in.drawto = ctx;

var tex_out = new JitterObject("jit.gl.texture")
if (ctx) tex_out.drawto = ctx;
tex_out.name = tex_in.name+"_downsampled"
tex_out.adapt = 0;

var max_size = [804,552];
declareattribute("max_size","get_max_size","set_max_size",0);
function set_max_size(x,y) {
  if (!y) max_size = [x,x];
  else max_size = [x,y];
  if (file) read(file)
}; set_max_size.local = 1;
function get_max_size() { return max_size };

function read(f){
  if (f) {
    file = f
    tex_in.read(file)
    transform(tex_in)
  }
}

function jit_gl_texture(u){
  if (u) {
    var tex = new JitterObject("jit_gl_texture","rza")
    tex.jit_gl_texture(u)
    transform(tex)
  }
}

function dim(x,y){
  var dim_in = [x,y]
  var aspect_in = y/x
  var aspect_out
  var transform = get_scale_dim(dim_in)
  if (transform !== undefined) {

    var ds_x = max_size[transform[0]]/dim_in[transform[0]]
    var ds_y = ds_x
    var downsample = [ds_x,ds_y]

    var dim_out = dim_in.map(function (x,i) { return Math.floor(x * downsample[i]) })
    outlet(0,"adapt",0)
    outlet(0,"dim",dim_out)
  }
}

transform.local = 1
function transform(u){
  var dim_in = u.dim
  var aspect_in = dim_in[1]/dim_in[0]
  var aspect_out

  var transform = get_scale_dim(dim_in)
  if (transform !== undefined) {

    var ds_x = max_size[transform[0]]/u.dim[transform[0]]
    var ds_y = ds_x
    var downsample = [ds_x,ds_y]

    tex_out.dim = u.dim.map(function (x,i) { return x * downsample[i] })
    tex_out.jit_gl_texture(u.name)

    // outlet(0,"file",1)
    outlet(0,"jit_gl_texture",tex_out.name)
    // outlet(0,"dim",tex_out.dim)
  }
  else {
    // outlet(0,"file",1)
    outlet(0,"jit_gl_texture",u.name)
    // outlet(0,"dim",tex_in.dim)
  }
}


function get_scale_dim(dim){
  var axis = 0;
  var x = dim[0]
  var y = dim[1]
  if (x>y) aspect = y/x
  else { aspect = x/y; axis = 1 }
  if (axis == 0 && x > max_size[0]) return [0,aspect]
  else if (axis == 1 && y > max_size[1]) return [1,aspect]
  else return undefined;
}; get_scale_dim.local = 1;
