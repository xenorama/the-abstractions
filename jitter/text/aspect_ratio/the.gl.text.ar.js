/*

by Tim Heinze, www.xenorama.com, (c) 2022
the.gl.text.ar.js aims to automatically manage jit.gl.text transformations
when drawing to a parent jit.gl.node upon resizing main rendering window.
This code supports native jit.gl.node behaviour, capture mode to
jit.gl.videoplane and post-processing as well as jit.gl.camera

Requirements:
• jit.world with named context
• (jit.gl.text) drawing to a jit.gl.node

Tags: MaxMSP, JS, OpenGL

*/

// max.clearmaxwindow()
autowatch = 1;
outlets = 3;

setinletassist(0,"patcher attributes and methods")
setoutletassist(0,"connect to jit.gl.node when rendering directly to parent (@capture 0)")
setoutletassist(1,"connect to jit.gl.node when rendering to jit.gl.cornerpin or jit.gl.videoplane (@capture 1)")
setoutletassist(2,"dumpout; 0/1 indicate functionality of object")

var notify = 1;
  declareattribute("notify","get_notify","set_notify",0);
  function set_notify(d) {
  notify = d;
  if (notify && listen) get_status();
  }; set_notify.local = 1;
  function get_notify() { return notify };

var preserve_size = 1; // preserve size when in capture mode
  declareattribute("preserve_size","get_preserve_size","set_preserve_size",0);
  function set_preserve_size(d) {
  preserve_size = d;
  if (j_obj) apply(j_obj.getattr("size"))
  }; set_preserve_size.local = 1;
  function get_preserve_size() { return preserve_size };

if (jsarguments[2] == 0 || jsarguments[3] == 0 || jsarguments[2] === undefined || jsarguments[3] === undefined) {
  var size = [640,480];
  post("the.gl.text.ar:","window size not provided, hence set to default 640x480\n")
}
else var size = [jsarguments[2],jsarguments[3]]// initial size
var sendto = jsarguments[5] // receive port to send to for jit.gl.text
var node = jsarguments[4] // receive port to send to (<reserved>)
if (!node || !isNaN(node)) error("the.gl.text.ar:","valid jit.gl.node name required as argument 4\n")
var j_size // initialize MaxobjListener
var gl_capt // initialize MaxobjListener
// var gl_adapt // initialize MaxobjListener
var listen = 0; // don't listen initially
var active = 0; // activated by parent patcherargs
var ar = size[0]/size[1] // aspect ratio of window
var calibration = size[0]/size[1] // calibration to initial size
var j_obj // jit.world once found
var gl_obj // jit.gl.node once found
var txt_obj = undefined // interpret sendto-argument as jit.gl.text name, if found
var capture = 0 // initialise to 0 to avoid errors
// var adapt = 1 // initialize to 1
var toggle = false // flagged when capture mode changes for the first time
var change = false // flagged when changing scale parameter
var status_elements = [] // storage for info to Max Console
var scale_ui = [1,1,1] // initialize scale modifications
var inherit = 1;
var ctx = jsarguments[1]

if (!ctx || !isNaN(ctx)) error("the.gl.text.ar:","valid jit.world context name required as argument 1\n")
if (!node || !isNaN(node) || !ctx || !isNaN(ctx)){ // provide argument assist
  info();
  outlet(2,0)
}
else {
  listen = 1
  bang() // set Listeners
  outlet(2,1)
}

function get_world(j){ // create Listeners
  if (j.maxclass == "jit.world" && j.getattr("name") == ctx) {
    status_elements.push([j.maxclass,j.getattr("name")])
    j_obj = j;
    j_size = new MaxobjListener(j_obj, "size", get_size);
    if (inherit) {
      size = j_obj.getattr("size");
    }
  }
  else if (j.maxclass == "jit.gl.node" && j.getattr("name") == node) {
    status_elements.push([j.maxclass,j.getattr("name")])
    gl_obj = j;
    gl_capt = new MaxobjListener(gl_obj, "capture", get_capt);
    // gl_adapt = new MaxobjListener(gl_obj, "adapt", get_adapt);
  }
  else if (j.maxclass == "jit.gl.text" && j.getattr("name") == sendto) {
    status_elements.push([j.maxclass,j.getattr("name")])
    txt_obj = j;
  }
} get_world.local = 1

