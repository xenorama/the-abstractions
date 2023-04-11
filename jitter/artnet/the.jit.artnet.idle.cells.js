max.clearmaxwindow()
outlets = 4;

var matx = new JitterMatrix(1,"float32",117,26)
var maty = new JitterMatrix(1,"float32",117,26)
var mato = new JitterMatrix(2,"float32",26,1)
var shift_coords = [[]]
var add_rows = 0;

var dim = [117,26]
declareattribute("dim","get_dim","set_dim",1)
function get_dim() { return dim }
function set_dim(x,y) { dim = [x,y]; jit_matrix(mato.name); define_coords(); shift() }
set_dim.local = 1;

var offsets = new Array(dim[0]*dim[1])

var idle_leds = [-1]
declareattribute("idle_leds","get_idle_leds","set_idle_leds",1)
function get_idle_leds() { return idle_leds }
function set_idle_leds() { idle_leds = arrayfromargs(arguments); jit_matrix(mato.name); define_coords(); shift() }
set_idle_leds.local = 1;

function shift(){
  if (idle_leds[0] == -1) {
    outlet(0,"outputmode",2)
  }
  else {
    // post(idle_leds[0])
    var rows  = dim[1]+add_rows
    matx.dim = [dim[0],rows];
    maty.dim = [dim[0],rows];
    matx.setall(-1,-1,-1)
    maty.setall(-1,-1,-1)

    var cells = dim[0]*dim[1]
    var row = 0;
    var lookup = 0;
    var offset = 0;
    var column = 0;
    var row = 0;

    // post("—————————————————SETMATRIX\n")


    for(c=0;c<cells;c++){
      var x = c % dim[0]
      var y = Math.floor(c/dim[0])
      if (lookup < shift_coords.length && shift_coords[lookup][0] == column && shift_coords[lookup][1] == row) {
        offset += 3
        lookup++
      }
      column = (c + offset) % dim[0]
      // var col_offset_index = c/3
      row = Math.floor((c + offset)/dim[0])
      matx.setcell2d(column+offsets[row],row,x)
      maty.setcell2d(column+offsets[row],row,y)
      // post(column+offsets[row],'\n')
    }

    outlet(0,"outputmode",1)
    outlet(1,"dim",1,add_rows)
    outlet(1,-1)
    outlet(2,"jit_matrix",matx.name)
    outlet(3,"jit_matrix",maty.name)
  }
}

function define_coords(i){
  shift_coords = [[]]
  add_rows = Math.ceil(idle_leds.length*3/dim[0])
  for (i=0;i<idle_leds.length;i++){
    var index = (idle_leds[i]-1) * 3
    var column = index % dim[0]
    var row = Math.floor(index/dim[0])
    shift_coords[i] = [column,row]
  }
}

function jit_matrix(j){
  mato.name = j;
  var cells = mato.dim[0]
  if (cells > 0) {
    offsets = new Array(cells)
    var shift = 0;
    var max_unit_length = 0;
    // var offset = 0;
    // for (var c=0;c<cells;c++){
    //   var val = mato.getcell(c)[0]
    //   if (val > max_unit_length) max_unit_length = val;
    // }
    //
    // max_unit_length *= 3;
    // post(max_unit_length,'\n')

    // post("—————————————————OFFSETS\n")

    for (var c=0;c<cells;c++){
      var pixels = mato.getcell(c).slice(0,2);
      var length = (pixels[0]-1)*3
      var offset = pixels[1]*3
      var dist = dim[0]-3-length-offset
      // post(dist,'\n')
      // var offset = mato.getcell(c)[1]
      // var pixels = mato.getcell(c).slice(0,2)
      // var length = pixels[0]
      // var offset = pixels[1]
      offsets[c] = shift
      // shift += offset
      // post(offsets[c],shift,'\n')
    }
  }
  else offsets = new Array(dim[0]*dim[1])
}

define_coords()
shift();
