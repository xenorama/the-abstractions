// ----------------------- MAX MESSAGES -----------------------

function bang(){
  output()
}

function remap(i,o,gain) {
  if (i < inputs.length && o < outputs.length){
    inputs[i].maps[o] = Math.max(0,Math.min(1,gain));

    if (dict.contains("inputs::"+i)) { dict.replace("inputs::"+i+"::maps",inputs[i].maps) }
    output();
  }
}

function chans(i,o){
  if (i) {
    var i = Math.max(2,i);
    if (o) setup_from_args(i,o,0);
    else setup_from_args(i,i,0);
    output();
  }
}

function purge(){
  if (num_ins < inputs.length || num_outs < outputs.length){
    inputs = inputs.slice(0,num_ins)
    outputs = outputs.slice(0,num_outs)
    for (var i = 0; i < num_ins; i++){
      inputs[i].maps = inputs[i].maps.slice(0,num_outs);
      dict.replace("inputs::"+i+"::maps",inputs[i].maps)
    }
    for (var o = 0; o < num_outs; o++){
      outputs[o].maps = outputs[o].maps.slice(0,num_ins);
      dict.replace("outputs::"+o+"::maps",outputs[o].maps)
      }
    update_mappings(num_ins,num_outs)
    output();
  }
}

function clear(){
  for(var i = 0; i<num_ins; i++){

    inputs[i].maps = inputs[i].maps.map(function (x) { return 0 })
    dict.replace("inputs::"+i+"::maps",inputs[i].maps)
  }
  for(var i = 0; i<num_outs; i++){
    outputs[i].maps = outputs[i].maps.map(function (x) { return 0 })
    dict.replace("outputs::"+i+"::maps",outputs[i].maps)
  }
  output()
  refresh();
}

function init(){
  for(var i = 0; i<num_ins; i++){

    inputs[i].maps = inputs[i].maps.map(function (x,o) { if (i < num_outs) return i == o })
    inputs[i].enabled = 1;
    inputs[i].gain = 1
    dict.replace("inputs::"+i+"::maps",inputs[i].maps)
    dict.replace("inputs::"+i+"::enabled",1)
    dict.replace("inputs::"+i+"::gain",1)
  }
  for(var i = 0; i<num_outs; i++){
    outputs[i].maps = outputs[i].maps.map(function (x,o) { if (i < num_ins) return i == o })
    outputs[i].enabled = 1;
    outputs[i].gain = 1
    dict.replace("outputs::"+i+"::maps",outputs[i].maps)
    dict.replace("outputs::"+i+"::enabled",1)
    dict.replace("outputs::"+i+"::gain",1)
  }
  output()
  refresh();
}

function randomize(t,n,x,e){
  var rnd = [t || 0.5,(x ? n : n || 0.1), x || 1, ((e !== undefined) ? e : 0.5) ]
  for(var i = 0; i<num_ins; i++){
    inputs[i].enabled = (e !== 0) ? Math.random()>rnd[3] : 1
    inputs[i].gain = (inputs[i].enabled && !maximize_gains_on_random) ? Math.random() : 1;
    inputs[i].maps = inputs[i].maps.map(function (x,o) { if (o < num_outs) {
      if (inputs[i].enabled) {
        if (autogain) return prob(rnd) / num_outs; else return prob(rnd)
      }
    else return 0 }
  })

    dict.replace("inputs::"+i+"::maps",inputs[i].maps)
    dict.replace("inputs::"+i+"::enabled",inputs[i].enabled)
    dict.replace("inputs::"+i+"::gain",inputs[i].gain)
  }
  for(var i = 0; i<num_outs; i++){
    outputs[i].maps = outputs[i].maps.map(function (x,o) { if (o < num_ins) return inputs[o].maps[o] })
    if (outputs_always_active) {
      outputs[i].enabled = 1
      outputs[i].gain = (!maximize_gains_on_random) ? Math.random() : 1
    }
    else {
      outputs[i].enabled = (e !== 0) ? Math.random()>rnd[3] : 1
      outputs[i].gain = (outputs[i].enabled && !maximize_gains_on_random) ? Math.random() : 1;
    }
    dict.replace("outputs::"+i+"::maps",outputs[i].maps)
    dict.replace("outputs::"+i+"::enabled",outputs[i].enabled)
    dict.replace("outputs::"+i+"::gain",outputs[i].gain)
  }
  output()
  refresh();
}

prob.local = 1;
function prob([thresh,min,max]){
  return (Math.random()>thresh) ? Math.random()*(max-min)+min : 0
}

