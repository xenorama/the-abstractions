// MASTER
// livid.device.gui.js

/* ————————— COMPONENTS ————————— */

Button.local = 1;
function Button(map,in_use,description,active,mode,local,modifier,banks){
  this.map = map;
  this.in_use = in_use;
  this.on = 0;
  this.description = description;
  this.active = active;
  this.mode = mode;
  this.local = local;
  this.modifier = modifier;
  this.banks = banks;
  this.off_color = [0.,0.,0.,0.6]; // transparent
  this.cue_color = [1.,1.,0.,0.9]; // yellow
  this.on_color = [0.,1.,0.,0.9]; // green
}

Ctl.local = 1;
function Ctl(map,in_use,description,active,modifier,banks){
  this.map = map;
  this.in_use = in_use;
  this.description = description;
  this.active = active;
  this.modifier = modifier;
  this.banks = banks;
}
