// MASTER
// livid.device.gui.js
// REQUIRE
// livid.device.clients.js

/* ————————— MGRAPHICS ————————— */

function draw_controls(id){
  if (id == 4) { // Code

    /* ————————— device.ctls ————————— */

    index = 0;
    index = code_encs(index)

    /* ————————— BUTTONs ————————— */

    index = 0;
    index = code_pebs(index)
    index = code_gbsmall(index)
    index = code_gary(index)

  }

  else if (id == 8) { // CNTRL:R

    /* ————————— device.ctls ————————— */

    index = 0;
    index = cntrlr_dials(index)
    index = cntrlr_faders(index)
    index = cntrlr_encs(index)
    index = cntrlr_xpcs(index)

    /* ————————— BUTTONs ————————— */

    index = 0;
    index = cntrlr_gblarge(index)
    index = cntrlr_gbsmall(index)
    index = cntrlr_pebs(index)
    index = cntrlr_xpcbs(index)

  }

  else if (id == 7) { // OhmRGB

    /* ————————— device.ctls ————————— */

    index = 0;
    index = ohmrgb_ldials(index)
    index = ohmrgb_rdials(index)
    index = ohmrgb_faders(index)
    // index = ohmrgb_xpcs(index)

    /* ————————— BUTTONs ————————— */

    index = 0;
    index = ohmrgb_gbsmall(index)
    index = ohmrgb_modes(index)
    index = ohmrgb_gblarge(index)
    // index = ohmrgb_xpcbs(index)

  }

  if (hover[1] !== -1) get_desc(hover)

}

view.local = 1;
function view(type,index,mouse){

  /* ————————— BUTTONs ————————— */

  if (type == 0) {
    if (mgraphics.in_fill(mouse)) {
      hover = [type,index]
      if (click) to_clients(type,index) // livid.device.clients.js
    }
    if (!device.btns[index].in_use) {
      if (mgraphics.in_fill(mouse)) mgraphics.stroke()
      else mgraphics.stroke_with_alpha(outline_color[3])
    }
    else {
      mgraphics.set_source_rgba(device.btns[index].current_color);
      if (mgraphics.in_fill(mouse)) { mgraphics.fill_preserve(); mgraphics.set_source_rgba(outline_color); mgraphics.stroke() }
      else { mgraphics.fill_preserve_with_alpha(alpha); mgraphics.set_source_rgba(outline_color); mgraphics.stroke_with_alpha(outline_color[3]) }
    }
  }

  /* ————————— device.ctls ————————— */

  else if (type == 1){
    if (mgraphics.in_fill(mouse)) { hover = [type,index] }
    mgraphics.set_source_rgba(outline_color)
    if (!device.ctls[index].in_use) {
      if (mgraphics.in_fill(mouse)) mgraphics.stroke()
      else mgraphics.stroke_with_alpha(outline_color[3])
    }
    else {
      if (mgraphics.in_fill(mouse)) { mgraphics.fill_preserve(); mgraphics.set_source_rgba(outline_color); mgraphics.stroke() }
      else { mgraphics.fill_preserve_with_alpha(alpha); mgraphics.set_source_rgba(outline_color); mgraphics.stroke_with_alpha(outline_color[3]) }
    }
  }

}


/* ————————— ELEMENTS ————————— */

cntrlr_gblarge.local = 1;
function cntrlr_gblarge(index){
  with(mgraphics){

    relocate(0.3655,0.3215)

    for(b=0;b<16;b++){
    var width = device.gb_large * w
    var x = Math.floor(b/4) * width
    var y = (b % 4) * width;
    set_source_rgba(outline_color)
    rectangle_rounded(x,y,width*0.8,width*0.8,w*0.024,w*0.024)

    view(0,index,mouse)

    index++
    }
  }
  return index
}

code_gary.local = 1;
function code_gary(index){
  with(mgraphics){

    relocate(0.089,0.765)

    var width = device.gb_large * w
    var x = 0
    var y = 0
    set_source_rgba(outline_color)
    rectangle_rounded(x,y,width*0.8,width*0.8,w*0.024,w*0.024)

    view(0,index,mouse)

    index++
  }
  return index
}

ohmrgb_modes.local = 1;
function ohmrgb_modes(index){
  with(mgraphics){

    relocate(0.738,0.043)

    for(b=0;b<6;b++){
      var width = device.gb_thin * w
      var height = device.gb_thin_height * w
      var x = (b % 3) * width;
      var y = Math.floor(b/3) * height;
      rectangle_rounded(x,y,width*0.75,height*0.75,w*0.017,w*0.017)
      set_source_rgba(outline_color)
      view(0,index,mouse)
      index++
    }
  }
  return index
}