function get_size(win){ // observe window size of jit.world
  apply(win.value)
} get_size.local = 1

function apply(win){ // apply tansformation
  var t = size[1]/win[1]
  if (!capture) {
    var ta = [t,t,t]
    var scale_out_t = ta.map(function (s,i) {return s * scale_ui[i]})
    gl_obj.setattr("scale",scale_out_t)
    outlet(0,"scale",scale_out_t)
    outlet(1,"scale",1)
    if (change == true) outlet(2,"param","scale",scale_out_t)
    if (isNaN(sendto) && (toggle == true || change == true)) {
      toggle = false
      if (txt_obj === undefined) messnamed(sendto,"scale",1)
      else txt_obj.setattr("scale",scale_out_t)
    }
    toggle = false
    change = false
  }
  else {
    ar = win[0]/win[1]
    ar /= calibration
    if (preserve_size) {
      ar *= size[0]/win[0]
      // ar /= t
      // t = 1;
    }
    // if (!preserve_size) ar /= calibration
    // else ar *= size[0]/win[0]
    var ca = [ar,ar,ar]
    var scale_out_c = ca.map(function (s,i) {return s * scale_ui[i]})
    gl_obj.setattr("scale",scale_out_c)
    print(t)
    var scale_out_c_t = scale_out_c.map(function (u) { return u / t })
    outlet(1,"scale",scale_out_c_t)
    if (change == true) outlet(2,"param","scale",scale_out_c_t)
    print(txt_obj)
    if (isNaN(sendto)) {
      if (txt_obj === undefined) messnamed(sendto,"scale",scale_out_c_t)
      else txt_obj.setattr("scale",scale_out_c_t)
    }
    change = false
  }
} apply.local = 1;

function get_capt(sub){ // observe capture mode of jit.gl.node
  capture = sub.value;
  apply(j_obj.getattr("size"))
  toggle = 1;
} get_capt.local = 1

function bang(){ // get Listeners once
  if (listen && active) {
    var patch = this.patcher
    for (p=0;p>-1;p++){ // find top-level patch and search from there
      if (patch.parentclass !== "jpatcher") break
      else patch = patch.parentpatcher;
    }
    status_elements = []
    j_obj = undefined
    gl_obj = undefined
    txt_obj = undefined
    patch.applydeep(get_world)
    // if (j_obj === undefined) error("the.jit.gl.text.ar:","no jit.world rendering context named '"+ctx+"' found\n")
    // if (gl_obj === undefined) error("the.jit.gl.text.ar:","no jit.gl.node named '"+node+"' found\n")
    get_status()
  }
}

function calibrate(){ // set initial window size
  size = j_obj.getattr("size")
  apply(size);
  outlet(2,"param","size",size)
}

function info(){ // argument assistance
  post("the.gl.text.ar: initial arguments\n","• #1 (symbol) render context name\n","• #2 (int) dim[x]\n","• #3 (int) dim[y]\n","• #4 (symbol) jit.gl.node name\n","• #5 (symbol) jit.gl.text name (if known) or named receive port (optional)\n")
}

function msg_int(i){ // active/idle
  active = i;
  if (notify) {
    if (i == 1) print("active")
    else print("idle")
  }
  bang();
}

function inherit(i){
  inherit = i;
}

function get_status(){
  if (notify) status_elements.forEach(function (x) { post("the.gl.text.ar:","binding to",x[0],"named '"+x[1]+"'\n")})
} get_status.local = 1


function print(){ // console post with line break and leading object name
  if (notify) post("the.jit.gl.text.ar:",arrayfromargs(arguments),'\n');
} print.local = 1;

function scale(s){ // additional scaling for jit.gl.node group
  change = true
  switch (arguments.length) {
    case 3:
      scale_ui = s;
      break;
    case 2:
      scale_ui = [s[0],s[1],1];
      break;
    default:
      scale_ui = [s,s,s]
      break;
  }
  if (j_obj) apply(j_obj.getattr("size"))
}

function anything(){
  outlet(2,"?","doesn't understand '"+messagename+"'")
}
