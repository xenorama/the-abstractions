// (dict === null || dict === undefined) dict = new Dict()

// ----------------------- MAPPINGS -----------------------

Input.local = 1;
function Input(enabled,maps){
  this.enabled = enabled || 1;
  this.maps = maps || [];
  this.gain = 1;
  // this.maps_enabled = new Array(num_ins).map(function (x) { return 1 } );
}

Output.local = 1;
function Output(enabled,maps){
  this.enabled = enabled || 1;
  this.maps = maps || [];
  this.gain = 1;
  // this.maps_enabled = new Array(num_outs).map(function (x) { return 1 } );
}

Mixer.local = 1;
function Mixer(enabled,gain,pos){
  this.enabled = enabled || 1;
  // this.maps = maps || [];
  this.gain = gain || 1;
  this.pos = pos || [];
}

function init_mappings(ins,outs){
  var max_maps = Math.min(ins,outs)
  num_ins = ins
  dict.replace("num_ins",ins)
  for (var i = 0;i < ins; i++){
    new_port(0,i,outs)
    }

  dict.replace("num_outs",outs)
  num_outs = outs
  for (var o = 0;o < outs; o++){
    new_port(1,o,ins)
    }
  output()
}
init_mappings.local = 1;

function new_port(type,index,max){
  if (type == 0){
    if (!inputs[index]) {
      inputs[index] = new Input(1)
      for (var o = 0; o < max; o++){
        inputs[index].maps[o] = index == o;
        }
      var inputs_new = new Dict()
      inputs_new.parse(JSON.stringify(inputs[index]))
      dict.replace("inputs::"+index,inputs_new)
    }
  }
  else {
    if (!outputs[index]) {
      outputs[index] = new Output(1)
      for (var i = 0; i < max; i++){
        outputs[index].maps[i] = index == i;
        }
      var outputs_new = new Dict()
      outputs_new.parse(JSON.stringify(outputs[index]))
      dict.replace("outputs::"+index,outputs_new)
    }
  }

}
new_port.local = 1;

function update_mappings(ins,outs){

  if (ins !== num_ins && outs !== num_outs) {

    if (ins > num_ins){
      for (var i = num_ins; i < ins; i++){
        new_port(0,i,outs)
      }
    }
    else if (ins < num_ins) {
      for (var i = ins; i < inputs.length; i++) {
        if (dict.contains("inputs::"+i)) dict.remove("inputs::"+i);
        }
      }
    num_ins = ins;
    if (outs > num_outs){
      for (var o = num_outs; o < outs; o++){
        new_port(1,o,ins)
      }
    }
    else if (outs < num_outs) {
      for (var o = outs; o < outputs.length; o++) {
        if (dict.contains("outputs::"+o)) dict.remove("outputs::"+o);
        }
      }
    num_outs = outs;
  }
  else {
    num_ins = inputs.length
    num_outs = outputs.length
  }
}
update_mappings.local = 1;

// ----------------------- OUTPUT -----------------------

function output(){
        for (var i = 0; i < num_ins; i++){
          for (var m = 0; m < num_outs; m++){
            if (inputs[i] !== undefined && !inputs[i].maps[m]) {
              inputs[i].maps[m] = 0;
              dict.replace("inputs::"+i+"::maps",inputs[i].maps.slice(0,num_outs))
            }
            if (inputs[i] !== undefined) {
              if (mix == 0) {
                outlet(0,i,m,inputs[i].maps[m]*inputs[i].enabled*inputs[i].gain*outputs[m].gain*outputs[m].enabled)
                outlet(1,i,m,inputs[i].maps[m]*inputs[i].enabled*inputs[i].gain*outputs[m].gain*outputs[m].enabled)
              }
              else if (mix == 1) {
                outlet(0,i,m,inputs[i].gain*inputs[i].enabled/num_ins*outputs[m].gain*outputs[m].enabled)
                outlet(1,i,m,inputs[i].gain*inputs[i].enabled/num_ins*outputs[m].gain*outputs[m].enabled)
              }
              else if (mix > 1) {
                outlet(0,i,m,(i%mix==m%mix)*inputs[i].gain*inputs[i].enabled/num_ins*outputs[m].gain*outputs[m].enabled)
                outlet(1,i,m,(i%mix==m%mix)*inputs[i].gain*inputs[i].enabled/num_ins*outputs[m].gain*outputs[m].enabled)
              }
            }
          }
        }
  dict.replace("mix",mix)
  outlet(2,"dictionary",dict.name)
  positions.new = 1;
  notifyclients()
  mgraphics.redraw();
}
output.local = 1;
