/*
TODOS

- barré support
- manual key selection
- manual scale selection
- classic chords
- kslider / midi input
- third / sixth shift
-

*/

// ———————————————————————————————————————————————— SETUP ————————————————————————————————————————————————

inlets = 2;
max.clearmaxwindow()

mgraphics.relative_coords = 0
mgraphics.init()

// ———————————————————————————————————————————————— ATTRIBUTES ————————————————————————————————————————————————

var attrs = {
  constrain_scale_markers: {  // reveal only adjacent tones belonging to current scale
    val: 1,
    description: "reveal adjacent tones in scale"
  },
  sequence: { // toggle sequencing
    val: 1,
    description: "toggle sequence editing & visualisation"
  },
  roots: { // show all root tones
    val: 1,
    description: "highlight all other root tones"
  },
  mutation_range: { // deviation on mutation
    val: [1,3,2,2], // min/max of tones + root dev.
    description: "set adjacent deviation tolerance on mutation"
  },
  root_shift_mode: { // deviation on mutation
    val: 0, // min/max of tones + root dev.
    description: "shift scale (0) or approximate scale (1) on root note change"
  }
}

// var constrain_scale_markers = 1
declareattribute("constrain_scale_markers","get_constrain_scale_markers","set_constrain_scale_markers",1); function set_constrain_scale_markers(c) { attrs.constrain_scale_markers.val = (c !== 0); mgraphics.redraw() }; set_constrain_scale_markers.local = 1; function get_constrain_scale_markers() { return attrs.constrain_scale_markers.val };
declareattribute("sequence","get_sequence","set_sequence",1); function set_sequence(c) { attrs.sequence.val = (c !== 0); mgraphics.redraw() }; set_sequence.local = 1; function get_sequence() { return attrs.sequence.val };
declareattribute("roots","get_roots","set_roots",1); function set_roots(c) { attrs.roots.val = (c !== 0); mgraphics.redraw() }; set_roots.local = 1; function get_roots() { return attrs.roots.val };
declareattribute("root_shift_mode","get_root_shift_mode","set_root_shift_mode",1); function set_root_shift_mode(c) { attrs.root_shift_mode.val = (c !== 0); mgraphics.redraw() }; set_root_shift_mode.local = 1; function get_root_shift_mode() { return attrs.root_shift_mode.val };

// ———————————————————————————————————————————————— VARIABLES ————————————————————————————————————————————————

var dict = new Dict("git_presets")
var user_scales = new Dict("git_default.scales")
var compat = new Dict()
var strings = new Buffer("git_strings")
var seq_strings = new Buffer("git_seq")
var seq = 12
var step = -1
var patch = this.patcher
var PI = Math.PI
var TWOPI = 2*PI
var ui = {
  logos: {
    svg: {
      constrain_scale_markers: new MGraphicsSVG("constrain_scale.svg"),
      sequence: new MGraphicsSVG("code2.svg"),
      roots: new MGraphicsSVG("footprints.svg"),
      root_shift_mode: new MGraphicsSVG("sync.svg")
    },
    size: 8,
    offset: 0
  },
  area: { hp: 0, vp: 0, w: 0, h: 0 },
  desc_end: 0
}

var model = {
  name: "Gibson",
  mensuration: 628,
  begin: 0,
  end: undefined,
  height: 0,
  margin: 0,
  frets: 21,
  mensur_coeff: 17.817,
  num_strings: strings.framecount(),
  m: new Array(this.frets),
  positions: new Array(this.frets)
}

var color = {
  fret: patch.getattr("bgcolor"),
  open: patch.getattr("color"),
  string: patch.getattr("selectioncolor"),
  wood: patch.getattr("accentcolor"),
  correct: [0,1,0.2,1],
  deviate: [0.8,0.4,0.1,1],
  wrong: [1,0,0,.5],
  equiv: [0.1,0.8,1,1]
}

var tones = {
  scale: {
    keys: [0,2,3,5,7,9,10],
    swars: "SrRgGmMPdDnN",
    name: "dorian",
    indices: [0,1,2,3,4,5,6],
    list: []
  },
  strings: {
    meta: [],
    pitch: [4,9,14,19,23,28],
    open: [4,9,2,7,11,4],
    offsets: [0,5,10,15,19,24],
    index_offsets: [0,21,42,63,84,106],
    octaves: [0,7,2,9,5,0],
    names: ["E0","A","D","G","H","E2"],
    markers: [2,4,6,8],
  },
  names: ["C","C#","D","D#","E","F","F#","G","G#","A","A#","H"],
  root: 4,
  fret_range: [0,model.frets],
  transposition: 0,
  lowest: {
    string: 0,
    pitch: 4
  },
  chord: {
    wrap: new Array(this.num_strings),
    abs: new Array(this.num_strings),
    index: new Array(this.num_strings),
    equivalents: new Array(model.num_strings),
    preferences: [[1,0,1,1,1,0],[0,1,1,1,1,0],[0,0,1,1,1,1]]
  },
}

function Scale(name,keys,cof){
  this.name = name
  this.keys = keys
  this.cof = cof || 0
}

var cof = { // circle of fifths
  ionian: [ 0, 2, 4, 5, 7, 9, 11 ],
  dorian: [ 0, 2, 3, 5, 7, 9, 10 ],
  phrygian: [ 0, 1, 3, 5, 7, 8, 10 ],
  lydian: [ 0, 2, 4, 6, 7, 9, 11 ],
  mixolydian: [ 0, 2, 4, 5, 7, 9, 10 ],
  aeolian: [ 0, 2, 3, 5, 7, 8, 10 ],
  locrian: [ 0, 1, 3, 5, 6, 8, 10 ]
}

var chords = {
  names: ["major","septic","minor","half_diminished","fully_diminished"],
  major: {
    frets: [ [0,undefined,1,1,0,undefined], [undefined,0,2,1,2,undefined], [undefined,undefined,0,2,2,2] ],
    COF_scale: [ 0, 2, 4, 5, 7, 9, 11 ]
  },
  septic: {
    frets: [ [0,undefined,0,1,0,undefined], [undefined,0,2,0,2,0], [undefined,undefined,0,2,1,2] ],
    COF_scale: [ 0, 2, 4, 6, 7, 9, 10 ]
  },
  minor: {
    frets: [ [0,undefined,0,0,0,undefined], [undefined,0,2,2,1,undefined], [undefined,undefined,0,2,1,1] ],
    COF_scale: [ 0, 2, 3, 5, 7, 8, 10 ]
  },
  half_diminished: {
    frets: [ [0,undefined,0,0,-1,undefined], [undefined,0,1,0,1,undefined], [undefined,undefined,0,1,1,1] ],
    COF_scale: [ 0, 1, 3, 5, 6, 8, 10 ]
  },
  fully_diminished: {
    frets: [ [0,undefined,-1,0,0,undefined], [undefined,0,1,-1,1,undefined], [undefined,undefined,0,1,0,1] ],
    COF_scale: [0]
  }
}

