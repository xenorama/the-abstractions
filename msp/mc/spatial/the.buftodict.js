/*

manage custom spatial speaker setups in a dictionary

use in conjunction with:
  * the speaker.setup
  * the.mc.spatial.mapper~

methods:
  * read --> imports a named preset
  * write --> export a named preset

*/

var native_buf = jsarguments[1]+"_native"
var dict = new Dict("speaker.setups")
var settings = new Dict()
var latest = undefined;
var buffername = undefined;
dict.quiet = 1;
dict.readany("the.speaker.setups.json");
var chans = 8;

function write(buffer,title){
  var buf = new Buffer(buffer)
  latest = title;
  buffername = buffer;
  dict.replace(title)
  if (settings.getkeys().length) dict.replace(title+"::settings",settings)
  // if (settings.getkeys().length) dict.replace(title,settings)
  var num_speakers = buf.framecount()
  for (var s = 0; s < num_speakers; s++){
    var speaker = title+"::speaker_"+(s+1);
    dict.replace(speaker+"::index",s)
    var pos = []
    pos[0] = buf.peek(1,s,1)
    pos[1] = buf.peek(2,s,1)
    pos[2] = buf.peek(3,s,1)
    dict.replace(speaker+"::position",pos)
    var rot = []
    rot[0] = buf.peek(4,s,1)
    rot[1] = buf.peek(5,s,1)
    rot[2] = buf.peek(6,s,1)
    dict.replace(speaker+"::rotation",rot)
    var map_audio = Math.floor(buf.peek(7,s,1))
    dict.replace(speaker+"::map_audio",map_audio)
    var map_matrix = Math.floor(buf.peek(8,s,1))
    dict.replace(speaker+"::map_matrix",map_matrix)
    var radius = buf.peek(9,s,1)
    dict.replace(speaker+"::radius",radius)
  }
  dict.writeagain();
  outlet(0,"preset",latest)
}

function read(title){
  if (dict.contains(title)) {
    latest = title;
    var setup = dict.get(title)
    var buf = new Buffer(native_buf)
    buffername = native_buf;
    var includes_settings = setup.contains("settings")

    if (includes_settings) {
      settings = new Dict(setup.get("settings").name)
      var attrs = settings.getkeys();
      // post(attrs);
      for (a=0;a<attrs.length;a++){
        var attrname = attrs[a];
        // if (attrname == "shroud") post(typeof settings.get(attrname));
        // if (attrname == "shroud") messnamed(jsarguments[1]+"_attrs",attrname,"dictionary",settings.get(attrname).name)
        // else if (attrname !== "sigcheck") messnamed(jsarguments[1]+"_attrs",attrname,settings.get(attrname))
        if (attrname !== "sigcheck" && typeof settings.get(attrname) !== "object") messnamed(jsarguments[1]+"_attrs",attrname,settings.get(attrname))
      }
    }

    var num_speakers = setup.getkeys().length-includes_settings;
    buf.send("samps",num_speakers)
    for (var s = 0; s < num_speakers; s++){
      var speaker = "speaker_"+(s+1);
      var pos = setup.get(speaker+"::position")
      buf.poke(1,s,pos[0])
      buf.poke(2,s,pos[1])
      buf.poke(3,s,pos[2])
      var rot = setup.get(speaker+"::rotation")
      buf.poke(4,s,rot[0])
      buf.poke(5,s,rot[1])
      buf.poke(6,s,rot[2])
      var map_audio = setup.get(speaker+"::map_audio")
      buf.poke(7,s,map_audio)
      var map_matrix = setup.get(speaker+"::map_matrix")
      buf.poke(8,s,map_matrix)
      buf.poke(9,s,1) // active state
      var radius = (setup.contains(speaker+"::radius")) ? setup.get(speaker+"::radius") : 1.5;
      post(radius,'\n');
      buf.poke(10,s,radius)
    }
    outlet(0,"buffer",native_buf,num_speakers)
    // var check = new Buffer(title)
    // post(check.framecount())
    // if (check.framecount() > 0) outlet(0,"refer",title,num_speakers)
    // else outlet(0,"duplicate",native_buf,num_speakers)
    outlet(0,"preset",latest)
    outlet(0,"dictionary",settings.name)
  }
  // else error("'"+title+"' not found in the.speaker.setups.json, ignoring.")
  else init();
}

function readagain(){
  if (latest !== undefined) read(latest)
}

function writeagain(){
  if (latest !== undefined && buffername !== undefined) write(buffername,latest)
  // post(buffername)
}

function init(){
  read(dict.get("default"))
}

function default(d){
  dict.replace("default",d)
  dict.writeagain();
}

function dictionary(d){
  settings = new Dict(d);
}

function replace(n,d,u){
  dict.replace(n,d,u);
  dict.writeagain();
  outlet(0,"templates");
}

function remove(n){
  dict.remove(n);
  dict.writeagain();
  outlet(0,"templates");
}
