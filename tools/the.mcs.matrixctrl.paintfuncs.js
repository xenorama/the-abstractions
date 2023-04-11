// ----------------------- PAINT FUNCTIONS -----------------------

compare.local = 1;
function compare(l,r){
  return l.map(function (x,i) { return x == r[i] }).reduce(redux)
}

redux.local = 1;
function redux(mult,num){
  return mult * num;
}

dist.local = 1;
function dist(mpos,tpos,thresh){
  return mpos.map(function (x,i) { return Math.abs(x-tpos[i]) }).reduce(add) <= thresh
}

add.local = 1;
function add(total,num){
  return total + num;
}

draw_socket.local = 1;
function draw_socket(pos,radius,enabled,gain){
  // post(pos,'\n')
  with (mgraphics) {
    move_to(pos)
    if (gain === undefined) {
      arc(pos,radius,0,TWOPI)
      fill()
    }
    else if (gain) {
      move_to(pos)
      arc(pos,radius,0,TWOPI)
      set_source_rgba(bgcolor)
      fill_preserve();
      if (enabled) set_source_rgba(active_color); else set_source_rgba(inactive_color)
      set_line_width(0.1*radius)
      stroke_with_alpha(0.5)
      move_to(pos)
      arc(pos,radius,HALFPI,HALFPI+(TWOPI*gain))
      line_to(pos)
      if (enabled) set_source_rgba(active_color); else set_source_rgba(inactive_color)
      fill_with_alpha(1)
    }
    else {
      move_to(pos)
      line_to(pos[0],pos[1]+radius)
      set_line_width(0.1*radius)
      stroke();
    }
    arc(pos,radius*1.5,0,TWOPI)
    set_line_width(0.1*radius)
    var selected = in_fill(perf.pos)
    stroke()
    return selected
  }
}

check_pin.local = 1;
function check_pin(pos,radius){
  with (mgraphics) {
    move_to(pos)
    arc(pos,radius*1.5,0,TWOPI)
    set_source_rgba(0,0,0,0)
    return in_fill(perf.pos)
  }
}

clampmouse.local = 1;
function clampmouse(coords){
  return coords.map(function (x,i) { return Math.max(0,(Math.min(rect[i],x))) })
}

segments.local = 1;
function segments(i,o,t,r,f,ins){ // o = origin; t = target
  if (ins === undefined) var ins = num_ins
  if (num_ins > num_outs) var i = ins-i-1
  mgraphics.move_to(o)
  if (f == 0) {
    mgraphics.rel_line_to(0,((t[1]-o[1])*0.8*(i+1)/(ins+1)+((t[1]-o[1])*0.1)))
    mgraphics.rel_line_to(t[0]-o[0],0)
  }
  else {
    mgraphics.rel_line_to(0,(t[1]-o[1])/2)
    mgraphics.rel_line_to(t[0]-o[0],0)
  }
  mgraphics.line_to(t)
  mgraphics.path_roundcorners(r/2)
}

beziers.local = 1;
function beziers(o,t){ // o = origin; t = target
  var p1 = [0,(t[1]-o[1])/2]
  var p2 = [(t[0]-o[0]),(t[1]-o[1])/2]
  var p3 = [(t[0]-o[0]),(t[1]-o[1])]
  return [p1[0],p1[1],p2[0],p2[1],p3[0],p3[1]];
}

deactivate.local = 1;
function deactivate(c){
  return c.map(function (x,i) { if (i != 3) return x * 0.67 + 0.33; else return 1 })
}

zmap.local = 1;
function zmap(val,inmin,inmax,outmin,outmax,clip){
  if (inmin == inmax) return val;
  else if (inmin > inmax) zmap(x,inmax,inmin,outmin,outmax,clip)
  else {
    if (val instanceof Array) return val.map(function (x) {
      if (clip) zmap(clamp(x,inmin,inmax),inmin,inmax,outmin,outmax,clip);
      else zmap(x,inmin,inmax,outmin,outmax,clip)
    })
    else {
      if (clip) val = clamp(val,inmin,inmax)
      return ( (val-inmin)/Math.abs(inmax-inmin) ) * Math.abs(outmax-outmin) + Math.min(outmax,outmin)
    }
  }
}

clamp.local = 1;
function clamp(val,min,max){
  if (min > max) clamp(val,max,min)
  else return Math.max(min,Math.min(max,val))
}
