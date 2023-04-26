mgraphics.init()
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var size
var mouse = {
  pos: [-1,-1]
}

function onidle(x,y){
  mouse.pos = [x,y]
  refresh()
}

function onidleout(){
  mouse.pos = [-1,-1]
  refresh()
}

function paint(){
  size = mgraphics.size
  with (mgraphics) {
    translate(size[0]/2,0)
    rectangle(0,0,size[0],size[1])
    post(mouse.pos,device_to_user(mouse.pos),'\n')
    if (in_fill(translated_pos(mouse.pos)) set_source_rgba(1,0,0,1)
    else set_source_rgba(0,0,1,1)
    fill()
  }
}

function translated_pos(pos){
  return pos.map(function(x,i){return x+mgraphics.device_to_user(pos)[i]}))
}
