/*

parse dictionary containing attributes for the jit.gl.bfg object
as per valid basis-settings or dependent attributes

designed for use in the.mc.bfg~

*/

// ———————————————————————————————————————————————— SETUP

var dict = new Dict()
var dot = new RegExp('.+(\\.).+') // some attributes have \. (dots) included, which is not compatible with object syntax here

// ———————————————————————————————————————————————— KEY HANDLING

var shader_specifics = { // may throw errors in jit.gl.bfg when applied with incompatible basis ('shader state')
  fractal_params:   new RegExp('^(fractal\\..+)'),
  voronoi_crackle:  new RegExp('^(noise\\.voronoi\\.crackle)'),
  voronoi_jitter:   new RegExp('^(noise\\.voronoi$)'),
  voronoi_shade:    new RegExp('^(noise\\.voronoi\\.id)'),
  voronoi_smooth:   new RegExp('^(noise\\.voronoi\\.smooth)'),
  voronoise_amt:    new RegExp('^(noise\\.voronoise$)'),
  distortion:       new RegExp('^(distorted.*)'),
  basis_inner:      new RegExp('^(distorted.*)'),   // basis.inner
  basis_outer:      new RegExp('^(distorted.*)')    // basis.outer
}

var attr_deps = { // some attributes need other attributes to be flagged
  palette: {
    name: "colorize",
    val: 1
  }
}

var supported_keys = { // some attributes are user-specific nomenclature or require foremost application
  buffer: {
    priority: "",
    exclusions: ["name","adapt"]
  },
  bfg: {
    priority: "basis",
    exclusions: ["basis"]
  },
  renderer: {
    priority: "",
    exclusions: []
  },
  user: {
    priority: "",
    exclusions: []
  },
  audio: {
    priority: "",
    exclusions: []
  }
}

var shader_list = Object.keys(shader_specifics)
var deps_list = Object.keys(attr_deps)
var key_list = Object.keys(supported_keys)

// ———————————————————————————————————————————————— MAX MESSAGES

function dictionary(u){
  var objs = new Dict(u)
  var keys = objs.getkeys()

  if (keys.length) {
    keys = (!(keys instanceof Array)) ? [keys] : keys;
    for (k in key_list) {
      var key = key_list[k]
      if ((keys instanceof Array && keys.indexOf(key) > -1) || keys == key){
        dict = objs.get(key)
        var prio_name = supported_keys[key].priority
        if (prio_name.length && typeof prio_name === "string") {
          var prio = dict.get(prio_name)
          outlet(0,prio_name,prio)
        }
        var attrs = dict.getkeys();
        for (a in attrs) { allocate(a,attrs,key,supported_keys[key].exclusions) }
      }
    }
  }
}

// ———————————————————————————————————————————————— INTERNAL FUNCTIONS

allocate.local = 1;
function allocate(a,attrs,key,exclude){
  var attr = attrs[a];
    if (!exclude.length || exclude.indexOf(attr) == -1) {
      if (key == "bfg") {
      var special_shader_pos = shader_list.indexOf(attr.replace(dot,"_"))
      var special_deps_pos = deps_list.indexOf(attr.replace(dot,"_"))
      if (special_shader_pos == -1 && special_deps_pos == -1) outlet(0,attr,dict.get(attr))
      else {
        if (special_shader_pos > -1){
          var regex = shader_specifics[shader_list[special_shader_pos]]
          var contains = regex.test(dict.get("basis"))
          if (contains) outlet(0,attr,dict.get(attr))
        }
        else if (special_deps_pos > -1){
          var parent_attr = attr_deps[deps_list[special_deps_pos]]
          var in_use = dict.get(parent_attr.name) == parent_attr.val
          if (in_use) outlet(0,attr,dict.get(attr))
        }
      }
    }
    else outlet(0,attr,dict.get(attr))
  }
}