var scales = { cof: [], user: [], equiv: [], count: []}
var info = { height: 0, width: 0, h_pos: 0, v_pos: 0, margin: 0 }
var kslider = { height: 0, width: 0, h_pos: 0, v_pos: 0, margin: 0, keys: { white : { width: 0, indices: [0,2,4,5,7,9,11] }, black: { width: 0, indices: [1,3,0,6,8,10], height: 0 } }, line_width: 1.5 }
var mouse = { pos: [-1,-1], click: 0, equiv: 0 }
var font = { size: 16, name: "Lato", pos_left: 0, pos_right: 0 }

var calls = {
  area: { hp: 0, vp: 0, w: 0, h: 0, logo_offset: 0, break: 0 },
  commands: {
    clear: {
      description: "remove all tones",
      svg: new MGraphicsSVG("reset2.svg"),
      func: "clear()",
      color: [0.6,0,0.1,1]
    },
    mutate: {
      description: "mutate chord within current scale",
      svg: new MGraphicsSVG("network.svg"),
      func: "mutate()",
      color: color.string
    },
    /*prev: {
      description: "lower harmonic chord",
      svg: new MGraphicsSVG("arrow.down.svg"),
      func: "prev()",
      color: color.string
    },
    next: {
      description: "higher harmonic chord",
      svg: new MGraphicsSVG("arrow.up.svg"),
      func: "next()",
      color: color.string
    },*/
    dec: {
      description: "decrement chord",
      svg: new MGraphicsSVG("arrow.left.svg"),
      func: "transpose(\"dec\")",
      color: color.open
    },
    inc: {
      description: "increment chord",
      svg: new MGraphicsSVG("arrow.right.svg"),
      func: "transpose(\"inc\")",
      color: color.open
    }
  }
}


// ———————————————————————————————————————————————— MOUSE INFO ————————————————————————————————————————————————

onidle.local = 1
function onidle(x,y,but,cmd,shift,capslock,option,ctrl){
  mouse.pos = [x,y]
  mouse.click = 0
  mouse.ident = shift
  mouse.equiv = option
  refresh()
}

onclick.local = 1
function onclick(x,y){
  mouse.pos = [x,y]
  mouse.click = 1
  mouse.ident = 0
  mouse.equiv = 0
  refresh()
}

onidleout.local = 1
function onidleout(x,y,but,cmd,shift,capslock,option,ctrl){
  mouse.pos = [-1,-1]
  mouse.click = 0
  mouse.ident = shift
  mouse.equiv = option
  refresh()
}

// ———————————————————————————————————————————————— MAX MESSAGES ————————————————————————————————————————————————

function clear(){
  strings.poke(1,0,[-1,-1,-1,-1,-1,-1])
  post("CLEAR\n")
}

function mutate(){
  if (tones.scale.keys.length > 2) {
    // find matching tones for all strings
    // find corresponding frets in string
    find_tones()
    // choose random base string
    var base_new = Math.floor(Math.random()*2.999)
    // choose random deviation within harmonic tones/frets
    // find difference between original and new root
    // redefine tones.lowest.pitch and tones.lowest.string
    // redefine scale as per new root globally
    change_base(base_new)
    var root_pos = strings.peek(1,tones.lowest.string)
    // iterate through remaining strings above
    for (r=tones.lowest.string+1;r<model.num_strings;r++){
      // apply fret combination preference as per new root
      var deviate = tones.chord.preferences[tones.lowest.string][r]
      if (deviate) {
        for (d=0;d<10;d++){
          var pos = Math.floor(Math.random() * 4 - 1)
          pos += root_pos
    // check in loop for matching tones in random fashion
    if (tones.strings.meta[r].frets[pos]) {
    // specify if possible, otherwise begin again from new root
    // update buffer fret references
            strings.poke(1,r,pos)
            break
          }
        }
      }
      else {
        var fret = (tones.strings.meta[t] && decide() && tones.strings.meta[t].keys.indexOf(tones.strings.open[t]) !== -1)
          ? 0
          : -1
        strings.poke(1,r,fret)
        // strings.poke(1,r,-1)
      }
    }
    // find scale name
    tones.scale.name = find_scale_names()[0]
    // update chord info
    get_chord(true)
    mgraphics.redraw()
  }
}

/*function prev(){
  post(tones.lowest.pitch,strings.peek(1,tones.lowest.string),tones.scale.keys[(tones.scale.keys.indexOf(strings.peek(1,tones.lowest.string)+tones.strings.open[tones.lowest.string])+12-1) % 12],tones.lowest.string,'\n')
}

// function harmonic(dir){}
*/

function transpose(p){
  if (typeof p === "number") tones.transposition = p
  else if (p == "+" || p == "inc") {p = 1; tones.transposition = p}
  else if (p == "-" || p == "dec") {p = -1; tones.transposition = p}
  for(q=0;q<model.num_strings;q++){
    var pitch = strings.peek(1,q)
    if (pitch !== -1) strings.poke(1,q,pitch+p)
  }
  refresh()
  get_chord()
}

function set_scale(){
  if (arguments) {
    var sc = arrayfromargs(arguments)
    if (sc.length == 1 && typeof sc[0] === "string") {
      if (Object.keys(cof).indexOf(sc[0]) !== -1) tones.scale.keys = cof[sc[0]]
      else if (user_scales.getkeys() instanceof Array && user_scales.getkeys().indexOf(sc[0]) !== -1) tones.scale.keys = user_scales.get(sc[0])
      tones.scale.name = sc[0]
      calls.commands.mutate.description = "mutate chord within current scale ("+tones.scale.name+")"
    }
    else {
      tones.scale.keys = sc;
      calls.commands.mutate.description = "mutate chord within current scale"
      tones.scale.list.forEach(function(x,i){
        if (x.keys.length == tones.scale.keys.length) {
          for (t=0;t<tones.scale.keys.length;t++){
            if (x.keys[t] !== tones.scale.keys[t]) break;
            else if (t == tones.scale.keys.length-1) tones.scale.name = x.name
          }
        }
      })
    }
    find_tones()
    refresh()
  }
}

