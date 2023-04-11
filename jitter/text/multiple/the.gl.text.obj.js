/*
jit.gl.text.multiple
abstraction imitating the behaviour of jit.gl.multiple but for a jit.gl.text instance

This JS code hosts the individual instances and replicates the parent instance as jit.gl.node to synchronise all children
and allocate attributes individually.

Aim is to provide a means of using char-matrices to control the text contents of jit.gl.text instances as jit.gl.multiple does with OB3D-objects

Written by Tim Heinze © 2022, www.xenorama.com.

*/


autowatch = 1;
inlets = 3;
outlets = 2;
// max.clearmaxwindow()

setinletassist(0,"patcher arguments and attributes as well as alle abstraction input messages")
setinletassist(1,"(int) number of jit.gl.text instances")
setoutletassist(0,"(index,jit_matrix) <reserved>")
setoutletassist(1,"dumpout")

/*
____________________________
VARIABLES

*/

var ctx = jsarguments[1] // render context name
var txt = undefined // target jit.gl.text object
var target_name = "" // target jit.gl.text object name
var gl_params = [] // initial glparams to control using matrices
var gl_params_count = gl_params.length // need not be declared in object box
var txt_attrs = new Array(gl_params_count) // attribute listener instances
var txt_indices = new Array(gl_params_count) // keep track of indices in use within textfile
var mtrx = [] // input matrices
var txt_objs = [] // jit.gl.text instances
var source_indices = [] // indices found in coll file
var text_matrix = "" // jitter matrix containing lines of text
var count = 0; // initial number of instances: 0 (idle)
var count_prev = -1; // support delta calc in obj count
var node = new JitterObject("jit.gl.node",ctx) // replaces initial jit.gl.text object with a sub renderer assuming shared attributes (inherit_params)
var inherit_params = ["anchor", "anim", "animmode", "antialias", "auto_material", "automatic", "aux_color", "axes", "blend", "blend_enable", "blend_mode", "capture", "color", "cull_face", "depth_clear", "depth_enable", "depth_write", "dest_dim", "drawto", "enable", "filterclass", "fog", "fog_color", "fog_density", "fog_params", "fog_range", "gl_color", "inherit_all", "inherit_color", "inherit_depth", "inherit_fog", "inherit_material", "inherit_poly", "inherit_texture", "inherit_transform", "layer", "lighting_enable", "line_width", "mat_ambient", "mat_diffuse", "mat_emission", "mat_specular", "material", "matfile", "name", "point_mode", "point_size", "poly_mode", "position", "quat", "rotate", "rotatexyz", "scale", "shader", "shadow_caster", "shininess", "smooth_shading", "texture", "transform_reset", "two_sided", "viewalign"]
var text_source = "coll" // type of text source // currently only 'coll' is supported
var entries = new Dict(); // dictionary to pull coll data into
var source_name = "" // coll reference name
var quiet = 1; // when flagged, all errors are posted as messages to the Max Window
var init = 0; // initialisation flag; active once a valid "done" message is received from parent patcherargs

var patch = this.patcher
for (p=0;p>-1;p++){ // find top-level patch and search from there
  if (patch.parentclass !== "jpatcher") break
  else patch = patch.parentpatcher;
}



/*
____________________________
ATTRIBUES

*/

function glparams(){
  gl_params = arrayfromargs(arguments)
  gl_params_count = gl_params.length
  init_txtobjs();
}

function textmode(ts){ // 'coll' referene or 'charcode'
  text_source = ts
  // populate_dict();
  // init_txtobjs()
}

function drawto(d){ // render context name, if provided
  ctx = d;
  node.drawto = ctx;
  seek_textobj();
}

function targetname(t){ // parent jit.gl.text name (@name attribute, not varname)
  target_name = t
  seek_textobj();
}

function instances(i){ // number of text instances
  count = i;
  init_txtobjs();
}

function source(coll){ // reference name of a coll object
  source_name = coll
  populate_dict();
  init_txtobjs();
}

function quiet(q){ // dont post errors to Max console
  quiet = q;
}


/*
____________________________
MESSAGES

*/

