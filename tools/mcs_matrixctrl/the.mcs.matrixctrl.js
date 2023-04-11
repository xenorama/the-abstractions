// ----------------------- INIT -----------------------

outlets = 3;


// ----------------------- MCS.MATRIXCTRL -----------------------

var min_chans = 2;
var num_ins = min_chans;
var num_outs = min_chans;
var inputs = []
var outputs = []
var mixers = []
var mix = 0;
declareattribute("mix","get_mix","set_mix",1);
function set_mix(mx) {
  mix = Math.floor(Math.max(0,Math.min(mx,5)));
  // if (mixers[0] === undefined) mixers[0] = new Mixer()
  if (mix != 0) {
    for (var mxrs=0;mxrs<mix;mxrs++){
      mixers[mxrs] = new Mixer()
    }
  }
  icons[9].enabled = mix == 0;
  icons[10].enabled = mix == 0;
  output();
  refresh();
}; set_mix.local = 1;
function get_mix() { return mix };

var outputs_always_active = 1;
declareattribute("outputs_always_active","get_outputs_always_active","set_outputs_always_active",1);
function set_outputs_always_active(oaa) { outputs_always_active = oaa !== 0; refresh(); }; set_outputs_always_active.local = 1;
function get_outputs_always_active() { return outputs_always_active };

var normalize = 1;
var ramptime;

var maxobjoutlets = this.box.patchcords.outputs
var maxobjdsts = []
var mcsmatrix = {
  obj: undefined,
  ins: 2,
  outs: 2
}
var matrixctrl = undefined;
var create_mcsmatrix = 0

var autogain = 1;
declareattribute("autogain","get_autogain","set_autogain",1);
function set_autogain(a) { autogain = a; mgraphics.redraw() }; set_autogain.local = 1;
function get_autogain() { return autogain };

// ----------------------- JITTER -----------------------

var mtx;

var jit_matrix_adapt = 1;
declareattribute("jit_matrix_adapt","get_jit_matrix_adapt","set_jit_matrix_adapt",1);
function set_jit_matrix_adapt(ma) { jit_matrix_adapt = ma; if (mtx !== null && mtx !== undefined) jit_matrix(mtx.name)}; set_jit_matrix_adapt.local = 1;
function get_jit_matrix_adapt() { return jit_matrix_adapt };

var maximize_gains_on_random = 1;
declareattribute("maximize_gains_on_random","get_maximize_gains_on_random","set_maximize_gains_on_random",1);
function set_maximize_gains_on_random(mgor) { maximize_gains_on_random = mgor !== 0; refresh(); }; set_maximize_gains_on_random.local = 1;
function get_maximize_gains_on_random() { return maximize_gains_on_random };

var maximize_gains_on_jit_matrix = 1;
declareattribute("maximize_gains_on_jit_matrix","get_maximize_gains_on_jit_matrix","set_maximize_gains_on_jit_matrix",1);
function set_maximize_gains_on_jit_matrix(mgojm) { maximize_gains_on_jit_matrix = mgojm !== 0; refresh(); }; set_maximize_gains_on_jit_matrix.local = 1;
function get_maximize_gains_on_jit_matrix() { return maximize_gains_on_jit_matrix };

// ----------------------- MOUSE PARAMS -----------------------

// see below

// ----------------------- PATCHER -----------------------

var patch = this.patcher


var pin_align = 0;
var patchcord_style = 1;
var scale_patchcord_size = 1;
var scale_patchcord_alpha = 1;
var max_patchcord_size = 0.67;

// ----------------------- OTHER ATTRIBUTES -----------------------

declareattribute("align","get_align","set_align",1);
function set_align(a) { pin_align = a; mgraphics.redraw() }; set_align.local = 1; // /*forcesize(/*box_meas()[0],box_meas()[1]*/);
function get_align() { return pin_align };

declareattribute("patchcord_style","get_patchcord_style","set_patchcord_style",1);
function set_patchcord_style(cp) { patchcord_style = cp; refresh(); }; set_patchcord_style.local = 1;
function get_patchcord_style() { return patchcord_style };

declareattribute("scale_patchcord_size","get_scale_patchcord_size","set_scale_patchcord_size",1);
function set_scale_patchcord_size(sps) { scale_patchcord_size = sps !== 0; refresh(); }; set_scale_patchcord_size.local = 1;
function get_scale_patchcord_size() { return scale_patchcord_size };

declareattribute("scale_patchcord_alpha","get_scale_patchcord_alpha","set_scale_patchcord_alpha",1);
function set_scale_patchcord_alpha(spa) { scale_patchcord_alpha = spa !== 0; refresh(); }; set_scale_patchcord_alpha.local = 1;
function get_scale_patchcord_alpha() { return scale_patchcord_alpha };

declareattribute("max_patchcord_size","get_max_patchcord_size","set_max_patchcord_size",1);
function set_max_patchcord_size(mps) { max_patchcord_size = Math.max(0,Math.min(mps,1)); refresh(); }; set_max_patchcord_size.local = 1;
function get_max_patchcord_size() { return max_patchcord_size };

// var patcher_size = this.patcher.box.rect
// post(patcher_size)


