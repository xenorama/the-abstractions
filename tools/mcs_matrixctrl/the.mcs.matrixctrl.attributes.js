// ----------------------- ATTRS -----------------------

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
function get_mix() { return mix };
}; set_mix.local = 1;
var outputs_always_active = 1;
declareattribute("outputs_always_active","get_outputs_always_active","set_outputs_always_active",1);
function set_outputs_always_active(oaa) { outputs_always_active = oaa !== 0; refresh(); }; set_outputs_always_active.local = 1;
function get_outputs_always_active() { return outputs_always_active };
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