function sendtext(){
  var content = arrayfromargs(arguments)
  if (!isNaN(content[0])) {
    txt_objs[content[0]].text(content[1])
  }
}

/*
TEXT MATRIX INPUT
*/

function jit_matrix(u){
  if (inlet == 1){
    text_matrix = new JitterMatrix(u)
    text_from_matrix(text_matrix)
  }
}


/*
____________________________
INTERNAL FUNCTIONS

*/

populate_dict.local = 1;
function populate_dict(){
  if (init) {
    if (text_source == "coll" && source_name !== "") pull_coll()
    else if (text_source !== "charcode") print("only textsource 'coll' supported with valid reference name required")
  }
}

pull_coll.local = 1;
function pull_coll(){
  entries.clear();
  entries.pull_from_coll(source_name)
  source_indices = entries.getkeys();
}

seek_textobj.local = 1
function seek_textobj(){
  if (init) {
    if (target_name !== "") {
      patch.applydeep(get_textobj)
      if (txt === undefined) print("no jit.gl.text object with name '"+target_name+"' found. disabling.\nNote: the render context must be active and rendering for gl objects to be visible to this object, hence one can litsen to the 'init' message from the dump outlet of jit.world and send a 'bang' to jit.gl.text.multiple")
      init_txtobjs()
    }
    else print("valid jit.gl.text object with name as 'targetname' required. disabling.")
  }
}

text_from_matrix.local = 1;
function text_from_matrix(u){
  if (text_source == "charcode"){
    if (u.dim[1]) {
      var lines = u.dim[1]
      var length = u.dim[0]
    }
    else {
      var lines = 0
      var length = u.dim
    }
    var min = Math.min(Math.max(lines,1),count)
    for (l=0;l<min;l++){
      var chars = []
      var text = "";
      for(t=0;t<length;t++){
        text = (lines !== 0) ? u.getcell(t,l) : u.getcell(l)
        post(length,lines,min,text,l,t,'\n')
        chars.push(text)
      }
      text = chars.map(function (ch) { return String.fromCharCode(ch) })
      // post(txt_objs[l].name)
      txt_objs[l].text(text)
    }
  }
  else if (text_source == "coll") {
    pull_coll()
    if (u.dim[1]) {
      var this_instances = u.dim[0] * u.dim[1]
    }
    else var this_instances = u.dim
    txt_objs.forEach(function (a,w) {
      if (w<count){
        w %= this_instances
        if (w < source_indices.length) {
          var v_entry = Math.floor(u.getcell(w)).toString()
          if (entries.contains(v_entry)) a.text(entries.get(v_entry))
        }
      }
    })
  }
}


/*
CREATE JIT.GL.TEXT OBJECT LISTENER
*/
get_textobj.local = 1
function get_textobj(j){
  if (j.maxclass == "jit.gl.text" && j.getattr("name") == target_name){
    if (ctx === undefined || j.getattr("drawto") == ctx) {
      if (ctx === undefined) ctx = j.getattr("drawto");
      txt = j // jit.gl.text object in environment (targetname)
      ctx = txt.getattr("drawto");
      node.drawto = ctx;
      var watchlist = txt.getattrnames()
      watchlist.forEach(function (ta,i) {
        txt_attrs[i] = new MaxobjListener(txt, ta, txt_func);
      })
    }
  }
}

/*
CALLBACK FUNCTION FOR JIT.GL.TEXT ATTRIBUTES
*/
txt_func.local = 1
function txt_func(data){
  var thisattr = data.attrname
  if (thisattr == "drawto") { ctx = data.value; post("jit.gl.text drawing to:",ctx) }
  else if (inherit_params.indexOf(thisattr) !== -1) node[thisattr] = data.value;
  else if (txt_objs[0] && gl_params.indexOf(thisattr) == -1) {
    if (inherit_params.indexOf(thisattr) !== -1) {
      node[thisattr] = data.value
    }
    else txt_objs.forEach(function (obj) {
      obj[thisattr] = data.value
    })
  }
}