// ----------------------- PATTR -----------------------

var dict = new Dict()
function getvalueof() { return dict }
function setvalueof(d) { dictionary(d.name); }

// ----------------------- MGRAPHICS SETUP -----------------------

this.box.message("border",0)
this.box.message("varname","the.mcs.matrixctrl~")
mgraphics.init()
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var rect = [this.box.rect[2]-this.box.rect[0],this.box.rect[3]-this.box.rect[1]]
var map_rect = rect;
var blob_size = 1;

var PI = 3.1425
var TWOPI = PI * 2
var HALFPI = PI / 2

var positions = {
  ins: [],
  outs: [],
  new: 1
}

// // ----------------------- DEPENDENCIES -----------------------
//
//
// include("the.mcs.matrixctrl.maxmsgs.js")
// include("the.mcs.matrixctrl.paintfuncs.js")
// include("the.mcs.matrixctrl.mappings.js")
// include("the.mcs.matrixctrl.dict.js")
// include("the.mcs.matrixctrl.icons.js")
// include("the.mcs.matrixctrl.attributes.js")


// ----------------------- APPEARANCE -----------------------

var active_color = patch.getattr("bgcolor")
var elementcolor = patch.getattr("elementcolor")
var highlight_color = patch.getattr("textcolor_inverse")
var bgcolor = patch.getattr("locked_bgcolor")
var inactive_color = deactivate(active_color)
// var color = active_color;

