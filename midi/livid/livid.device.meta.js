// MASTER
// livid.device.gui.js

function Device(device){
  if (device == "code"){
    /* ————————— CNTRL:R ————————— */
      this.id = 4
      this.name = "code"
      this.midi_port = "Code Controls"
    // mgraphics
      this.aspect = 1.670155
      this.rect_ext = [1,1.2]
      this.gb_small = 0.0675;
      this.gb_large = 0.095;
      this.gb_thin = 0.067;
      this.gb_thin_height = 0.0428;
    // unit
      this.num_buttons = 45
      this.num_ctls = 32
      this.num_push_encoders = 32
    // mappings
      this.btns = new Array(this.num_buttons)
      this.btn_map =
        /*4x8 puhs encoders*/ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
        /*left grid buttons*/ 32, 33, 34, 35,
        /*bottom grid buttons*/ 36, 38, 39, 40, 41, 42, 43, 44,
        /*gary*/ 37 ]
      this.ctls = new Array(this.num_ctls)
      this.ctl_map =
        /*4x8 encoders*/ [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 ]

  }
  else if (device == "cntrlr"){
    /* ————————— CNTRL:R ————————— */
      this.id = 8
      this.name = "cntrlr"
      this.midi_port = "Cntrl_r Controls"
    // mgraphics
      this.aspect = 1.370155
      this.rect_ext = [1,1.2]
      this.gb_small = 0.058;
      this.gb_large = 0.0708;
      this.gb_thin = 0.067;
      this.gb_thin_height = 0.0428;
    // unit
      this.num_buttons = 68
      this.num_ctls = 46
      this.num_push_encoders = 12
    // mappings
      this.btns = new Array(this.num_buttons)
      this.btn_map =
        /*4x4 grid buttons*/ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
        /*2x16 grid buttons*/ 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,
        /*3x4 push encoders*/ 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
        /*xpc extensions*/ 60, 61, 62, 63, 64, 65, 66, 67] // not yet correctly mapped
      this.ctls = new Array(this.num_ctls)
      this.ctl_map =
        /*left dials*/ [1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15,
        /*right dials*/ 17, 21, 25, 29, 18, 22, 26, 30, 19, 23, 27, 31,
        /*left faders*/ 4, 8, 12, 16,
        /*right faders*/ 20, 24, 28, 32,
        /*encoders*/ 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
        /*xpc expansion ccs*/ 38, 39, 40, 41, 42, 43, 44, 45 ] // not yet correctly mapped

  }
  else if (device == "ohmrgb" || device == "ohm"){
    /* ————————— CNTRL:R ————————— */
      this.id = 7
      this.name = "ohm"
      this.midi_port = "OhmRGB Controls"
    // mgraphics
      this.aspect = 1.77
      this.rect_ext = [1,1.2]
      this.gb_small = 0.0538;
      this.gb_large = 0.066;
      this.gb_thin = 0.067;
      this.gb_thin_height = 0.0428;
    // unit
      this.num_buttons = 95
      this.num_ctls = 33
      this.num_push_encoders = 0
    // mappings
      this.btns = new Array(this.num_buttons)
      this.btn_map =
      /*8x8 grid buttons*/ [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
      /*3x2 mode buttons*/ 69, 70, 71, 77, 78, 79,
      /*4x2 fade buttons*/ 65, 73, 66, 74, 67, 75, 68, 76,
      /*left/right cx buttons*/ 64, 72,
      /*gary*/ 87,
      /*xpc extensions*/ 88, 89, 90, 91, 92, 93, 94] // not yet correctly mapped
      this.ctls = new Array(this.num_ctls)
      this.ctl_map = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, // not yet correctly mapped
        /*xpc expansion ccs*/ 25, 26, 27, 28, 29, 30, 31, 32 ] // not yet correctly mapped

  }
  this.client_exec_port = "livid."+device+".execute"
  this.grab_port = "livid."+device+".getinfo"
  this.update_port = "livid."+device+".update"
}

/* ————————— SETUP ————————— */

setup.local = 1;
function setup(){
  for (i=0;i<device.btns.length;i++) {
    device.btns[i] = new Button(device.btn_map[i],0,"—",1,0,1,-1,-1);
  }

  for (i=0;i<device.ctls.length;i++) {
    device.ctls[i] = new Ctl(device.ctl_map[i],0,"—",1,-1,-1);
  }

}

function test(){
  post("test\n")
}
