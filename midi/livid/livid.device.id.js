// include("livid.device.meta.js")

var type = this.patcher.getattr("name")
var device_abbr, component

if (jsarguments[2]){
  device_abbr = jsarguments[2]
  component = type.replace(/livid\.(.+)/,'$1')
}
else {
  device_abbr = (jsarguments[1] == "poly")
    ? type.replace(/livid\.(.+)\..+\..+/,'$1')
    : type.replace(/livid\.(.+)\..+/,'$1')
  component = type.replace(/livid\..+\.(.+)/,'$1')
}
var device = {}

if        (device_abbr == "cntrlr")   { device.name = "cntrlr",   device.midi_port = "Cntrl_r Controls",    device.id = 8,    device.default_midichan = 1 }
else if   (device_abbr == "ohm")      { device.name = "ohm",      device.midi_port = "OhmRGB Controls",     device.id = 7,    device.default_midichan = 8 }
else if   (device_abbr == "code")     { device.name = "code",     device.midi_port = "Code Controls",       device.id = 4,    device.default_midichan = 5 }


function anything(){
  if (jsarguments[1] == "poly"){
    outlet(0,"livid."+device.name+".button.group.maxpat") // idle
  }
  else {
    messnamed(jsarguments[1]+"_device.midiport",    "matchport",1)
    messnamed(jsarguments[1]+"_device.midiport",    "name",device.midi_port)
    // receive ports
    messnamed(jsarguments[1]+"_device",     "getinfo",       "set",     "livid."+device.name+".getinfo")
    messnamed(jsarguments[1]+"_device",     "exec",          "set",     "livid."+device.name+".execute")
    messnamed(jsarguments[1]+"_device",     "update",        "set",     "livid."+device.name+".update")
    // forward (send) ports
    messnamed(jsarguments[1]+"_device",     "to.gui",        "send",    "livid."+device.name+".gui")
    messnamed(jsarguments[1]+"_device",     "to.device",     "send",    "livid."+device.name+".ctrl")
    messnamed(jsarguments[1]+"_device",     "modifier",      "send",    "livid."+device.name+".mod")
    // miscellaneous
    messnamed(jsarguments[1]+"_device",     "dictionary",               "livid."+device.name)
    messnamed(jsarguments[1]+"_device",     "device",                            device.name)
    messnamed(jsarguments[1]+"_device",     "chan",                              device.default_midichan+143)
  }
  if (device.name == "code") {
    var midi = [0,1,64,127]
    var rgb = [
      [0,0.25,0],
      [0,0.5,0],
      [0,0.75,0],
      [0,1,0]
    ]
    messnamed(jsarguments[1]+"_monochrome","midi","clear")
    messnamed(jsarguments[1]+"_monochrome","rgb","clear")
    for (m=0;m<midi.length;m++) {
      messnamed(jsarguments[1]+"_monochrome","midi",midi[m],m)
      messnamed(jsarguments[1]+"_monochrome","rgb",m,rgb[m])
    }
  }
}