// ----------------------- JSUI -----------------------

          function paint(){

            if (!compare(mgraphics.size,rect)) positions.new = 1;
            rect = mgraphics.size
                                    // map_rect = rect.map(function (x,i) { if (i==0) return x-(x/7); else return x } );
            map_rect = rect.map(function (x,i) { if (i==0) return x-90; else return x-(x/6) } );
            // map_rect = rect.map(function (x,i) { if (i==0) return x-90; else return x } );
                                    // map_rect = rect.map(function (x,i) { if (i==0) return x-(x/6); else return x } );

            var w = map_rect[0]
            var h = map_rect[1]

            // var center = [w/2,h/2]
            var min_dist = Math.min(w/(num_ins+1),w/(num_outs+1));
            var wr = w-(min_dist*2)
            // var wr = w-((map_rect[0]/6))

            var xid = (pin_align == 2 && num_ins < num_outs) ?
              wr/(num_outs-1) :
              (
                (pin_align == 1 && num_ins < num_outs) ?
                wr/(num_outs-1) :
                wr/(num_ins-1)
              )
            var xod = (pin_align == 2 && num_outs < num_ins) ?
              wr/(num_ins-1) :
              (
                (pin_align == 1 && num_outs < num_ins) ?
                wr/(num_ins-1) :
                wr/(num_outs-1)
              )

            var xio = (pin_align == 0) ?
              min_dist :
              ((pin_align == 2) ?
                min_dist :
                ((pin_align == 1 && num_ins < num_outs) ?
                  xod * (num_outs-num_ins) / 2 + wr/(num_outs-1) :
                  wr/(num_ins-1)
                )
              );
            var xoo = (pin_align == 0) ?
              min_dist :
              ((pin_align == 2) ?
                min_dist :
                ((pin_align == 1 && num_outs < num_ins) ?
                  // xid * (num_ins-num_outs) / 2 + wr/(num_ins-1) :
                  xid * (num_ins-num_outs) / 2 + wr/(num_ins-1) :
                  wr/(num_outs-1)
                )
              );

            var yio = h/5
            var yoo = h-(h/5)
            var radius = blob_size * (Math.min(w,h)/20)
            radius = Math.min(radius,Math.min(xid,xod)/4);
            var dist_thresh = radius*3;



            with(mgraphics) {



              // push_group()
              set_source_rgba(elementcolor)
              rectangle_rounded(0,0,map_rect,radius*3,radius*3)
              // var panel_main = pop_group()
              fill_with_alpha(0.2)

              // var uie_width = Math.min(rect[0]/6-(rect[0]/30),Math.max(rect[1]/num_svgs-(rect[0]/30),20))
              // var uie_width = Math.min(90-(rect[0]/30),Math.max(rect[1]*2/num_svgs-(rect[0]/30),20))
                var uie_width = 90-(rect[0]/30)
                // var uie_width = rect[0]-(map_rect[0] + 90)
              // uie_width *= 2
              // var uie_width = Math.min(rect[0]/6-(rect[0]/30),50)
              var uie_offset = map_rect[0]+(rect[0]/60)
              // var uie_width = rect[0]/6-(rect[0]/30)
              // var uie_offset = map_rect[0]+(rect[0]/60)

              set_source_rgba(elementcolor)
              rectangle_rounded(uie_offset,0,uie_width,map_rect[1],radius,radius)
              fill_with_alpha(0.2)

              var uie_margin = uie_width*0.2

              var sio = yio/3
              var soo = h-yio/3
              var uie_begin = [uie_offset+uie_margin,sio]
              var uie_rect = [uie_begin[0],uie_begin[1],map_rect[0]+uie_margin+uie_width,soo]
              var uie_size = [uie_rect[2]-uie_rect[0],uie_rect[3]-uie_rect[1]]


              set_source_rgba(active_color)
                positions.new = 0;
                for (var i = 0; i < num_ins; i++) {
                  positions.ins[i] = [i*xid+xio,yio]
                  move_to(positions.ins[i][0],sio)
                  line_to(positions.ins[i][0],positions.ins[i][1]-(radius*1.5))
                  stroke_with_alpha(0.67)
                }
                for (var i = 0; i < num_outs; i++) {
                  positions.outs[i] = [i*xod+xoo,yoo]
                  move_to(positions.outs[i][0],soo)
                  line_to(positions.outs[i][0],positions.outs[i][1]+(radius*1.5))
                  stroke_with_alpha(0.67)
                }
              move_to(positions.ins[0][0],yio/3)
              line_to(positions.ins[Math.max(num_ins-1,1)][0],sio)
              move_to(positions.outs[0][0],h-yio/3)
              line_to(positions.outs[Math.max(num_outs-1,1)][0],soo)
              stroke_with_alpha(0.67)

              // var center = (num_outs % 2) ? [positions.outs[num_outs/2-0.5][0],h/2] : [positions.outs[num_outs/2-1][0]+(xoo/2),h/2]
              var center = map_rect.map(function (x,i) { return x * 0.5 - ((pin_align == 2 && i == 0) ? map_rect[0]/2 - xio - (min_dist*(mix==2)/2) : 0) })
              if (mix == 1) mixers[0].pos = center
              else if (mix > 1) {
                for (var bus=0;bus<mix;bus++){
                  mixers[bus].pos = [center[0]-(min_dist/2) + (bus * min_dist) - (0.5 * min_dist * (bus > 2)),center[1]]
                }
              }

// INPUTS --------------------------------------------------------------------------------------------

              for (var i = 0; i < num_ins; i++) {
                var pos = positions.ins[i]

                var active = inputs[i].enabled
                var map = inputs[i].maps

                var color = (active) ? active_color : inactive_color
                set_source_rgba(color)

                perf.hover[0][i] = dist(pos,perf.pos,radius);

                if (!gain_adjust || !input_adjust) hovered = perf.hover[0][i]

                if (cnx_dest == -1 && (hovered || cnx_src == i)) {

                  if (perf.enable) {
                    inputs[i].enabled = !active;
                    perf.enable = 0;
                    dict.replace("inputs::"+i+"::enabled",!active);
                    output();
                  }

                  else if (mix == 0 && perf.connect && !perf.idle) {
                    cnx_src = i;
                    move_to(pos)

                    if (perf.gain_single && !gain_adjust){
                      gain_adjust = 1;
                      mpos_store = perf.pos;
                    }
                    else if (!perf.gain_single) { mpos_store = perf.pos; gain_adjust = 0 };

                    if (gain_adjust) {
                      gain_new = Math.max(0.01,Math.min((mpos_store[1]-perf.pos[1])*2/mpos_store[1]+1,1))
                      move_to(mpos_store)
                      draw_socket(mpos_store,radius,active,gain_new)
                    }

                    move_to(pos)
                    set_line_width((Math.max(scale_patchcord_size*max_patchcord_size*gain_new,0.3))*radius)
                    if (patchcord_style == 1) rel_curve_to(beziers(pos,mpos_store))
                    else if (patchcord_style == 2) segments(i,pos,mpos_store,radius,1)
                    else {move_to(pos);line_to(mpos_store)}
                    stroke_with_alpha(0.8)
                    // draw_socket(mpos_store,radius/**gain_new*/,gain_new)
                    for (o=0;o<num_outs;o++) { if (dist(perf.pos,positions.outs[o],dist_thresh)) cnx_dst = o }
                  }

                  else if (cnx_dst !== -1 && perf.idle && !perf.gain) {
                    var connected = inputs[i].maps[cnx_dst] // (inputs[i].maps[cnx_dst] !== 0)
                      inputs[i].maps[cnx_dst] = (connected !== 0) ? 0 : gain_new
                      dict.replace("inputs::"+i+"::maps",inputs[i].maps)
                      gain_new = 1;
                      output();
                    cnx_src = -1;
                    cnx_dst = -1;
                    perf.connect = 0;
                  }

                  // else if (perf.gain_single || (perf.gain_isngle && perf.idle && !gain_single)) {
                  //   cnx_src = i
                  //   gain_single = 1;
                  //   post(1,'\n')
                  //
                  //
                  // }
                  //
                  // else if (!perf.gain_single && perf.idle && gain_single) {
                  //   gain_single = 0;
                  //   cnx_src = -1;
                  // }

                  else if (perf.gain && !perf.idle) {
                    cnx_src = i
                    if (!input_adjust) {
                      input_adjust = 1
                      mpos_store = perf.pos
                      gain_current = Math.max(inputs[i].gain,0.01)
                    }
                    if (input_adjust) {
                      gain_new = clamp(zmap((mpos_store[1]-perf.pos[1])*(1/gain_current),-rect[1]*0.6,0,0,gain_current,0),0,1)
                      inputs[i].gain = gain_new
                      dict.replace("inputs::"+i+"::gain",gain_new)
                      output();
                      }
                  }
                  else if (!perf.gain && perf.idle) { mpos_store = perf.pos; input_adjust = 0; cnx_src = -1 } // post("idle\n")
                  else if (cnx_src !== -1 && perf.idle){
                    cnx_src = -1
                    input_adjust = 0
                  }

                }

// INPUTS MIXING MAPS --------------------------------------------------------------------------------------------

                if (mix == 0) {

                  for (var o = 0; o < map.length; o++){
                    if (map[o] && o < num_outs) {

                      move_to(pos)
                      set_line_width((Math.max(scale_patchcord_size*max_patchcord_size,0.3))*radius*Math.max(!scale_patchcord_size*max_patchcord_size,map[o]+0.1))
                      if (patchcord_style == 1) rel_curve_to(beziers(pos,positions.outs[o]))
                      else if (patchcord_style == 2) segments(i,pos,positions.outs[o],radius*2,0)
                      else {move_to(pos);line_to(positions.outs[o])}
                      color.map(function (x,i) { return (i==3) ? 0.8 : x } )
                      if (outputs[o].enabled) set_source_rgba(color); else set_source_rgba(inactive_color)

                      var fade = 0.75
                      if (cnx_src == i && !perf.idle && (perf.connect || perf.gain)) fade = 0.9
                      else if (cnx_src !== -1 && perf.gain_single) fade = 0.1
                      stroke_with_alpha(Math.max(!scale_patchcord_alpha*0.8,map[o]*fade+0.05))
                    }
                  }
                }
                  else if (mix == 1) {
                      move_to(pos)
                      set_line_width(Math.max(max_patchcord_size*radius,0.3*radius))
                      set_source_rgba(color)
                      if (patchcord_style == 1) rel_curve_to(beziers(pos,center))
                      else if (patchcord_style == 2) segments(0,pos,center,radius*2,1)
                      else line_to(center)
                      var fade = 1
                      stroke_with_alpha(0.8)
                    }
                  else if (mix == 2) {
                      move_to(pos)
                      set_line_width(Math.max(max_patchcord_size*radius,0.3*radius))
                      set_source_rgba(color)
                      // set_source_rgba(1,0,0,1)
                      var center_left = [center[0]-(min_dist/2),center[1]]
                      var center_right = [center[0]+(min_dist/2),center[1]]

                      if (i % 2 == 0) {
                        if (patchcord_style == 1) rel_curve_to(beziers(pos,center_left))
                        else if (patchcord_style == 2) segments(0,pos,center_left,radius*2,0,2);
                        else line_to(center_left)
                      }
                      else {
                        if (patchcord_style == 1) rel_curve_to(beziers(pos,center_right))
                        else if (patchcord_style == 2) segments(1,pos,center_right,radius*2,0,2);
                        else line_to(center_right)
                      }


                      var fade = 1
                      stroke_with_alpha(0.8)
                    }

                  color = (active) ? active_color : inactive_color
                  set_source_rgba(color)
                  draw_socket(pos,radius,active,inputs[i].gain);

                  }

// OUTPUTS --------------------------------------------------------------------------------------------

                    for (var i = 0; i < num_outs; i++) {

                      var pos = positions.outs[i]

                      var active = outputs[i].enabled
                      var map = outputs[i].maps

                      var color = (active) ? active_color : inactive_color
                      set_source_rgba(color)

                      perf.hover[1][i] = draw_socket(pos,radius,active,outputs[i].gain);
                      hovered = (!output_adjust) ? perf.hover[1][i] : 0

                      if (cnx_src == -1 && (hovered || cnx_dest == i)) {

                        if (perf.enable) {
                          outputs[i].enabled = !active;
                          perf.enable = 0;
                          dict.replace("outputs::"+i+"::enabled",!active);
                          output();
                        }

                        else if (perf.gain && !perf.idle) {
                          cnx_dest = i
                          if (!output_adjust) {
                            output_adjust = 1
                            mpos_store = perf.pos
                            gain_current = Math.max(outputs[i].gain,0.01)
                          }
                          if (output_adjust) {

                            gain_new = clamp(zmap((mpos_store[1]-perf.pos[1])*(1/gain_current),-rect[1]*0.6,0,0,gain_current,0),0,1)
                            outputs[i].gain = gain_new
                            dict.replace("outputs::"+i+"::gain",gain_new)
                            output();
                            }
                        }
                        else if (!perf.gain && perf.idle) { mpos_store = perf.pos; output_adjust = 0; cnx_dest = -1 } // post("idle\n")
                        else if (cnx_dest !== -1 && perf.idle){
                          cnx_dest = -1
                          output_adjust = 0
                        }

                      }

// OUTPUTS MIXING MAPS --------------------------------------------------------------------------------------------

                      if (mix == 1) {
                        move_to(center)
                        set_line_width(Math.max(max_patchcord_size*radius,0.3*radius))
                        set_source_rgba(color)
                        if (patchcord_style == 1) rel_curve_to(beziers(center,positions.outs[i]))
                        else if (patchcord_style == 2) segments(0,center,positions.outs[i],radius*2,1)
                        else line_to(positions.outs[i])
                        stroke_with_alpha(0.8)
                      }

                      else if (mix == 2)  {

                        set_line_width(Math.max(max_patchcord_size*radius,0.3*radius))
                        set_source_rgba(color)
                        var center_left = [center[0]-(min_dist/2),center[1]]
                        var center_right = [center[0]+(min_dist/2),center[1]]

                          if (i % 2 == 0) {
                            move_to(center_left)
                            if (patchcord_style == 1) rel_curve_to(beziers(center_left,positions.outs[i]))
                            else if (patchcord_style == 2) segments(0,center_left,positions.outs[i],radius*2,0,2)
                            else line_to(positions.outs[i])
                          }
                          else {
                            move_to(center_right)
                            if (patchcord_style == 1) rel_curve_to(beziers(center_right,positions.outs[i]))
                            else if (patchcord_style == 2) segments(1,center_right,positions.outs[i],radius*2,0,2)
                            else line_to(positions.outs[i])
                          }

                          stroke_with_alpha(0.8)
                }


                var pos = positions.outs[i]
                var color = (active) ? active_color : inactive_color
                set_source_rgba(color)
                perf.hover[1][i] = draw_socket(pos,radius,active,outputs[i].gain);
                var hovered = perf.hover[1][i]

                }


                if (mix == 1) {
                  // move_to(20,20)
                  move_to(mixers[0].pos)
                  set_source_rgba(color)
                  draw_socket(mixers[0].pos,radius,1,mixers[0].gain)
                }
                else {
                  for (m=0;m<mix;m++){
                    move_to(mixers[m].pos)
                    set_source_rgba(color)
                    draw_socket(mixers[m].pos,radius,1,mixers[m].gain)
                  }
                }


                // set_source_rgba(1,0,0,1)
                // identity_matrix()
                // var rect_new = map_rect.map(function (x,i) { if (i==0) return x-(2*xio); else return x-(2*yio) })
                // rectangle(xio,yio,rect_new)
                // move_to(xio,yio)
                // rel_line_to(rect_new)
                // move_to(xio,yio+rect_new[1])
                // rel_line_to(rect_new[0],-rect_new[1])
                // rel_move_to(-rect_new[0]/2,0)
                // rel_line_to(0,rect_new[1])
                // rel_move_to(rect_new[0]/2,-rect_new[1]/2)
                // rel_line_to(-rect_new[0],0)
                // // move_to(xio,map_rect[1]-yio)
                // // line_to(rect[0]+xio,yio)
                // // move_to(positions.ins[0])
                // // line_to(positions.outs[1])
                // set_line_width(2)
                // // stroke()
                // stroke_with_alpha(0.1)

                // if (hover && val) {
                //   img_val.mapcolor([0,0,0,1],svg_alpha(hover_color))
                // }
                // else if (val) img_val.mapcolor([0,0,0,1],svg_alpha(panel_color)); else img_val.mapcolor([0,0,0,1],svg_alpha(svg_off_color));

                // translate(map_rect[0]+uie_margin+4,uie_margin*2)

// UI ELEMENTS --------------------------------------------------------------------------------------------

                identity_matrix()
                translate(uie_begin)



                // var imgs = Object.keys(icons)
                uie_selected = (perf.pos[0]>uie_offset && perf.pos[1] >= sio && perf.pos[1] <= soo) ? Math.floor(zmap(perf.pos[1],sio,soo,0,num_svgs,1)) : -1
                if (perf.pos[0] > uie_offset + (uie_size[0]/2)) uie_selected = Math.floor(zmap(perf.pos[1],sio,soo,num_svgs,num_svgs*2,1))
                var svg_height = uie_size[1]/(num_svgs)
                // svg_height = Math.min(uie_width/2,svg_height)
                // var svg_width = Math.min(uie_width/2,svg_height)
                var svg_offset = svg_height/4
                var svg_width = uie_size[0]/2-(uie_margin/2)
                // post(svg_height,'\n')
                var coeff = Math.min(uie_size[0]/2,uie_size[1]/num_svgs)
                coeff *= 0.0006

                // push_group()

                for (var s=0; s < icons.length; s++) {
                  var image = icons[s].img
                  var on = icons[s].on
                  var enabled = icons[s].enabled
                  var size = image.size
                  var img_coeff = coeff * (1000/size[0])
                  // var image = new MGraphicsSVG("info.svg")
                  // post(s,icons[s].enabled,'\n')
                  // post(Object.keys(img))
                  // scale(0.016,0.016)


                  // post(uie_selected,'\n')
                  if (enabled && uie_selected == s) { image.mapcolor([0,0,0,1],highlight_color) }
                  else if (!enabled || on == 0) { image.mapcolor([0,0,0,1],inactive_color) }
                  // else if () { image.mapcolor([0,0,0,1],active_color); }
                  else if (on) image.mapcolor([0,0,0,1],active_color)
                  else image.mapcolor([0,0,0,1],inactive_color)

                  identity_matrix()
                  translate(uie_begin)
                  var ro = Math.floor(s/(num_svgs))
                  // ro *= uie_width/2
                  // ro *= svg_height
                  translate(ro*svg_width,s*svg_height+svg_offset-(ro*num_svgs*svg_height))
                  // translate(0,uie_width/(num_svgs))
                  scale(img_coeff,img_coeff)
                  // post(call_hover,'\n')
                  svg_render(image)
                  fill_with_alpha(1);
                  scale(1/img_coeff,1/img_coeff)
                  // identity_matrix()
                }

                if (uie_selected > -1 && uie_selected < icons.length) {
                  var hint = icons[uie_selected].annotation
                  var text_size = Math.max(10,(rect[1]-map_rect[1])/2.5)
                  var text_pos = [radius,rect[1]-(rect[1]/12)+(text_size/2)]
                  identity_matrix()
                  move_to(text_pos)
                  set_font_size(text_size)
                  select_font_face("Lato")
                  var t_width = text_measure(hint)[0]
                  var maxlength = rect[0]-(radius*2)
                  if (t_width > maxlength) {
                    var t_coeff = maxlength/t_width
                    scale(t_coeff,1)
                    set_source_rgba(active_color)
                    show_text(hint)
                    fill_with_alpha(0.8)
                    scale(1/t_coeff,1)
                  }
                  else {
                    set_source_rgba(active_color)
                    show_text(hint)
                    fill_with_alpha(0.8)
                  }
                }

                // if (uie_selected !== -1) {
                //   push_group()
                //     identity_matrix()
                //     // set_source_rgba(elementcolor.map(function (x,i) { if (i==3) return x*0.5; else return x } ))
                //     set_source_rgba(0,0,0,1)
                //     rectangle_rounded(0,0,map_rect,radius*3,radius*3)
                //     // fill()
                //     var panel_main = new Image(pop_group())
                //     // panel_main.adjustchannel("alpha",0.8,0)
                //     panel_main.clear(elementcolor.map(function (x,i) { if (i==3) return x*0.8; else return x } ))
                //     // panel_main.
                //   // panel_main.mapcolor([0,0,0,1],elementcolor)
                //   identity_matrix()
                //   image_surface_draw(panel_main,sio-2,sio-2,map_rect[0]-(2*sio)+4,map_rect[1]-(2*sio)+4)
                //   // image_surface_draw(panel_main,3,3,map_rect[0]-(sio*2),map_rect[1]-(soo*2))
                //
                //   // fill_with_alpha(0.9)
                //   // fill_with_alpha(0.3)
                //   // image_surface_draw(panel_main)
                // }

                // var svgs = pop_group();
                // scale(coeff,coeff)
                // image_surface_draw(svgs)
                // fill_with_alpha(1);





              }



            }

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