/*
CRETAE INSTANCES OF JIT.GL.TEXT
*/
init_txtobjs.local = 1
function init_txtobjs(){
  if (count !== count_prev && count !== 0 && txt !== undefined){
    var num = count
    var index = 0
    if (count > count_prev){
      num = (count_prev == -1) ? count : count-count_prev
      index = (count_prev == -1) ? 0 : count_prev
      // txt_objs = []
      for(f=0;f<num;f++){
        var g = f+index;
        txt_objs[g] = new JitterObject("jit.gl.text",node.name)
        txt.getattrnames().filter(function (n) {
          return inherit_params.indexOf(n) == -1
        }).forEach(function (gl) {
          if (gl !== "text") {
            txt_objs[g][gl] = txt.getattr(gl)
          }
        })
        if (text_source == "coll" && entries.contains(g.toString())) {
          var entry = entries.get(g.toString())
          txt_objs[g].text(entry);
        }
        else if (text_matrix.dim !== undefined) text_from_matrix(text_matrix)
      }
    }
    else if (count < count_prev){
      num = count_prev-count
      index = count
      for(g=0;g<num;g++){
        txt_objs[g+index].text("")
        txt_objs[g+index].enable = 0;
        txt_objs[g+index] = undefined
      }
    }
  count_prev = count
  }
  outlet(1,"bang")
}

/*
____________________________
MAX METHODS

*/

/*
MATRIX CTRL
*/
function anything(){
  var args = arrayfromargs(arguments)
  var i = arguments[0]
  if (!isNaN(i)){
    if (inlet == 2){
      count = i
      instances(i)
    }
    else if (inlet == 0) {
      if (arguments[1] == "jit_matrix"){
        if (gl_params_count > i){
          mtrx[i] = new JitterMatrix(arguments[2])
          var pc = mtrx[i].planecount
          if (gl_params.indexOf("text") == i) text_from_matrix(mtrx[i])
          else if (mtrx[i].dim[1]) {
            var this_instances = mtrx[i].dim[0] * mtrx[i].dim[1]
          }
          else var this_instances = mtrx[i].dim
          txt_objs.forEach(function (a,u) {
            if (u<count){
              u %= this_instances
              if (pc == 1) a[gl_params[i]] = mtrx[i].getcell(u)
              else {
                var list = []
                for (p=0;p<a[gl_params[i]].length;p++){
                  list[p] = mtrx[i].getcell(u)[p]
                }
                a[gl_params[i]] = list
              }
            }
          })
          // if (txt) outlet(0,i,"jit_matrix",mtrx[i].name)
        }
      }
    }
    else if (i = "jit_matrix") print("the 'jit_matrix' method in first inlet requires a 0-based numerical index prepended and is being ignored otherwise…. Use the second inlet for text rendering using jit_matrix")
  }
}



/*
____________________________
INITIALISATION

*/

function done(){
  if (count == 0) print("maximum instance count required as argument 1 or 2 (if named context provided). disabling")
  else if (gl_params_count == 0) print("at least one valid glparam needs to be specified")
  else {
    init = 1;
    populate_dict() // grab contents from source (coll)
    seek_textobj() // find targetname jit.gl.text object and instantiate children
  }
}

/*
____________________________
DEBUGGER

*/

print.local = 1;
function print(){
  if (quiet) post("jit.gl.text.multiple:",arrayfromargs(arguments),'\n')
  else error("jit.gl.text.multiple:",arrayfromargs(arguments),'\n')
}

function getparams(){
  post("————————————————————\njit.gl.text.multiple — GLOBAL attributes:\n")
  txt.getattrnames().forEach(function (ta) {
    var attr = txt.getattr(ta)
    attr = (attr == null) ? "—" : attr
    post(ta+":",attr,'\n')
  })
  post("————————————————————\njit.gl.text.multiple — individual attributes:\n")
  txt_objs.forEach(function (ta,i) {
    post("— "+i+" — ("+ta.name+")\n")
    gl_params.forEach(function (gl,i) {
      var attr = (gl == "text") ? ((text_source == "coll") ? entries.get(i.toString()) : "(charcode jit_matrix)") : ta[gl]
      post(gl+":",attr,'\n')
    })
  })
}