function set_root(r){
  if (r) {
    tones.lowest.pitch = r
    refresh()
  }
}

function set_range(l,h){
  if (h) {
    tones.fret_range = [l,h]
    refresh()
  }
}

function set_chord(c,p){
  var ch = (typeof c === "number") ? chords.names[c % chords.names.length] : c
  var st = strings.peek(1,tones.lowest.string)
  var new_chord = chords[ch].frets[tones.lowest.string].map(function(x){return (x === undefined) ? -1 : x + st})
  var new_chord_pitch = new_chord.map(function(x,i) { return (x == -1) ? -1 : (x + tones.strings.open[i]) % 12 })
  tones.chord.wrap = new_chord_pitch
  strings.poke(1,0,new_chord)
  tones.scale.keys = chords[ch].COF_scale
  // tones.lowest.pitch = tones.lowest.pitch
  refresh()
}

function bang(){
  get_chord()
  refresh()
}

function dictionary(u) {
  if (inlet == 0) {
    strings.poke(2,0,tones.strings.pitch)
    dict = new Dict(u)
    if (dict.contains("scale") && dict.get("scale") !== "*") tones.scale.keys = dict.get("scale")
    if (dict.contains("root") && dict.get("root") !== "*") tones.lowest.pitch = dict.get("root")
    if (dict.contains("chord") && dict.get("chord") !== "*") tones.chord.wrap = dict.get("chord")
    if (dict.contains("steps") && dict.get("steps") !== "*") seq = dict.get("steps")
    if (dict.contains("strings") && dict.get("strings") !== "*") strings.poke(1,0,dict.get("strings"))
    if (dict.contains("seq") && dict.get("seq") instanceof Dict && dict.get("seq").getkeys() !== null) {
      var seqs = dict.get("seq").getkeys()
      for (s=0;s<seqs.length;s++) {
        seq_strings.poke(s+1,0,dict.get("seq::"+seqs[s]))
      }
    }
    find_tones()
    outlet(0,"dictionary",dict.name)
    refresh()
  }
  else if (inlet == 1) {
    scales = new Dict(u)
    setup_scales()
    refresh()
  }
}

function get_chord(skip){
  if (!skip) tones.lowest.string = -1
  for (c=0;c<model.num_strings;c++){
    tones.chord.wrap[c] = strings.peek(1,c)
    if (tones.chord.wrap[c] !== -1) {
      tones.chord.wrap[c] += strings.peek(2,c)
      tones.chord.abs[c] = tones.chord.wrap[c]
      tones.chord.wrap[c] %= 12
      if (!skip && (tones.lowest.string > c || tones.lowest.string == -1)) tones.lowest = {
        string: c,
        pitch: tones.chord.wrap[c]
      }
      for (n=0;n<model.frets*model.num_strings;n+=12){
        var pos = n+tones.chord.wrap[c]
        tones.chord.index[pos] = pos-tones.strings.open[c] + 12
      }
    }
    else tones.chord.abs[c] = -1
  }
  var jumps = Math.ceil(model.frets/12)
  tones.equivalents = new Array(model.num_strings)
  for (t=0;t<model.num_strings;t++){
    tones.equivalents[t] = []
    for (j=0;j<jumps;j++){
      tones.equivalents[t][j] = j*12 + ((tones.lowest.pitch + 36 - tones.strings.pitch[t]) % 12)
    }
  }
  outlet(0,"chord",tones.chord.wrap)
}

function set_step(s){
  step = s
  if (attrs.sequence) refresh()
}

function save_scale(n){
  if (n) {
    user_scales.replace(n,tones.scale.keys)
    // user_scales.writeagain()
    messnamed("git_to.user.scales","writeagain")
    // dictionary(user_scales.name)
  }
}

function shift_thirds(){
  shift_tones(3,4)
}

function shift_sixths(){
  shift_tones(8,9)
}

function shift(){
  shift_thirds()
  shift_sixths()
}

shift_tones.local = 1
function shift_tones(s,l){
  var small = tones.scale.keys.indexOf(s) > -1
  var large = tones.scale.keys.indexOf(l) > -1
  var choice = (small && large) ? ((decide()) ? -1 : 1) : (small ? -1 : (large ? 1 : 0) )
  var tone_pos = strings.peek(1,0,6)
  tone_pos.forEach(function(pos,string){
    if (pos > -1) {
      var s_pos = tones.strings.meta[string].offsets[pos]
      if (choice < 0 && s_pos == s) {
        strings.poke(1,string,pos+1)
        tones.scale.keys[tones.scale.keys.indexOf(s)] = l
      }
      else if (choice > 0 && s_pos == l) {
        strings.poke(1,string,pos-1)
        tones.scale.keys[tones.scale.keys.indexOf(l)] = s
      }
    }
  })
  find_tones()
  refresh()
}

function alter_sequence(n,b){
  // n = number of changes
  // b = switch another in return (keep number strikes unchanged)
  var coords = new Array(n)
  // var offset = [Math.floor(Math.random()*seq),Math.floor(Math.random()*model.num_strings))]
  var steps = {
    on: [],
    off: [],
    alterations: n ? n : 1,
    maintain: (b !== undefined) ? b !== 0 : 0
  }

  if (!steps.off.length) steps.maintain = 0

  for (s=0;s<model.num_strings;s++){
    // post(s)
    // post(seq_strings.peek(s+1,0,model.num_strings),'\n')
    seq_strings.peek(s+1,0,seq).forEach(function(x,i){
      if (x > 0) { steps.on.push([s+1,i]); }
      else steps.off.push([s+1,i])
      // post(s,i)
    })
    // post("\n")
  }
  if (steps.on.length){
    // var index = 0 // WHILE LOOP
    var start_a = Math.floor(Math.random()*steps.on.length)
    for (s=0;s<Math.min(steps.alterations,steps.on.length);s++){
      var pos = (s + start_a) % steps.on.length
      if (steps.on[pos].length) {
        seq_strings.poke(steps.on[pos][0],steps.on[pos][1],0)
        steps.on[pos] = []
      }
      else s + Math.floor(Math.random()*steps.on.length)
    }
    var start_b = Math.floor(Math.random()*steps.off.length)
    for (s=0;s<Math.min(steps.alterations,steps.off.length);s++){
      var pos = (s + start_b) % steps.off.length
      if (steps.off[pos].length) {
        seq_strings.poke(steps.off[pos][0],steps.off[pos][1],1)
        steps.off[pos] = []
      }
      else s + Math.floor(Math.random()*steps.off.length)
    }
  }
}