// ----------------------- MOUSE INTERACTION -----------------------

var perf = {
  pos: [-1,-1],
  idle: 0,
  hover: [[],[]],
  enable: 0,            //      CMD
  connect: 0,           //      SHIFT
  gain_single: 0,       //      OPTION
  gain: 0               //      ———
}
var cnx_src = -1;
var cnx_dst = -1;
var cnx_dest = -1;
var mpos_store = perf.pos
var gain_adjust = 0;
var gain_new = 1;
var hovered = -1
var input_adjust = 0;
var output_adjust = 0;
var gain_current = 1;
var gain_single = 0;
var call_hover = -1
var uie_selected = -1

perform_flags.local = 1;
function perform_flags(pf){
  var flags = Object.keys(perf)
  for (var f = 0; f < flags.length; f++) { perf[flags[f]] = pf[f] || ((flags[f] == "hover") ? [new Array(num_ins),new Array(num_outs)] : 0) }
}

onidle.local = 1;
function onidle(x,y,but,cmd,shift,capslock,option,ctrl){
  perform_flags([clampmouse([x,y]),1])
  mgraphics.redraw();
}

onclick.local = 1;
function onclick(x,y,but,cmd,shift){
  if        (shift)     perform_flags([clampmouse([x,y]),0,[[],[]],0,1])
  else if   (cmd)       perform_flags([clampmouse([x,y]),0,[[],[]],1])
  else                  perform_flags([clampmouse([x,y]),0,[[],[]],0,0,0,1])

  if (uie_selected !== -1) {
    // post(uie_selected,'\n')
    switch (uie_selected){
      case 0:
        icons[uie_selected].on = 0
        matrix_setup(num_ins,num_outs);
        output();
        break
      case 1:
        var mx = mix + 1
        mx %= 3
        set_mix(mx)
        output()
        refresh()
      case 3:
        autogain = !autogain
        icons[uie_selected].on = autogain
        refresh()
        break
      case 4:
        if (dict.contains("presets")) {
          var slotlist = dict.get("presets").getkeys()
          if (slotlist instanceof Array){
            var slot_ids = slotlist.map(function (x) { return parseInt(x) } )
            var pr = 1;
            while (pr) {
              if (pr !== 0 && slot_ids.indexOf(pr) == -1) {
                store(pr)
                pr = 0
              }
              else pr++
            }
          }
          else {
            var index = parseInt(slotlist)
            if (index !== 1)  store(1)
            else {
              store(index+1)
            }
          }
        }
        else store(1)

        break
      case 5:
        init()
        break
      case 6:
        patchcord_style += 1
        patchcord_style %= 3
        refresh()
        break
      case 7:
        jit_matrix_adapt = !jit_matrix_adapt
        icons[uie_selected].on = jit_matrix_adapt
        set_jit_matrix_adapt(jit_matrix_adapt)
        break
      case 8:
        randomize()
        break
      case 9:
        scale_patchcord_size = !scale_patchcord_size
        icons[uie_selected].on = scale_patchcord_size
        refresh()
        break
      case 10:
        scale_patchcord_alpha = !scale_patchcord_alpha
        icons[uie_selected].on = scale_patchcord_alpha
        refresh()
        break
      case 11:
        clear()
        break
      default:
        post(uie_selected+": idle…");
    }
  }

  refresh()
}

