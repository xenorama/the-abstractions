// ----------------------- DICT -----------------------

// use jsargs to inherit dictionary dict or setup default in/out mappings
function setup_from_args(one,two,init){
  if (typeof one === "string") {
    var dict_new = new Dict(one)
    if (dict_new.contains("num_ins")) dictionary(one)
    else {
      dict = dict_new
      setup_from_args();
    }
  }
  else if (typeof one === "number") {           // requires ins/outs to be set AFTER update_mappings()  !!
    num_ins = 0;
    num_outs = 0;
    var arg_two = (!two) ? one : two

    if (init) init_mappings(one,arg_two)
    else {
      update_mappings(one,arg_two);
      matrix_setup(num_ins,num_outs) }
    dict.replace("num_ins",num_ins);
    dict.replace("num_outs",num_outs);
  }
  else if (!one){
    num_ins = 0;
    num_outs = 0;
    update_mappings(2,2)
    matrix_setup(num_ins,num_outs)
    dict.replace("num_ins",num_ins);
    dict.replace("num_outs",num_outs);
    output()
  }
}
setup_from_args.local = 1;

// inherit dictionary from Max and populate mappings
function dictionary(d,p){

  /*
  once dictionary is received, maps occur as jsobjects and not as array
  needs to be converted to JSobject
  */

 var dict_new = new Dict(d)

 if (p) {
   num_ins = dict_new.get("num_ins")
   num_outs = dict_new.get("num_outs")
   inputs = dict_to_jsobj(dict_new.get("inputs"))
   outputs = dict_to_jsobj(dict_new.get("outputs"))
   inputs.length = num_ins // input is a 'weird' object with undefined length, hence set manually
   outputs.length = num_outs // […]
   var presets = new Dict()
   presets = dict.get("presets")
   dict = dict_new
   dict.replace("presets",presets)
  }

  else {

    // var dict_new = new Dict(d)
    if (!dict_new.contains("num_ins")) print("dictionary named '"+d+"' not compatible")
    else {
      dict = dict_new
      num_ins = dict.get("num_ins")
      num_outs = dict.get("num_outs")
      inputs = dict_to_jsobj(dict.get("inputs"))
      outputs = dict_to_jsobj(dict.get("outputs"))
      inputs.length = num_ins // input is a 'weird' object with undefined length, hence set manually
      outputs.length = num_outs // […]

    }
  }
  if (dict.contains("mix")) mix = dict.get("mix")
  update_mappings(num_ins,num_outs)
  matrix_setup(num_ins,num_outs)
  output()
}

// DICTIONARY to JSOBJECT conversion
// returns or includes null if there is a dict without containing data.
function dict_to_jsobj(dict) {
  if (dict == null) return null;
  var o = new Object();
  var keys = dict.getkeys();
  if (keys == null || keys.length == 0) return null;
  if (keys instanceof Array) {
    for (var i = 0; i < keys.length; i++) {
      var value = dict.get(keys[i]);
      if (value instanceof Array) {
        for (var j = 0; j < value.length; j++) {
          if (value[j] instanceof Dict) { // nested dict array detection
            value[j] = dict_to_jsobj(value[j])
          }
        }
      }
      else if (value && value instanceof Dict) {
        value = dict_to_jsobj(value);
      }
      o[keys[i]] = value;
    }
  }
  else {
    var value = dict.get(keys);

    if (value && value instanceof Dict) {
      value = dict_to_jsobj(value);
    }
    o[keys] = value;
  }
  return o;
}
dict_to_jsobj.local = 1;
