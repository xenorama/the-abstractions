/*
create a unique, incremented filename based on files present in a folder
*/

autowatch = 1;

var project = jsarguments[1] || "rza"
var filename = (jsarguments[2]) ? project+"."+jsarguments[2] : project+".folder"
var ext = jsarguments[3] || "_"
var type = jsarguments[4] || "png"
var padding = 2
var regex = "^("+filename+ext+")(\\d{"+padding+"})."+type+"$"
var check = new RegExp(regex)

function unique_name(dir){
  var f = new Folder(dir)
  var index = 0;
  while (!f.end) {
   if (check.test(f.filename)) {
     index = Number(f.filename.replace(check,"$2"))
   }
   f.next();
 }
 index++
 outlet(0,filename+ext+frameNumPad(index)+"."+type)
}

frameNumPad.local = 1;
function frameNumPad(i){
  var n = i.toString();
  var pad = padding-n.length;
  var padded = "0";
  if (pad == 0) padded = "";
  else for(m=0;m<(pad-1);m++) padded += "0"
  return padded+n;
}