// ———————————————————————————————————————————————— MGRAPHICS ————————————————————————————————————————————————

function paint(){
  var size = mgraphics.size
  var begin = 0.05
  var end = 0.04
  var info_size = 0.5
  model.end = size[0] - (size[0]*end)
  model.begin = size[0]*begin
  model.mensuration = size[0] * (1-begin-end)
  model.height = size[1] * (1-info_size)
  model.margin = model.height*0.15
  var index = 0
  with(mgraphics){
    translate(model.begin,0)
    // ———————————————————————————————————————————————— BG DESIGN
    set_source_rgba(color.wood)
    rectangle(-model.begin,0,size)
    fill_with_alpha(0.1)
    set_source_rgba(color.wood)
    rectangle(0,model.margin*0.8,model.mensuration,model.height-(1.6*model.margin))
    fill_with_alpha(0.3)
    set_source_rgba(0,0,0,1)
    arc(model.mensuration*0.85,model.height*0.5,Math.min(model.height*0.48,model.mensuration*0.125),0,TWOPI)
    fill_with_alpha(0.5)
    set_source_rgba(color.fret)

    // ———————————————————————————————————————————————— FRETS
    for (f = 0; f <= model.frets; f++) {
      identity_matrix()
      translate(model.begin,0)
      var circ_coeff = (model.frets-f)*0.3/model.frets + 0.7
      var width = model.m[f-1] - (model.m[f-1]/model.mensur_coeff)
      if (!f) {
        model.m[0] = 0
        model.positions[0] = 0
      }
      else {
        model.m[1] = model.mensuration/model.mensur_coeff
        model.positions[1] = model.m[1] - (model.m[1]/2)
        if (f > 1) {
          model.m[f] = model.m[1] + width
          model.positions[f] = model.m[f] - ((model.m[f]-model.m[f-1])/2)
        }
      }
      set_line_width(1)
      move_to(model.m[f],model.margin)
      line_to(model.m[f],model.height-model.margin)
      stroke()
      // ———————————————————————————————————————————————— SCALE TONES
      var spread = (model.height - (3 * model.margin))
      var start = model.margin * 1.5
      var dist = spread / 5
      var draw_fret = f >= tones.fret_range[0] && f <= tones.fret_range[1]
      if (draw_fret){
        for (s = 5; s >= 0; s--){
          var offset = (f+1) % 12
          var tone = (offset+tones.strings.open[5-s]) % 12
          var pos = model.positions[f]
          var tone_check = (tone+11-tones.lowest.pitch) % 12
          var csm_root = -1
          if (attrs.constrain_scale_markers.val) {
            for (var p=tones.lowest.string;p<model.num_strings;p++){
              var fret = strings.peek(1,p)
              if (fret > 0) {
                csm_root = fret
                break
              }
            }
          }
          // var csm_root = attrs.constrain_scale_markers.val ? strings.peek(1,tones.lowest.string) : -1

          if (mouse.ident){
            if (tones.chord.abs.indexOf(tones.strings.pitch[5-s]+f) !== -1) {
              arc(pos,dist*s+start,model.margin*0.25*circ_coeff,0,TWOPI)
              set_source_rgba(color.open)
              fill_preserve_with_alpha(0.7)
              set_source_rgba(color.correct)
              set_line_width(2)
              stroke_with_alpha(0.66)
            }
          }
          else if (mouse.equiv){
            if (tones.chord.index.indexOf(index) !== -1) {
              arc(pos,dist*s+start,model.margin*0.25*circ_coeff,0,TWOPI)
              set_source_rgba(color.open)
              fill_preserve_with_alpha(0.7)
              set_source_rgba(color.correct)
              set_line_width(2)
              stroke_with_alpha(0.66)
            }
          }
          else {
            arc(pos,dist*s+start,model.margin*0.25*circ_coeff,0,TWOPI)
            if (tones.scale.keys.indexOf(tone_check) !== -1 && (csm_root == -1 || (f > csm_root-2 && f < csm_root + 4))) {
              if (in_fill(translated_pos(mouse.pos))) {
                set_source_rgba(color.open)
                if (mouse.click) set_tone(f,5-s,index)
              }
              else {
                if (attrs.roots.val && tone_check == 0) set_source_rgba(fill_if_tone(f,5-s,color.string,color.correct))
                else set_source_rgba(fill_if_tone(f,5-s,color.fret,color.correct))
              }
              fill_with_alpha(0.7)
            }
            else if (strings.peek(1,5-s) == f){
              if (in_fill(translated_pos(mouse.pos))) {
                set_source_rgba(color.open)
                if (mouse.click) set_tone(f,5-s,index)
              }
              else set_source_rgba(color.correct)
              set_line_width(2)
              stroke_with_alpha(0.7)
            }
            else if (in_fill(translated_pos(mouse.pos))){
              if (mouse.click) set_tone(f,5-s,index)
              set_source_rgba(color.open)
              set_line_width(2)
              stroke_with_alpha(0.7)
            }
            else {
              set_source_rgba(color.fret)
              set_line_width(1)
              stroke_with_alpha(0.2)
            }
            // if (tones.equivalents[5-s] && tones.equivalents[5-s].indexOf(f) !== -1) {
            //   arc(pos,dist*s+start,model.margin*0.25*circ_coeff,0,TWOPI)
            //   set_source_rgba(color.equiv)
            //   set_line_width(2)
            //   stroke_with_alpha(0.66)
            // }
          }
          index++
        }
        // ———————————————————————————————————————————————— MARKERS
        set_source_rgba(color.fret)
        if (tones.strings.markers.indexOf((f-1)%12) !== -1) {
          arc(pos,model.height-(model.margin/2),model.margin*0.125,0,TWOPI)
          translate(0,-model.height+model.margin)
          arc(pos,model.height-(model.margin/2),model.margin*0.125,0,TWOPI)
          fill()
        }
        // ———————————————————————————————————————————————— OCTAVE MARKER
        else if (f == 12) {
          arc(pos-(model.margin*0.15),model.height-(model.margin/2),model.margin*0.125,0,TWOPI)
          arc(pos+(model.margin*0.15),model.height-(model.margin/2),model.margin*0.125,0,TWOPI)
          translate(0,-model.height+model.margin)
          fill()
          arc(pos-(model.margin*0.15),model.height-(model.margin/2),model.margin*0.125,0,TWOPI)
          arc(pos+(model.margin*0.15),model.height-(model.margin/2),model.margin*0.125,0,TWOPI)
          fill()
        }

        // // ———————————————————————————————————————————————— FRET RANGE
        // tones.ret_range = [0,7]
        // if (f == tones.fret_range[0]) post(pos)
        // else if (f == tones.fret_range[1x]) post(pos)
      }
    }



    // ———————————————————————————————————————————————— FRETBOARD
    identity_matrix()
    translate(model.begin,0)
    rectangle(0,model.margin,model.m[model.frets],model.height-(2*model.margin))
    stroke_with_alpha(0.5)
    move_to(0,model.margin)
    line_to(0,model.height-model.margin)
    set_line_width(5)
    set_source_rgba(color.fret)
    stroke()
    // ———————————————————————————————————————————————— SEQUENCE
    if (attrs.sequence.val){
      var seq_spread = 0.18
      var seq_start = model.mensuration*0.85-(model.mensuration*0.5*seq_spread)
      translate(seq_start,start-(dist/2))
      var seq_width = model.mensuration*seq_spread
      var step_width = seq_width/seq
      rectangle(0,0,seq_width,spread*1.2)
      set_line_width(2)
      set_source_rgba(color.string)
      stroke_with_alpha(0.7)
      for (b=0;b<model.num_strings;b++){
        identity_matrix()
        translate(model.begin,0)
        translate(seq_start+(step_width/2),start)
        set_line_width(1)
        for (p=0;p<seq;p++){
          arc(p*step_width,b*dist,(Math.min(step_width,dist))/2.5,0,TWOPI)
          var this_step = seq_strings.peek(b+1,p)
          var active = p == step
          {
            if (in_fill(translated_pos(mouse.pos))) {
              set_source_rgba(color.open)
              fill_with_alpha(Math.max(active,0.8))
              if (mouse.click) {
                seq_strings.poke(b+1,p,1-this_step)
                mouse.click = 0
                update_dict()
              }
            }
            else if (this_step) {
              set_source_rgba(color.open)
              fill_with_alpha(Math.max(active,0.3))
            }
            else {
              set_source_rgba(color.open)
              stroke_with_alpha(Math.max(active*0.5,0.2))
            }
          }
        }
      }
    }
  // ———————————————————————————————————————————————— STRINGS
  identity_matrix()
  translate(model.begin,0)
    for (s = 0; s < model.num_strings; s++){
      var pos = start+dist*s
      move_to(0,pos)
      line_to(model.mensuration,pos)
      if (attrs.sequence && step !== -1) set_line_width((s*0.4+2)*(seq_strings.peek(s+1,step)+1))
      else set_line_width(s*0.4+2)
      var active = []
      var tone = (offset+tones.strings.open[5-s]) % 12
      var tone_check = (tone+11-tones.lowest.pitch) % 12
      if (tones.scale.keys.indexOf((tones.strings.open[5-s]+12-tones.lowest.pitch) % 12) == -1 && strings.peek(1,5-s) == -1) {
        set_source_rgba(color.wrong)
        stroke_with_alpha(0.66)
        active[s] = 3
      }
      else if (strings.peek(1,5-s) == -1) {
        set_source_rgba(color.fret)
        stroke_with_alpha(0.4)
        active[s] = 0
      }
      else if (tone_check == tones.lowest.pitch) {
        set_source_rgba(color.string)
        stroke_with_alpha(0.66)
        active[s] = 2
      }
      else {
        set_source_rgba(color.open)
        stroke_with_alpha(0.66)
        active[s] = 1
      }
      // ———————————————————————————————————————————————— STRING NAMES
      font.pos_left = (-model.begin-font.size)*0.5
      font.pos_right = model.end-model.begin+(font.size/2)
      move_to(font.pos_left,pos+(font.size/3))
      set_font_size(font.size)
      select_font_face(font.name)
      show_text(tones.strings.names[5-s])
      fill()
      if (active[s] && tones.chord.wrap[5-s] !== -1){
        var pitch = tones.chord.wrap[5-s]
        move_to(font.pos_right,pos+(font.size/3))
        show_text(tones.names[pitch])
        fill()
      }
    }
    stroke_with_alpha(0.5)

    // ———————————————————————————————————————————————— INFO BOX

    info.h_pos = model.begin
    info.margin = model.margin/2
    info.height = size[1]-model.height-(info.margin*3)
    info.v_pos = model.height
    info.width = model.mensuration
    identity_matrix()
    translate(info.h_pos,info.v_pos)
    set_source_rgba(color.fret)
    rectangle(0,0,info.width,info.height)
    set_line_width(1)
    stroke()
    translate(0,info.width * 0.02)
    move_to(font.pos_left*1.3,font.size)
    show_text("info:")
    fill()

    // ———————————————————————————————————————————————— COMPATIBLE KEYS & SCALES

    var scale_redux = []
    tones.chord.wrap.forEach(function(x,i){
      if (x !== -1) {
        var pitch_redux = (x - tones.lowest.pitch + 12) % 12
        if (scale_redux.indexOf(pitch_redux) == -1) scale_redux.push(pitch_redux)
      }
    })

    // if (scale_redux.length) tones.scale.keys = scale_redux
    // tones.lowest.pitch = tones.lowest.pitch
    var num_keys = scale_redux.length

    if (num_keys) {
      if (num_keys == 1) {
        move_to(font.size,font.size)
        show_text(tones.names[tones.lowest.pitch]+": <all>")
        fill()
      }
      else {
        var scr_names = []
        scale_redux.forEach(function(x,i){
          scr_names[i] = tones.names[(scale_redux[i] + tones.lowest.pitch) % 12]
        })
        scales.cof = Object.keys(cof)
        scales.user = (user_scales.getkeys() instanceof Array) ? user_scales.getkeys() : [user_scales.getkeys()]
        scales.user = scales.cof.concat(scales.user)
        scales.count = scales.user.length
        scales.equiv = []
        var COF_scales = {
          names: [],
          indices: [],
          semitones: [],
          equivs: {}
        }
        if (scales.cof !== null){
          for (sc=0;sc<scales.count;sc++){
              var valid = 0
              var this_scale = (sc < 7) ? cof[scales.cof[sc]] : user_scales.get(scales.user[sc])
              for (p=0;p<scale_redux.length;p++){
                var px = scale_redux[p]
                var in_scale = this_scale.indexOf(px) !== -1
                if (in_scale) valid = 1
                if (!in_scale) {
                  valid = 0;
                  break;
                }
              }
              if (valid) {
                if (sc < 7) {
                  COF_scales.names.push(scales.cof[sc])
                  COF_scales.indices.push(sc)
                  COF_scales.semitones.push(cof[scales.cof[sc]])
                }
                else scales.equiv.push(scales.user[sc])
              }
          }
          scale_redux.forEach(function(x,i){
            for (j=0;j<COF_scales.indices.length;j++){
              var pitch = (x+tones.lowest.pitch)%12
              var tone_name = tones.names[pitch]
              var compat_scale = scales.cof[(COF_scales.semitones[j].indexOf(x)+COF_scales.indices[j])%7]
              if (COF_scales.equivs[tone_name] instanceof Array) COF_scales.equivs[tone_name].push(compat_scale)
              else COF_scales.equivs[tone_name] = [compat_scale]
            }
          })
          var all_pitches = Object.keys(COF_scales.equivs)
          for (e=0;e<all_pitches.length;e++){
            if (in_fill(user_to_device(info.h_pos+font.size,info.v_pos+font.size*(e+1)))) post("IN_FILL\n")
            move_to(font.size,font.size*(e+1))
            if (!e && scales.equiv.length) show_text(all_pitches[e]+": "+COF_scales.equivs[all_pitches[e]].toString().replace(/\,/g," • ")+" | "+scales.equiv.toString().replace(/\s/g,"-").replace(/\,/g," • "))
            else show_text(all_pitches[e]+": "+COF_scales.equivs[all_pitches[e]].toString().replace(/\,/g," • "))
            fill()
          }
        }
      }
    }

    // ———————————————————————————————————————————————— KSLIDER

    kslider.h_pos = info.h_pos + (info.width * 0.8)
    kslider.margin = info.width * 0.02
    kslider.height = info.height * 0.5
    kslider.v_pos = info.v_pos + kslider.margin
    kslider.width = info.width * 0.2 - kslider.margin
    kslider.keys.white.width = kslider.width/7
    kslider.keys.black.width = kslider.keys.white.width*0.66
    kslider.keys.black.height = kslider.height*0.66


    // ———————— KSLIDER NOTES

    identity_matrix()
    translate(kslider.h_pos,kslider.v_pos)
    rectangle(0,0,kslider.width,kslider.height)
    set_source_rgba(color.fret)
    set_line_width(kslider.line_width)
    stroke()




    for (k=0;k<7;k++) {
      rectangle(k*kslider.keys.white.width,0,kslider.keys.white.width,kslider.height)
      var tone = (kslider.keys.white.indices[k]+12-tones.lowest.pitch) % 12
      var mpos = translated_pos(mouse.pos)
      var hover = 0
      if (k == 0 || k == 3) hover = mpos[1] > kslider.keys.black.height || mpos[0] < ((k+1)*kslider.keys.white.width - (kslider.keys.white.width*0.33))
      else if (k == 2 || k == 6) hover = mpos[1] > kslider.keys.black.height || mpos[0] > (k*kslider.keys.white.width + (kslider.keys.white.width*0.33))
      else hover = mpos[1] > kslider.keys.black.height || (mpos[0] > (k*kslider.keys.white.width + (kslider.keys.white.width*0.33)) && mpos[0] < ((k+1)*kslider.keys.white.width - (kslider.keys.white.width*0.33)))

      if (hover && in_fill(mpos)) {
        if (tones.scale.keys.indexOf(tone) !== -1 || !attrs.root_shift_mode.val) set_source_rgba(color.correct)
        else set_source_rgba(color.deviate)
        fill_preserve()
        if (mouse.click) shift_root(tone)
      }
      else if (scale_redux.indexOf(tone) !== -1) {
        if (tones.lowest.pitch == kslider.keys.white.indices[k]) set_source_rgba(color.string)
        else set_source_rgba(color.open)
        fill_preserve_with_alpha(0.8)
      }
      set_source_rgba(color.fret)
      stroke()
    }

    translate(kslider.keys.white.width-(kslider.keys.black.width*0.5),0)

    for (k=0;k<6;k++) {
      if (k == 2) k = 3
      rectangle(k*kslider.keys.white.width,0,kslider.keys.black.width,kslider.keys.black.height)
      var tone = (kslider.keys.black.indices[k]+12-tones.lowest.pitch) % 12
      if (in_fill(translated_pos(mouse.pos))) {
        if (tones.scale.keys.indexOf(tone) !== -1 || !attrs.root_shift_mode.val) set_source_rgba(color.correct)
        else set_source_rgba(color.deviate)
        fill_preserve()
        if (mouse.click) shift_root(tone)
      }
      else {
        set_source_rgba(color.fret)
        fill_preserve()
        if (scale_redux.indexOf(tone) !== -1) {
          if (tones.lowest.pitch == kslider.keys.black.indices[k]) set_source_rgba(color.string)
          else set_source_rgba(color.open)
          fill_preserve_with_alpha(0.7)
        }
      }
      set_source_rgba(color.fret)
      stroke()
    }

    identity_matrix()
    translate(kslider.h_pos,kslider.v_pos)
    move_to(0,kslider.height+(font.size*1.5))
    show_text(tones.names[tones.lowest.pitch]+" "+tones.scale.name)
    set_source_rgba(color.fret)
    fill()

    // // ——————— KSLIDER ROOT SELECT
    //
    // identity_matrix()
    // translate(kslider.h_pos-kslider.width-(kslider.width*0.15),kslider.v_pos)
    // rectangle(0,0,kslider.width,kslider.height)
    // set_source_rgba(color.fret)
    // set_line_width(kslider.line_width)
    // stroke()
    //
    // for (k=0;k<7;k++) {
    //   rectangle(k*kslider.keys.white.width,0,kslider.keys.white.width,kslider.height)
    //   if (scale_redux.indexOf((kslider.keys.white.indices[k]+12-tones.lowest.pitch) % 12) !== -1) {
    //     if (tones.lowest.pitch == kslider.keys.white.indices[k]) set_source_rgba(color.string)
    //     else set_source_rgba(color.open)
    //     fill_preserve_with_alpha(0.8)
    //   }
    //   set_source_rgba(color.fret)
    //   stroke()
    // }
    //
    // translate(kslider.keys.white.width-(kslider.keys.black.width*0.5),0)
    //
    // for (k=0;k<6;k++) {
    //   if (k == 2) k = 3
    //
    //   rectangle(k*kslider.keys.white.width,0,kslider.keys.black.width,kslider.height*0.66)
    //   set_source_rgba(color.fret)
    //   fill_preserve()
    //   if (scale_redux.indexOf((kslider.keys.black.indices[k]+12-tones.lowest.pitch) % 12) !== -1) {
    //     if (tones.lowest.pitch == kslider.keys.black.indices[k]) set_source_rgba(color.string)
    //     else set_source_rgba(color.open)
    //     fill_preserve_with_alpha(0.7)
    //   }
    //   set_source_rgba(color.fret)
    //   stroke()
    // }


    // ———————————————————————————————————————— HINDUSTHANI SWARS

    // identity_matrix()
    // translate(200,200)
    // translate(ui.area.hp+font.size,ui.area.vp+ui.area.h-font.size)
    move_to(0,kslider.height+(font.size*3))
    set_source_rgba(color.fret)
    // post(tones.scale.keys,tones.scale.swars,'\n')
    var swars = ""
    tones.scale.keys.forEach(function(x,i){
      swars += tones.scale.swars[x]
      swars += " "
    })
    show_text(swars)
    fill()

    // ———————————————————————————————————————— ATTRIBUTE SVG RENDER

    ui.area.hp = info.h_pos
    ui.area.vp = info.v_pos + info.height + (info.margin*0.5)
    ui.area.w = info.h_pos * 0.66
    ui.area.h = info.height - (font.size*2)
    ui.logos.size = ui.area.w * 0.66
    ui.logos.offset = ui.area.w * 0.167
    ui.desc_end = info.width

    var logos = Object.keys(ui.logos.svg)
    var desc = ""

    for (svg=0;svg<logos.length;svg++){
      identity_matrix()
      translate(ui.area.w * svg + ui.area.hp,ui.area.vp)

      var logo_name = logos[svg]
      var logo = ui.logos.svg[logo_name]
      var attr = attrs[logo_name]
      var logo_size = logo.size.map(function(x){return ui.logos.size/x})

      translate(ui.logos.offset,ui.logos.offset)
      rectangle(0,0,ui.logos.size,ui.logos.size)
      set_source_rgba([0,0,0,0])
      var hover = in_fill(translated_pos(mouse.pos))
      if (hover) {
        logo.mapcolor([0.,0.,0.,1.],color.string)
        if (mouse.click) {
          attr.val = !attr.val
          mouse.click = 0
        }
        desc = attr.description+" (@"+logo_name+")"
      }
      else if (attr.val) logo.mapcolor([0.,0.,0.,1.],color.open)
      else logo.mapcolor([0.,0.,0.,1.],color.fret)
      scale(logo_size);
      svg_render(logo);
      fill()
      if (svg == logos.length-1) {
        calls.area.hp = ui.area.w * (svg + 2) + ui.area.hp
        calls.area.break = ui.area.w * (svg + 1.5) + ui.area.hp
      }
      // calls.area.hp = get_current_point()
      // post(get_current_point())
    }

    if (desc.length) {
      identity_matrix()
      // scale(logo_size.map(function(x){return 1/x}));
      var text_width = text_measure(desc)[0]
      move_to(ui.area.hp+ui.desc_end-text_width,ui.area.vp+(font.size*1.5))
      // move_to(0,400)
      set_source_rgba(color.fret)
      show_text(desc)
      fill()
    }
    // SVG RENDER

    // ———————————————————————————————————————— COMMANDS SVG RENDER


    // calls.area.hp = info.h_pos
    calls.area.vp = info.v_pos + info.height + (info.margin*0.5)
    calls.area.w = info.h_pos * 0.66
    calls.area.logo_offset = calls.area.w * 0.167
    // calls.area.h = info.height - (font.size*2)

    // ————— LINE BREAK

    identity_matrix()
    move_to(calls.area.break,calls.area.vp+(font.size*0.25))
    rel_line_to(0,ui.logos.size+(font.size*0.25))
    set_line_width(2)
    set_source_rgba(color.fret)
    stroke_with_alpha(0.6)

    var commands = Object.keys(calls.commands)
    var desc = ""

    for (svg=0;svg<commands.length;svg++){
      identity_matrix()
      translate(calls.area.w * svg + calls.area.hp,calls.area.vp)

      var command_name = commands[svg]
      var logo = calls.commands[command_name].svg
      var alpha = 1
      // var svgscale = calls.commands.size
      var logo_size = logo.size.map(function(x){return ui.logos.size/x})

      translate(calls.area.logo_offset,calls.area.logo_offset)
      rectangle(0,0,ui.logos.size,ui.logos.size)
      set_source_rgba([0,0,0,0])
      var hover = in_fill(translated_pos(mouse.pos))
      if (hover) {
        logo.mapcolor([0.,0.,0.,1.],calls.commands[command_name].color)
        if (mouse.click) {
          mouse.click = 0
          eval(calls.commands[command_name].func)
        }
        desc = calls.commands[command_name].description
      }
      else logo.mapcolor([0.,0.,0.,1.],color.fret)
      scale(logo_size);
      svg_render(logo);
      fill()
    }

    if (desc.length) {
      identity_matrix()
      // scale(command_size.map(function(x){return 1/x}));
      var text_width = text_measure(desc)[0]
      move_to(ui.area.hp+ui.desc_end-text_width,calls.area.vp+(font.size*1.5))
      // move_to(0,400)
      set_source_rgba(color.fret)
      show_text(desc)
      fill()
    }

  } // MGRPHICS

} // PAINT

