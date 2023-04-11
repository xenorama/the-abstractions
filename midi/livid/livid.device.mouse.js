
/* ————————— MOUSE INTERACTION ————————— */

onidle.local = 1;
function onidle(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 0;
  coords = [x,y]
  refresh();
}

onidleout.local = 1;
function onidleout(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 0;
  hover = [0,-1];
  refresh();
}

onclick.local = 1;
function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
  click = 1;
  coords = [x,y]
  refresh();
}
