// CLEAN-UP LAYOUTS DICTIONARY according to known issues during coding

var objc = new Dict("the.object_colors_temp")
var aliases = new Dict("the.object.aliases")
objc.readany("the.rgb.layouts.json");
aliases.readany("the.object.aliases.json");

function rebuild(){
  var presets = objc.getkeys()
  presets.forEach(function (p) {
    var p_objs = objc.get(p).getkeys();
    if (p_objs instanceof Array)
      p_objs.forEach(function (obj,i) {
        if (!isNaN(obj) || obj == "prepend" || obj == "append") objc.remove(p+"::"+obj)
        else if (obj !== "patcher_style"){
          var po_vals = objc.get(p+"::"+obj).getkeys();
          if (po_vals instanceof Array)
            po_vals.forEach(function (attr) {
              if (attr == "color" && po_vals.indexOf("bordercolor") !== -1) objc.remove(p+"::"+obj+"::color")
              else if (attr == "color") objc.replace(p+"::"+obj+"::bordercolor",objc.get(p+"::"+obj+"::color"))
              var poa_vals = objc.get(p+"::"+obj+"::"+attr)
              var c = poa_vals;
              if (poa_vals instanceof Array) {
                if (c.length > 5) {
                  var d = [obj]
                  var e = c.length
                  d.push(c[e-4],c[e-3],c[e-2],c[e-1])
                }
                if (isNaN(c[1])) c.splice(1,1);
                if (c.length == 4) {
                  c.push(1);
                }
                objc.replace(p+"::"+obj+"::"+attr,obj,c[1],c[2],c[3],c[4]);
              }
            });
        }
      });
  });
  objc.writeagain();
}

function prioritize(arr,element) {
    var orig_pos = arr.indexOf(element);
    arr.splice(arr.indexOf(element),1);
    arr.splice(0,0,element);
}

function merge(a,b){
  var presets = objc.getkeys()
  var allow_merge = 0;
  if (a && b) {
    if (presets.indexOf(a) !== -1 && presets.indexOf(b) !== -1) { presets = [a,b]; allow_merge = 1 }
    else post("please provide two valid preset names to merge\n")
  }
  else if (a){
    if (presets.indexOf(a) !== -1) { prioritize(presets,a); allow_merge = 1 }
    else post("please provide a valid preset to merge from")
  }
  else allow_merge = 1;

  if (allow_merge)
  {
    var merge_dict = new Dict("all.objs");
    merge_dict.clear();
    presets.forEach(function (p) {
      var p_objs = objc.get(p).getkeys();
      if (p_objs instanceof Array)
        p_objs.forEach(function (obj,i) {
          if (obj !== "patcher_style" && !merge_dict.contains(obj)) merge_dict.replace(obj,objc.get(p+"::"+obj))
        });
    });
    merge_dict.getkeys().forEach(function (o) {
      presets.forEach(function (prst) {
        if (!objc.contains(prst+"::"+o)) objc.replace(prst+"::"+o,merge_dict.get(o))
      })
    })
    outlet(0,"objcionary",objc.name)
    objc.writeagain();
    merge_dict.freepeer();
  }
}

// bang()