ohmrgb_gblarge.local = 1;
function ohmrgb_gblarge(index){
  with(mgraphics){

    var wh = relocate(0.018,0.861)
    w = wh[0]
    h = wh[1]
    offset = wh[2]

    for(b=0;b<11;b++){
      var width = device.gb_large * w
      var x = b * width;
      var y = 0;
      if (b > 3) x += w * 0.453
      if (b == 8) {
        x -= w * 0.689
        y -= (w*0.03)
      }
      else if (b == 9) {
        x -= w * 0.423
        y -= (w*0.03)
      }
      else if (b == 10) {
        x = 7 * width;
        x += w * 0.455
        y = h*0.043 - offset[1]
      }
      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
      view(0,index,mouse)

      index++
    }
  }
  return index
}

cntrlr_gbsmall.local = 1;
function cntrlr_gbsmall(index){
  with(mgraphics){
    relocate(0.043,0.715)

    for(b=0;b<32;b++){
      var width = device.gb_small * w
      var x = (b % 16) * width;
      var y = Math.floor(b/16) * width
      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.78,width*0.78,w*0.03,w*0.03)

      view(0,index,mouse);
      index++
    }
  }
  return index
}

ohmrgb_gbsmall.local = 1;
function ohmrgb_gbsmall(index){
  with(mgraphics){
    relocate(0.294,0.043)

    for(b=0;b<64;b++){
      var width = device.gb_small * w
      var x = Math.floor(b/8) * width
      var y = (b % 8) * width;
      rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
      set_source_rgba(outline_color)
      view(0,index,mouse);
      index++
    }
  }
  return index
}

code_gbsmall.local = 1;
function code_gbsmall(index){
  with(mgraphics){
    relocate(0.099,0.154)

    for(b=0;b<4;b++){
      var width = device.gb_small * w
      var x = 0
      // var x = Math.floor(b/8) * width
      var y = (b % 8) * width * 1.41;
      rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
      set_source_rgba(outline_color)
      view(0,index,mouse);
      index++
    }

    relocate(0.196,0.781)

    for(b=0;b<8;b++){
      var width = device.gb_small * w
      var y = 0
      // var x = Math.floor(b/8) * width
      var x = b * width * 1.39;
      rectangle_rounded(x,y,width*0.8,width*0.8,w*0.02,w*0.02)
      set_source_rgba(outline_color)
      view(0,index,mouse);
      index++
    }
  }
  return index
}


cntrlr_pebs.local = 1;
function cntrlr_pebs(index){
  with(mgraphics){
    relocate(0.3823,0.075)

    for(b=0;b<12;b++){
      var width = device.gb_small * w
      var y = (b % 3) * width * 1.18;
      var x = Math.floor(b/3) * width * 1.22
      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.4,width*0.4,w*0.5,w*0.5)

      view(0,index,mouse);
      index++
    }
  }
  return index
}

code_pebs.local = 1;
function code_pebs(index){
  with(mgraphics){
    relocate(0.208,0.198)

    for(b=0;b<32;b++){
      var width = device.gb_small * w
      var y = (b % 4) * width * 1.41;
      var x = Math.floor(b/4) * width * 1.39
      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.4,width*0.4,w*0.5,w*0.5)

      view(0,index,mouse);
      index++
    }
  }
  return index
}

cntrlr_faders.local = 1;
function cntrlr_faders(index){
  with (mgraphics){
    relocate(0.032,0.368)

    var width = device.gb_large * w * 0.95
    var height = device.gb_thin_height * w

    for(b=0;b<8;b++){
      var x = b * width;
      if (b > 3) x += w * 0.412;
      var y = height*4.87;
      set_source_rgba(outline_color)
      rectangle(x,0,width*0.8,y)

      view(1,index,mouse)
      index++
    }
  }
  return index
}

ohmrgb_faders.local = 1;
function ohmrgb_faders(index){
  with (mgraphics){
    relocate(0.018,0.462)

    var width = device.gb_large * w
    var height = device.gb_thin_height * w

    for(b=0;b<9;b++){

      if (b < 8) {
        var x = b * width;
        if (b > 3) x += w * 0.453;
        var y = height*4.27;
        rectangle(x,0,width*0.8,y)
      }
      else {
        rectangle(w*0.392,w*0.196,height*4.27,width*0.8)
      }

      view(1,index,mouse)

      index++
    }
  }
  return index
}

