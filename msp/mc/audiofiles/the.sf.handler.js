/*

* uses mxj buf.Op
* readfolder: create single multichannel-audio_files from a number of mono or stereo files
* split: create multiple audio_files from a multichannel-audiofile
* resize resulting number of channels
* map channels
* normalize across channels

*/

max.clearmaxwindow();
autowatch = 1;
outlets = 3;

var audio_files = {
  wrapper: new PolyBuffer(jsarguments[1]+"_audio_files"),
  buffers: [],
  chans: 0,
  labels: [],
  map: 0,
  align: [],
  names: [],
  path: "",
  comp: new Buffer(jsarguments[1]+"_comp")
}

var audio_bufs = [];
var temp_bufs = [];
var duration = 0;
var sr = 48000;
var format = 24;
var quantization = 0;
var filetype = "WAVE";
var extension = ".wav";
var dither = 0;
var normalize = 1;
var chans = 0;


function readfolder(f){
  if (typeof f === "string") {
    var fold = new Folder(f);
    var path = fold.pathname;
    audio_files.wrapper.clear();
    var index = 1;
    while (!fold.end){
      if (fold.filename.length) {
        audio_files.wrapper.append(path+fold.filename)
      }
      fold.next();
    }

    audio_files.wrapper.getbufferlist().forEach(function (x,i) {
      audio_files.buffers[i] = new Buffer(x)
      audio_files.names[i] = x
      var chans = audio_files.buffers[i].channelcount()
      var length = audio_files.buffers[i].length()
      if (length > duration) duration = length;
    });
    audio_files.comp.send("size",duration)

    map_setup(audio_files.wrapper.getbufferlist().length);

    merge();
  }
}

function split(f){
  audio_files.comp.send("clear");
  audio_files.comp.send("importreplace",f)
  audio_files.wrapper.clear();
  audio_files.names = []
  var name = f.replace(/.+\/(.+)\..+$/,"$1")
  audio_files.path = f.replace(/(.+\/).+\..+$/,"$1")
  var chans_orig = audio_files.comp.channelcount();
  chans = map_setup(chans_orig);
  var bufs = [];
  var multiples = Math.ceil(chans/chans_orig) * chans_orig;

  for (c=0;c<multiples;c++) {
    audio_files.wrapper.appendempty(0,1)
    if (audio_files.map[0] == -1) audio_files.map[c] = c;
    else audio_files.map[c] = c % chans_orig;
    bufs[c] = jsarguments[1]+"_audio_files."+(c+1)
    audio_files.names[c] = audio_files.labels.length ? name+"_0"+(c+1)+"_"+audio_files.labels[c%audio_files.labels.length] : name+"_0"+(c+1)
  }

    if (chans_orig !== chans){
      var temp = new Buffer(jsarguments[1]+"_temp");
      var bufs_temp = [];

      var multiples = Math.ceil(chans/chans_orig);

      for (var st=0; st<multiples; st++){
        bufs_temp[st] = jsarguments[1]+"_comp";
      }

      outlet(0,"set",jsarguments[1]+"_temp")
      outlet(0,"merge",bufs_temp)
      if (normalize !== 0) temp.send("normalize",normalize)
      outlet(0,"split",bufs)
    }
  else {
    if (normalize !== 0) audio_files.comp.send("normalize",normalize)
    outlet(0,"set",jsarguments[1]+"_comp")
    outlet(0,"split",bufs)
  }
  outlet(2,"bang")
}

function parse(){
  audio_files.wrapper.getbufferlist().forEach(function (x,i) {
    if (i < chans) audio_files.wrapper.send(audio_files.map[i]+1,"write",audio_files.path+audio_files.names[i]+extension)
  })
  // audio_files.wrapper.clear();
  // audio_files.comp.send("clear");
}

function merge(){
  outlet(0,"set",jsarguments[1]+"_comp")
  if (audio_files.map[0] !== -1) {
    var name_selection = []
    audio_files.names.forEach(function (x,i) {
      var j = audio_files.map[i]
      name_selection[i] = audio_files.names[j]
    })
    outlet(0,"merge",name_selection)
  }
  else outlet(0,"merge",audio_files.names)
  if (normalize !== 0) audio_files.comp.send("normalize",normalize)
  outlet(1,"write",filetype);
}

function map_setup(chans){
  var selection = audio_files.map.length;
  if (audio_files.chans == 0){
    if (chans > selection) {
      for (c=0;c<audio_files.chans;c++){
        audio_files.map[c] = (selection[0] == -1) ? c : audio_files.map[c] || audio_files.map[c%selection]
      }
    }
    return chans;
  }
  else {
    if (audio_files.chans > selection) {
      for (c=0;c<audio_files.chans;c++){
        audio_files.map[c] = audio_files.map[c] || audio_files.map[c%selection]
      }
    }
    return audio_files.chans;
  }
}

function set_normalize(n){
  normalize = n;
}

function set_filetype(n){
  filetype = n;
  if (filetype == "WAVE") extension = ".wav";
  else if (filetype == "AIFF") extension = ".aiff"
}

function set_labels(){
  audio_files.labels = arguments ? arrayfromargs(arguments) : [];
}

function set_chans(c){
  audio_files.chans = c;
}

function set_map(){
  audio_files.map = arguments.length ? arrayfromargs(arguments).map(function (x){ return x-1 }) : [-1];
}