ondrag.local = 1;
function ondrag(x,y,but,cmd,shift,capslock,option,ctrl){
  if        (shift)     perform_flags([clampmouse([x,y]),0,[[],[]],0,1,option])
  else if   (cmd)       perform_flags([clampmouse([x,y]),0,[[],[]],1])
  else if   (option)    perform_flags([clampmouse([x,y]),0,[[],[]],0,0,1])
  else                  perform_flags([[x,y],0,[[],[]],0,0,0,1])

  if (!shift && !perf.gain) {
    cnx_src = -1;
    cnx_dst = -1;
  }
  refresh()
}

onidleout.local = 1;
function onidleout(){
  perform_flags([])
  cnx_src = -1;
  cnx_dst = -1;
  perf.pos = [-1,-1]
  refresh()
}



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

// ----------------------- UI ELEMENTS -----------------------

SVGicon.local = 1;
function SVGicon(svg,on,enabled,annotation){
  this.img = new MGraphicsSVG(svg)
  this.enabled = (enabled !== undefined) ? enabled : 1;
  this.on = (on !== undefined) ? on : 1
  this.annotation = annotation || "—"
  // this.func = eval(func) || undefined;
}

var icons = [
  new SVGicon("browser_plugin.svg",1,1,"create and patch mcs.matrix~ (throws error when not connected to sig)"),
  new SVGicon("project2.svg",1,1,"mixdown options: none, mono, stereo"),
  new SVGicon("snowflake2.svg",1,0,"(idle)"),
  new SVGicon("reset2.svg",autogain,1,"set autogain for randomization of jit_matrices"),
  new SVGicon("addsnippet2.svg",1,1,"add snapshot"),
  new SVGicon("loop.svg",1,1,"initialize connections and gains"),
  new SVGicon("function2.svg",1,1,"cycle through patchcord styles"),
  new SVGicon("download2.svg",1,1,"inherit jit_matrix dimensions as channel map"),
  new SVGicon("randomize.svg",1,1,"randomize connections"),
  new SVGicon("pointcloud.svg",1,1,"scale patchcord size to gain"),
  new SVGicon("preserve_aspect.svg",1,1,"scale patchcord opacity to gain"),
  new SVGicon("garbage-bin-recycle-bin.svg",1,1,"clear all connections")
]
var num_svgs = 6


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