// ----------------------- JITTER MATRIX -----------------------

function jit_matrix(j){
  mtx = new JitterMatrix();
  mtx.name = j
  if (jit_matrix_adapt) {
    setup_from_args(mtx.dim[0],mtx.dim[1],0)
    populate_from_matrix(mtx,num_ins,num_outs)
  }
  else {
    var w = Math.min(num_ins,mtx.dim[0])
    var h = Math.min(num_outs,mtx.dim[1])
    populate_from_matrix(mtx,w,h)
  }
}

populate_from_matrix.local = 1;
function populate_from_matrix(mat,ins,outs){
  for (var i = 0; i < ins; i++){
    inputs[i].enabled = 1;
    for (var o = 0; o < outs; o++){
      var val = mat.getcell(i,o)[0]
      if (autogain) val /= outs;
      inputs[i].maps[o] = val;
      outputs[o].maps[i] = val;
      if (maximize_gains_on_jit_matrix) {
        inputs[i].gain = 1
        outputs[o].gain = 1
      }
      dict.replace("outputs::"+o+"::gain",outputs[o].gain)
      dict.replace("outputs::"+o+"::maps",outputs[o].maps)
    }
    dict.replace("inputs::"+i+"::gain",inputs[i].gain)
    dict.replace("inputs::"+i+"::maps",inputs[i].maps)
  }
  dict.replace("num_ins",ins)
  dict.replace("num_outs",outs)

  output();
  refresh();
}

function interleave(ci,co){
  if (co !== undefined && ci !== undefined) chans(ci,co)
  else if (co == undefined) chans (num_ins,ci)
  {
    for (var i = 0; i < num_ins; i++){
      for (var o = 0; o < num_outs; o++){
        var route = i % num_outs
        inputs[i].maps[o] = (autogain) ? (o==route)*2/num_ins : o==route
        outputs[o].maps[i] = inputs[i].maps[o]
      }
    }
  }
  // else interleave()
  output()
  refresh()
}


function store(p){
  var preset = new Dict()
  preset.replace("num_ins",dict.get("num_ins"))
  preset.replace("num_outs",dict.get("num_outs"))
  preset.replace("mix",dict.get("mix"))
  preset.replace("inputs",dict.get("inputs"))
  preset.replace("outputs",dict.get("outputs"))
  dict.replace("presets::"+p,preset)
  output();
}

function recall(p){
  if (dict.contains("presets::"+p)) {
    var preset = new Dict()
    preset = dict.get("presets::"+p)
    dictionary(preset.name,1)
  }
}

function setinputgain(i,g){
  if (g === undefined) {
    var gain = i
    for (var j=0;j<num_ins;j++){
      if (inputs[j].enabled) inputs[j].gain = Math.min(1,Math.max(gain,0))
      dict.replace("inputs::"+j+"::gain",inputs[j].gain)

    }
  }
  else inputs[i].gain = Math.min(1,Math.max(g,0));
  output()
  refresh()
}

function setoutputgain(i,g){
  if (g === undefined) {
    var gain = i
    for (var j=0;j<num_outs;j++){
      if (outputs[j].enabled) outputs[j].gain = Math.min(1,Math.max(gain,0))
      dict.replace("outputs::"+j+"::gain",outputs[j].gain)

    }
  }
  else outputs[i].gain = Math.min(1,Math.max(g,0));
  output()
  refresh()
}

// function scaleinputgain(i,g){
//   if (g === undefined) {
//     var gain = i
//     var inputs_copied = inputs
//     for (var j=0;j<num_ins;j++){
//       if (inputs[j].enabled) inputs[j].gain = clamp(zmap(gain,0,1,inputs_copied[j].gain,1,0),0,1)

//     }
//   }
//   else inputs[i].gain = Math.min(1,Math.max(g,0));
//   output()
//   refresh()
// }

// function setvalue(){
//   if (arguments) {
//     var arr = arrayfromargs(arguments)
//     var obj, val, index, target
//     switch(arr.length){
//       case 2:
//
//     }
//
//   }
//
// }

// function gain(g){
//   post(inputs.length,inputs instanceof Array,'\n')
//   inputs.forEach(function (x,i) {
//     x.gain = g;
//     dict.replace("inputs::"+i+"::gain",g)
//   } )
//   outputs.forEach(function (x,i) {
//     x.gain = g;
//     dict.replace("outputs::"+i+"::gain",g)
//   } )
//   output()
//   refresh()
// }
