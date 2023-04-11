// MASTER
// livid.device.gui.js

/* ————————— DESCRIPTIONS/INFO ————————— */

get_desc.local = 1;
function get_desc(hover){
  var type = hover[0]
  var index = hover[1]
  with(mgraphics){
    identity_matrix()
    set_source_rgba(textcolor)
    select_font_face("Lato")
    move_to(5,rect[1]+15)
    if (type == 0){
      if (device.btns[index].in_use) show_text("# "+device.btns[index].map+": "+device.btns[index].description)
      else show_text("[# "+device.btns[index].map+"]")
    }
    else if (type == 1){
      if (device.ctls[index].in_use) show_text("cc "+device.ctls[index].map+": "+device.ctls[index].description)
      else show_text("[cc "+device.ctls[index].map+"]")
    }
    fill();
  }
}


to_clients.local = 1;
function to_clients(type,index){
  if (type == 0) messnamed(device.client_exec_port,device.btns[index].map,64)
}

grab.local = 1;
function grab() { messnamed(device.grab_port,"bang") }

update.local = 1;
function update() { messnamed(device.update_port, "bang") }

/* —————————————————— MAX METHODS —————————————————— */

/* ————————— AUTO UPDATE GUI ————————— */

function msg_int(type,number,in_use,on,r,g,b){
  click = 0;
  if (type == 0){
    var index = device.btn_map.indexOf(number);
    device.btns[index].in_use = in_use;
    device.btns[index].on = on;
    device.btns[index].current_color = [r,g,b,alpha]
  }
  else if (type == 1){
    var index = device.ctl_map.indexOf(number);
    device.ctls[index].in_use = in_use;
  }
  mgraphics.redraw()
}

function description(type,number,desc){
  click = 0;
  if (type == 0) {
    var index = device.btn_map.indexOf(number);
    device.btns[index].description = desc;
  }
  else if (type == 1) {
    var index = device.ctl_map.indexOf(number);
    device.ctls[index].description = desc;
  }
  mgraphics.redraw()
  outlet(0,"clear")
  outlet(0,"append","(BUTTONS:)")
  for (b=0;b<device.btn_map.length;b++){
    var info = device.btns[b].description;
    if (device.btns[b].in_use) outlet(0,"append",device.btns[b].map+": "+device.btns[b].description)
    else outlet(0,"append","(["+device.btns[b].map+"])")
  }
}


clear.local = 1;
function clear() { /*btn_selection = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]; */ mgraphics.redraw() }