// ———————————————————————————————————————————————— FUNCTIONS ————————————————————————————————————————————————

find_tones.local = 1
function find_tones(){
  var scale = tones.scale.keys
  var frets = model.frets
  var root = tones.lowest.pitch
  for (var s = model.num_strings-1; s >= 0; s--){
    var string = new String()
    string.index = s
    string.base = tones.strings.open[s]
    for (var f=0;f<frets;f++){
      string.keys[f] = (f+string.base+12) % 12
      string.indices[f] = scale.indexOf((string.keys[f]-root+12) % 12)
      string.frets[f] = string.indices[f] > -1
      string.offsets[f] = (string.indices[f]>-1) ? scale[string.indices[f]] : -1
    }
    tones.strings.meta[s] = string
  }
}

String.local = 1
function String(){
  this.frets = []
  this.keys = []
  this.indices = []
  this.offsets = []
}

change_base.local = 1
function change_base(string){
  var diff = 0
  var offset = 0
  for (d=0;d<10;d++){
    var pos = Math.floor(Math.random() * 12)
    var index = tones.strings.meta[string].indices[pos]
    if (index > -1) {
      offset = tones.strings.meta[string].indices[pos]
      tones.lowest.pitch = tones.strings.meta[string].keys[pos]
      tones.lowest.string = string
      strings.poke(1,string,pos)
      if (string > 0) {
        for (t=0;t<string;t++) {
          var fret = (decide() && tones.strings.meta[t].keys.indexOf(tones.strings.open[t]) !== -1)
            ? 0
            : -1
          strings.poke(1,t,fret)
          // strings.poke(1,t,-1)
        }
      }
      break
    }
  }
  var revert = tones.scale.keys[offset]
  var scale_shift = tones.scale.keys.map(function(x,i){
    var shift = tones.scale.keys[(i+offset)%tones.scale.keys.length]
    shift -= revert
    shift += 12
    shift %= 12
    return shift
  })

  tones.scale.keys = scale_shift
}