cntrlr_encs.local = 1;
function cntrlr_encs(index){
  with(mgraphics){
    relocate(0.368,0.04)

    for(b=0;b<12;b++){
      var width = device.gb_small * w
      var x = (b % 4) * width * 1.22;
      var y = Math.floor(b/4) * width * 1.18

      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.9,width*0.9,w*0.5,w*0.5)

      view(1,index,mouse);
      index++
    }
  }
  return index
}

code_encs.local = 1;
function code_encs(index){
  with(mgraphics){
    relocate(0.191,0.15)

    for(b=0;b<32;b++){
      var width = device.gb_small * w
      var x = Math.floor(b/4) * width * 1.39
      var y = (b % 4) * width * 1.41;

      set_source_rgba(outline_color)
      rectangle_rounded(x,y,width*0.9,width*0.9,w*0.5,w*0.5)

      view(1,index,mouse);
      index++
    }
  }
  return index
}

cntrlr_dials.local = 1;
function cntrlr_dials(index){
  with(mgraphics){
    relocate(0.0354,0.058)

    var width = device.gb_large * w * 0.93
    var height = device.gb_thin_height * w

    for(b=0;b<24;b++){
      var radius = device.gb_large * w / 2.2
      var x = (Math.floor(b / 3)) * (width*1.01) + (width/2.6);
      var y = (b % 3) * (width*1.03) + (width/3);
      if (b > 11) x += w * 0.413;

      arc(x, y, radius, 0, 6.28);

      view(1,index,mouse)
      index++
    }
  }
  return index
}

ohmrgb_ldials.local = 1;
function ohmrgb_ldials(index){
  with(mgraphics){
    relocate(0.0185,0.045)

    var width = device.gb_large * w
    var height = device.gb_thin_height * w

    for(b=0;b<12;b++){
      var radius = device.gb_large * w / 2.2
      var x = (Math.floor(b / 3)) * (width*1.01) + (width/2.6);
      var y = (b % 3) * (width*1.03) + (width/3);

      arc(x, y, radius, 0, 6.28);
      view(1,index,mouse)

      index++
    }
  }
  return index
}

ohmrgb_rdials.local = 1;
function ohmrgb_rdials(index){
  with(mgraphics){
    relocate(0.736,0.25)

    var width = device.gb_large * w
    var height = device.gb_thin_height * w

    for(b=0;b<4;b++){
      var radius = device.gb_large * w / 2.2
      var x = b * (width*1.01) + (width/2.6);
      var y = height

      arc(x, y, radius, 0, 6.28);
      view(1,index,mouse)

      index++
    }
  }
  return index
}

cntrlr_xpcs.local = 1;
function cntrlr_xpcs(index){
  with(mgraphics){
    relocate(0.024,0.912)

    var width = device.gb_large * w * 0.91
    var height = device.gb_thin_height * w

    for(b=0;b<2;b++){
      var radius = device.gb_large * w / 2.3
      var y = (Math.floor(b / 3)) * (width*1.01) + (width/2.6);
      var x = (b % 3) * (width*1.03) + (width/3);

      arc(x, y, radius, 0, 6.28);

      view(1,index,mouse)
      index++
    }
  }
  return index
}

cntrlr_xpcbs.local = 1;
function cntrlr_xpcbs(index){
  with(mgraphics){
    relocate(0.16,0.91)

    for(b=0;b<8;b++){
      var width = device.gb_small * w
      var x = (b % 4) * width * 0.48;
      var y = Math.floor(b/4) * width * 0.48

      set_source_rgba(outline_color)
      rectangle(x,y,width*0.4,width*0.4)

      view(0,index,mouse);
      index++
    }
  }
  return index
}

ohmrgb_xpcbs.local = 1;
function ohmrgb_xpcbs(index){
  with(mgraphics){
    relocate(0.16,0.997)

    for(b=0;b<8;b++){
      var width = device.gb_small * w
      var x = (b % 4) * width * 0.48;
      var y = Math.floor(b/4) * width * 0.48

      set_source_rgba(outline_color)
      rectangle(x,y,width*0.4,width*0.4)

      view(0,index,mouse);
      index++
    }
  }
  return index
}


/* ————————— INIT DRAWING AREA ————————— */

relocate.local = 1;
function relocate(x,y){
  var offset = [w*x,h*y]
  mgraphics.identity_matrix();
  mgraphics.translate(offset)
  mouse = coords.map(function (c,i) { return c-offset[i] } )
  return [w,h,offset]
}