function matrix_setup(ins,outs){
  mcsmatrix.obj = [];
  matrixctrl = undefined;
  maxobjoutlets = this.box.patchcords.outputs
  maxobjdsts = [];
  if (maxobjoutlets !== undefined){
    for (var obj = 0; obj<maxobjoutlets.length;obj++){
      maxobjdsts = maxobjoutlets[obj]
        if ((/^mcs\.matrix~$/).test(maxobjdsts.dstobject.maxclass)) {
          mcsmatrix.obj[mcsmatrix.obj.length] = maxobjdsts.dstobject;
          mcsmatrix.obj[mcsmatrix.obj.length-1].message("sendbox","varname","mcs.matrix~")
        }
        else if ((/^matrixctrl$/).test(maxobjdsts.dstobject.maxclass)) {
          matrixctrl = maxobjdsts.dstobject;
          matrixctrl.message("sendbox","varname","matrixctrl")
        }
      }
    }
    if (!mcsmatrix.obj.length && !icons[0].on){
      mcsmatrix.obj[0] = patch.newdefault(this.box.rect[0]-100,this.box.rect[3]+100,"mcs.matrix~",num_ins,num_outs,"@ramp",ramp);
      mcsmatrix.obj[0].message("sendbox","varname","matrixctrl")
      mcsmatrix.ins = ins
      mcsmatrix.outs = outs
      // mcsmatrix.inchans = mcsmatrix.obj.getattr("chans")
      // post("chans",mcsmatrix.inchans,'\n')
      patch.connect(this.box,0,mcsmatrix.obj[0],0)
      // mcsmatrix.sig = patch.newdefault(this.box.rect[0]-100,this.box.rect[3]+50,"mc.sig~","@chans",num_ins);
      // patch.connect(mcsmatrix.sig,0,mcsmatrix.obj,0)
      icons[0].on = 1
    }
    if (mcsmatrix.obj.length && (mcsmatrix.ins !== ins || mcsmatrix.outs !== outs)) {
      mcsmatrix.ins = ins
      mcsmatrix.outs = outs
      // mcsmatrix.inchans = mcsmatrix.obj.getattr("chans")
      // post("chans",mcsmatrix.inchans,'\n')
      var ramp = mcsmatrix.obj[0].getattr("ramp")
      for (var m = 0; m<mcsmatrix.obj.length; m++){
        patch.message("script","replace",mcsmatrix.obj[m].getattr("varname"),"newex",0,0,190,12,"mcs.matrix~",num_ins,num_outs,"@ramp",ramp)
      }
    }
    // else {}
    if (matrixctrl !== undefined){
      if (matrixctrl.getattr("columns") !== num_ins) matrixctrl.setattr("columns",num_ins)
      if (matrixctrl.getattr("rows") !== num_outs) matrixctrl.setattr("rows",num_outs)
      if (matrixctrl.getattr("autosize") !== 1) matrixctrl.setattr("autosize",1)
      if (matrixctrl.getattr("dialmode") !== 2) matrixctrl.setattr("dialmode",2)
    }
}
matrix_setup.local = 1;
//
// function matrix_setup(ins,outs){
//   mcsmatrix.obj = undefined;
//   matrixctrl = undefined;
//   maxobjoutlets = this.box.patchcords.outputs
//   maxobjdsts = [];
//   if (maxobjoutlets.length){
//     for (var out = 0; out<maxobjoutlets.length;out++){
//       maxobjdsts = maxobjoutlets[out]
//       if (maxobjdsts instanceof Array) {
//         for (obj=0;obj<maxobjdsts.length;obj++){
//           if ((/^mcs\.matrix~$/).test(maxobjdsts[obj].dstobject.maxclass)) {
//             mcsmatrix.obj = maxobjdsts[obj].dstobject;
//             mcsmatrix.obj.message("sendbox","varname","mcs.matrix~")
//           }
//           else if ((/^matrixctrl$/).test(maxobjdsts[obj].dstobject.maxclass)) {
//             matrixctrl = maxobjdsts[obj].dstobject;
//             matrixctrl.message("sendbox","varname","matrixctrl")
//           }
//         }
//       }
//       else if ((/^mcs\.matrix~$/).test(maxobjdsts.dstobject.maxclass)) {
//         mcsmatrix.obj = maxobjdsts.dstobject;
//         mcsmatrix.obj.message("sendbox","varname","mcs.matrix~")
//       }
//       else if ((/^matrixctrl$/).test(maxobjdsts.dstobject.maxclass)) {
//         matrixctrl = maxobjdsts.dstobject;
//
//         matrixctrl.message("sendbox","varname","matrixctrl")
//       }
//     }
//   }
//     if (mcsmatrix.obj === undefined && !icons[0].on){
//       mcsmatrix.obj = patch.newdefault(this.box.rect[0]-100,this.box.rect[3]+100,"mcs.matrix~",num_ins,num_outs,"@ramp",ramp);
//       mcsmatrix.obj.message("sendbox","varname","matrixctrl")
//       mcsmatrix.ins = ins
//       mcsmatrix.outs = outs
//       // mcsmatrix.inchans = mcsmatrix.obj.getattr("chans")
//       // post("chans",mcsmatrix.inchans,'\n')
//       patch.connect(this.box,0,mcsmatrix.obj,0)
//       // mcsmatrix.sig = patch.newdefault(this.box.rect[0]-100,this.box.rect[3]+50,"mc.sig~","@chans",num_ins);
//       // patch.connect(mcsmatrix.sig,0,mcsmatrix.obj,0)
//       icons[0].on = 1
//     }
//     if (mcsmatrix.obj !== undefined && (mcsmatrix.ins !== ins || mcsmatrix.outs !== outs)) {
//       mcsmatrix.ins = ins
//       mcsmatrix.outs = outs
//       // mcsmatrix.inchans = mcsmatrix.obj.getattr("chans")
//       // post("chans",mcsmatrix.inchans,'\n')
//       var ramp = mcsmatrix.obj.getattr("ramp")
//       patch.message("script","replace",mcsmatrix.obj.getattr("varname"),"newex",0,0,190,12,"mcs.matrix~",num_ins,num_outs,"@ramp",ramp)
//     }
//     // else {}
//     if (matrixctrl !== undefined){
//       if (matrixctrl.getattr("columns") !== num_ins) matrixctrl.setattr("columns",num_ins)
//       if (matrixctrl.getattr("rows") !== num_outs) matrixctrl.setattr("rows",num_outs)
//       if (matrixctrl.getattr("autosize") !== 1) matrixctrl.setattr("autosize",1)
//       if (matrixctrl.getattr("dialmode") !== 1) matrixctrl.setattr("dialmode",1)
//     }
// }
// matrix_setup.local = 1;

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

// ----------------------- DEBUG & NOTIFY -----------------------

function print(){
  post("the.mcs.matrixctrl.js:",arrayfromargs(arguments),'\n')
}

// ----------------------- INIT -----------------------

if (rect[0] < 250) this.box.size(250,150)
// function loadbang(){
  setup_from_args(jsarguments[1],jsarguments[2],1)
// }
//
// loadbang()