set_tone.local = 1
function set_tone(fret,string,index){
  var pitch = strings.peek(1,string)
  if (pitch == -1 || pitch !== fret)
  {
    strings.poke(1,string,fret)
    tones.chord.wrap[string] = fret + tones.strings.open[string]
    tones.chord.abs[string] = tones.chord.wrap[string]
    tones.chord.wrap[string] %= 12
  }
  else
  {
    strings.poke(1,string,-1)
    tones.chord.abs[string] = -1
    tones.chord.wrap[string] = -1
  }
  mouse.click = 0
  get_chord()
  update_dict()
}

translated_pos.local = 1;
function translated_pos(pos){
  return pos.map(function(x,i){return x+mgraphics.device_to_user(pos)[i]})
}

fill_if_tone.local = 1;
function fill_if_tone(tone,string,c1,c2){
  if (strings.peek(1,string) == tone) return c2;
  else return c1
}

decide.local = 1;
function decide(){
  return Math.random() < 0.5
}

update_dict.local = 1
function update_dict(){
  dict.replace("scale",tones.scale.keys)
  dict.replace("root",tones.lowest.pitch)
  dict.replace("chord",tones.chord.wrap)
  dict.replace("steps",seq)
  dict.replace("strings",strings.peek(1,0,6).map(function(x){return Math.floor(x)}))
  for (s=0;s<model.num_strings;s++){
    dict.replace("seq::"+tones.strings.names[s],seq_strings.peek(s+1,0,seq).map(function(x){return Math.floor(x)}))
  }
  outlet(0,"dictionary",dict.name)
}

setup_scales.local = 1
function setup_scales(){
  tones.scale.list = []
  outlet(0,"scales", "clear")
  Object.keys(cof).forEach(function(x,i){
    outlet(0,"scales","append",x)
    var scale = new Scale(x,cof[x],1)
    tones.scale.list.push(scale)
  })
  outlet(0,"scales",user_scales.getkeys().forEach(function(x,i){
    outlet(0,"scales","append",x)
    var scale = new Scale(x,user_scales.get(x))
    tones.scale.list.push(scale)
  }))
}

find_scale_names.local = 1
function find_scale_names(){
  var matches = []
  tones.scale.list.forEach(function(x,i){
    var keys = x.keys
    var num_keys = keys.length
    var match = 1
    for (k=0;k<num_keys;k++){
      if (keys[k] !== tones.scale.keys[k]) {
        match = 0
        break
      }
    }
    if (match) matches.push(x.name)
  })
  if (matches.length) return matches
  else return ["<unknown>"]
}

function shift_root(tone){
  if (tone !== tones.lowest.pitch){
    post(tone,tones.lowest.pitch,'\n')
    if (attrs.root_shift_mode.val){
      tones.lowest.pitch += tone
      tones.lowest.pitch %= 12
      var new_fret = tones.strings.meta[tones.lowest.string].keys.indexOf(tones.lowest.pitch)
      strings.poke(1,tones.lowest.string,new_fret)
      strings.peek(1,0,6).forEach(function(fret,string){
        var dir = tone > 6
        var fret_new = (!dir) ? fret+(tone%12) % 12 : fret+(tone%12) % 12 - 12
        if (string !== tones.lowest.string && fret > -1) {
          fret_new = find_nearest_fret(tones.strings.meta[string].frets,fret_new,dir)
          strings.poke(1,string,fret_new)
        }
      })
    }
    else if (tone < 7) transpose(tone % 12)
    else transpose(tone % 12 - 12)
    find_tones()
    refresh()
  }
}

function find_nearest_fret(sfrets,fret,dir){
  if (sfrets[fret]) return fret % 12
  else if (dir) find_nearest_fret(sfrets,(fret+1)%12,dir)
  else find_nearest_fret(sfrets,(fret+11)%12,dir)
}

init.local = 1
function init(){
  calls.commands.clear.func
  strings.poke(2,0,tones.strings.pitch)
  tones.scale.list = []
  tones.lowest.pitch = tones.strings.pitch[tones.lowest.string]
  find_tones()
  get_chord()
  messnamed("git_jsui.init","bang")
  setup_scales()
  mgraphics.redraw()
  // shift_thirds()
}

print.local = 1
function print(){
  post("the.git.ui:",arrayfromargs(arguments),'\n')
}

// ———————————————————————————————————————————————— INIT ————————————————————————————————————————————————

init()
