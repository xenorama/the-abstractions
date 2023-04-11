//
// xen.kslider.js
// xenorama's keyboard ui to play almost any available scl-Scala file with comprehensive mappings
//
// dependent on [th.scala] by Timo Hoogland (c) 2020, www.timohoogland.com, MIT License
// map scalar tones to a MIDI keyboard in different layouts
// expects an incoming dictionary (JSON) compiled by [th.scala]
// in conjunction with the [xen.kbstof] will yield the corresponding frequency and
// allows for complex MPE handling with variable pitching and easing between tones
//
// written by Tim Georg Heinze (c) 2021, www.xenorama.com, MIT License
// dependent on [th.scala] by Timo Hoogland (c) 2020, www.timohoogland.com, MIT License
//

// ----------------------- TODO -----------------------

// if range does not match 1200 some keys are not mapped correctly
// hence, a strategy is to be devised as to how these scales should be handled (ie.e. scaling down to 1200 cents for kb play)
// mode 1 (channel 2) does not yet accomplish correct allocations for variation mappings



inlets = 2;
outlets = 3;
autowatch = 1;

// debug mode
// max.clearmaxwindow();

// comments when hovering over inlets in patcher
setinletassist(0, 'dictionary from 2nd outlet of xen.scala, Key value received');
setinletassist(1, 'Velocity value received');
setoutletassist(0, 'Outputs key value changed');
setoutletassist(1, 'Outputs scala tone as MIDI key');
setoutletassist(2, 'Velocity from mouse height on key or inlet 2');

// ----------------------- TODO -----------------------

// polyphonic support
// debug velocity not scaling in specific areas
// include variations map for every layout to allocate variations per velocity correctly (remains unchanged during layout/mapping-change

// ----------------------- JSUI -----------------------

// initialize mgraphics
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// update jsui box information
box.rect[2] = box.rect[0] + 350;
box.rect[3] = box.rect[1] + 50;
var width = (this.box.rect[2] - this.box.rect[0]);
var height = this.box.rect[3] - this.box.rect[1];

// ----------------------- VARIABLES -----------------------

var layouts = new Dict(jsarguments[1]+'_mvstf'); // expecting the named dictionary from xen.scala using the suffix _mvstf («midi via scale to frequency»)

// INITIAL KEYBOARD DISPLAY SIZE
var v_offset = 0.2; // size of header, will adjust keyboard size alike
var octaves_displayed = 3; // number of octaves to cover by kslider
var numkeys = octaves_displayed*12; // initial number of keys to display, use multiples of 12
var keycoeffmap = [0,1,1,2,2,3,4,4,5,5,6,6]; // offset keyboard only with white keys, deprecated since only full octaves are supported
var keycoeff = octaves_displayed*7; // multiples of 7 (pertaining to white keys in octave)
var o_offset = 60; // root key of focused octave, use mutiples of 12

// SET KEY SIZES, ALSO FOR SCALING UI
var ivory = {
	width: width/keycoeff,
	height: 1-v_offset,
	map: [0,2,4,5,7,9,11,12]
};
var ebony = {
	width: width/numkeys,
	height: 0.33,
	map: [1,3,6,8,10]
};
var widthcoeff = 12/numkeys;
var epos = 0.1*widthcoeff*width;
var y_pos = height*v_offset;
var y_iscale = height-y_pos;
var y_escale = y_iscale*ebony.height*2;

// INITIALISE INTERACTION AREAS
var keyAreas = {
	ivory: {
		h: [],
		v: ivory.height },
	ebony: {
		h: [],
		v: ebony.height },
	chrom: []
};

var veloAreas = [[]];

var key_areas = [0,1,0,1,0,0,1,0,1,0,1,0]; // white vs black keys

var color;
var autocolor = 1;
var env = new Patcher(this);

var fontname = 'Lato';

// INITIALISE KEYBOARD MAPPING, WILL BE OVERRIDDEN BY SCALA DICTIONARY
var description = ['(chromatic)']
var keynames = ['C','C#','D','D#','E','F','F#','G','G#','A','A#','B'];
var keycodes = ['zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven'];
var numtones = 12;
var center = 69;
var centRange = 1200;
var offset = center%12;

// KEEP TRACK OF KEYS AND OCTAVE
var keymode = 0; // mono / poly
var poly = {
	latest: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], // keys currently active, value = velocity
	map:[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], // keys part of mapping
	info: [0,0,0,0,0,0,0,0,0,0,0,0], // information about unmapped keys and which tone they assume or replicate
	cents: [0,1,2,3,4,5,6,7,8,9,10,11,12], // keys in current keyboard mapping layout of scala; reserved
	groups: [[0],[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11]], // reserved
	variations: [0,0,0,0,0,0,0,0,0,0,0,0], // number of found variations of a scalar tone per key
};

var groupmode = 0; // dictionary for key variations cannot be parsed yet, hence reserved
var ignoreUnmapped = 1; //key not allocated to tones will be ignored and unclickable
var showInfo = 1; // update scala info in header upon redraw
var velquant = 0; // reserved; to quantise velocity to variations if need be
var rootvaris = 1; // flag to allow variations on root key

var dictmap = ['nr','sr','nn', 'sp', 'sn','col']; // these correspond to the mapping modes 0-3, 'col' is not yet supported
var layout = 0; // initial mode is 'sp' (spread notes and replicate previous when unmapped)
var dictname; // wildcard
var complain = 1; // post error if scale's range is not 1200

var latest = { x:-1, y:-1 }; // represent mouse positions in box
var key = { latest: -1, octave: 0 }; // latest key and octave
var vel = { latest: 0.87 }; // normalised within jsui

// setAreas(); // specify key interaction areas for mouse clicks

// if scala context is provided as first argument (symbol) --> use it as dictionary name
// if(jsarguments[1]) dictionary(layouts);
 mgraphics.redraw();


var click = 0; // idle so far, to be used in poly mode



// ----------------------- PARSE AND DISTRIBUTE SCALA INFROMATION -----------------------

// INCOMING DICTIONARY FROM xen.scala CONTAINING ALL AVAILABLE MAPPINGS AND TONAL REFERENCES
// function dictionary(d){
// 	this.dictname = d;
// 	var layouts = new Dict(d);
// 	d.name = d;
// 	if(layouts.getkeys()){
// 		var dictstring = JSON.parse(layouts.stringify()); // access nested keygroups
// 		var keygroups = dictstring.glo.keygroups;
// 		var sublayout = layouts.getkeys()[this.layout+1];
// 			if (layouts.get(sublayout).get('map') !== undefined) {
// 				this.centRange = layouts.get('glo').get('range');
// 				if (centRange==0&&complain!==0) {
// 					error('[xen.kslider] this scala\'s range is',range,'cents and can thus not be mapped to proportional octaves across the keyboard. Use th.sslider instead to address individual tones of the scala. \n');
// 					complain = 0;
// 				}
// 				// else if (range===1200) {
// 				else if (centRange!==0) {
// 					cents = layouts.get(sublayout).get('cents');
// 					cmap = layouts.get(sublayout).get('map');
// 					varis = layouts.get(sublayout).get('vars');
// 					this.center = layouts.get('glo').get('offset'),
// 					this.offset = center%12;
// 					info = layouts.get(sublayout).get('info');
// 					this.description = layouts.get('glo').get('description');
// 					this.numtones = layouts.get('glo').get('size');
// 					for(m=0;m<numkeys;m++){
// 						n = (m+this.offset) % numkeys;
// 						this.poly.map[n] = cmap[m%12];
// 						this.poly.info[n] = info[m%12];
// 						this.poly.cents[n] = cents[m%12];
// 						this.poly.groups[n] = keygroups[m%12];
// 						if (this.layout<1) this.poly.variations[n] = varis[m%12]; // use variations for np and nn only, sp/sn reserved
// 						else this.poly.variations[n] = 1;
// 					}
// 					// post('all variations',this.poly.variations,'\n');
// 					complain = 1;
// 				}
// 			}
// 		mgraphics.redraw();
// 	}
// 	messnamed('mvstf_done','bang');
// }

// ----------------------- RENDER -----------------------

init.local = 1;
paint.local =1;
output.local = 1;

function init(){
  mgraphics.redraw();
}

var rounded = 8;
var tab_size = 90;
var tab_height = 66;
var ui_width = 500;
var ui_height = 760;
var tabs = ["settings","renderer","calligraphy","tiles","light"];
var fgcolor = [0.259,0.235,0.224,1];
// var fgcolor = [0,0,0,1];
var selection = 0;
var font_size = 12;
var PI = 3.14;
var HALFPI = PI/2;

declareattribute('tabs','get_tabs','tabs',1);
declareattribute('variation_opacity','getVO','variation_opacity',1);
declareattribute('mode','getMode','mode',1);
declareattribute('range','getRange','range',1);
declareattribute('octave','getOctave','octave',1);
declareattribute('ignore','getIgnore','ignore',1);


function paint(){
	// setInterface();
	// setKeys();
	mgraphics.translate(1,1)
	for (t=0;t<tabs.length;t++){
		var height = t * tab_height;
		with (mgraphics) {
			// translate(0,2);
			set_source_rgba(fgcolor);
			move_to(rounded,height);
			if (selection !== t && selection !== t-1) line_to(rounded+tab_size,height);
			else line_to(rounded+tab_size-rounded,height);
			// if (t !== selection)
			// {
			// 	arc(rounded+tab_size,height+rounded,rounded,-HALFPI,0);
			// 	line_to(rounded+tab_size+rounded,height+tab_height-(rounded));
			// 	arc(rounded+tab_size,height+tab_height-rounded,rounded,0,HALFPI);
			// }
			// else move_to(tab_size,height+tab_height);
					// move_to(tab_size,height+tab_height);
					// line_to(rounded,height+tab_height);
					move_to(rounded,height+tab_height);
			arc(rounded,height+tab_height-rounded,rounded,HALFPI,-PI);
			line_to(0,height+rounded);
			arc(rounded,height+rounded,rounded,-PI,-HALFPI);
			stroke();
			// set_source_rgba(tcol);
				move_to(8,height+(tab_height/2)+(font_size/4));
				set_font_size(font_size);
				show_text(tabs[t]); // contains either 0 (no display) or arrows to highlight key mapping (previous/next)
				fill();
		}
	}
	with (mgraphics){
		// identity_matrix();
		// translate(0,3);
		set_source_rgba(fgcolor);
		move_to(tab_size,0);
		line_to(tab_size+ui_width-rounded,0);
		arc(tab_size+ui_width-rounded,rounded,rounded,-HALFPI,0);
		line_to(tab_size+ui_width,tabs.length*tab_height-rounded)
		arc(tab_size+ui_width-rounded,tabs.length*tab_height-rounded,rounded,0,HALFPI);
		line_to(rounded,tabs.length*tab_height);
		if (selection !== tabs.length-1 && selection !== 0) {
			move_to(rounded+tab_size,rounded);
			arc(rounded+tab_size+rounded,rounded,rounded,-PI,-HALFPI);
			move_to(rounded+tab_size,rounded);
		}
		else if (selection == 0) {
			move_to(tab_size,selection*tab_height-rounded);
		}
		else {
			move_to(rounded+tab_size,rounded);
			arc(rounded+tab_size+rounded,rounded,rounded,-PI,-HALFPI);
			move_to(rounded+tab_size,rounded);
			// line_to(rounded+tab_size,selection*tab_height-rounded);
		}
		arc(tab_size,selection*tab_height-rounded,rounded,0,HALFPI);
		if (selection !== tabs.length-1) {
			move_to(tab_size,(selection+1)*tab_height);
			arc(tab_size,(selection+1)*tab_height+rounded,rounded,-HALFPI,0);
			line_to(tab_size+rounded,tabs.length*tab_height-rounded);
			move_to(tab_size+(2*rounded),tabs.length*tab_height)
			arc(tab_size+(2*rounded),tabs.length*tab_height-rounded,rounded,HALFPI,-PI)
		}
		stroke();
	}
}

function output(){
	if (this.click === 1) {
		outlet(2, Math.floor(vel.latest*127));
		if (isNaN(key) !== 1 && this.key.latest !== -1) {
			outkey = Math.max(0,key.latest);
			oct = 0;
			outlet(1, this.poly.cents[outkey]+oct);
			outlet(0, outkey+key.octave+o_offset);
		}
	}
	}

// ----------------------- MOUSE INTERACTION -----------------------

	onclick.local = 1;
	// onresize.local = 1;
	// ondrag.local = 1;

	function onresize(){
		width = this.box.rect[2] - this.box.rect[0];
		height = this.box.rect[3] - this.box.rect[1];
	  this.ivory.width = width/keycoeff;
	  this.ebony.width = width/numkeys;
	  this.epos = 0.1*widthcoeff*width; //0.104*width;
		this.y_pos = height*v_offset;
		this.y_iscale = height-y_pos;
		this.y_escale = y_iscale*ebony.height*2;
	  // setAreas();
		mgraphics.redraw();
	}

function onclick(x,y,but,cmd,shift,capslock,option,ctrl){
	this.click = 1;
	if (x <= rounded+tab_size) {
		selection = Math.floor(y/tab_height);
		mgraphics.redraw();
	}
	output_sel();
}

function msg_int(s){
	selection = Math.min(tabs.length-1,Math.max(0,s));
	output_sel();
	mgraphics.redraw();
}

function output_sel(){
	outlet(0,selection);
	for(sel=0;sel<tabs.length;sel++) { outlet(1,sel,"hidden",selection !== sel) };
}

// function ondrag(x,y,but,cmd,shift,capslock,option,ctrl){
//   this.click = but;
// 	x = Math.max(0.001,Math.min(width,x)); // avoid wrapping back to top note when leaving rect
// 		selectKey(x,y,this.click);
// }

function onidle(){
	this.click = 0;
	// output();
}

	// ----------------------- CLICK REGIONS -----------------------

// setAreas.local = 1;
//
// 	// collect all leftmost x positions for each key in an array
// 	function setAreas(){
// 	  keyAreas.focus = 0;
// 	  for(i=0;i<9;i++){
// 			for(o=0;o<octaves_displayed;o++){
// 		    keyAreas.ivory.h[i+(o*7)] = i*ivory.width+(o*width/octaves_displayed);
// 		    keyAreas.chrom[ivory.map[i+(o*12)]] = i*ivory.width+(o*width/octaves_displayed);
// 			}
// 	  }
// 	  for(e=0;e<5;e++) {
// 			for(o=0;o<octaves_displayed;o++){
// 	      keyAreas.chrom[ebony.map[e+(o*12)]] = (e*ivory.width)+(epos)+(ivory.width*(Math.min(Math.floor(e/2),1)))+(o*width/octaves_displayed);
// 	      keyAreas.chrom[ebony.map[e+(o*12)]+1] = keyAreas.chrom[ebony.map[e]]+2*(ivory.width-epos)+(o*width/octaves_displayed);
// 			}
// 	  }
// 	}
//
// // ----------------------- KEY SELECTION AND OUTPUT -----------------------
//
// selectKey.local = 1;
//
// // FIND CURRENT KEY BASED ON MOUSE POSITION
// function selectKey(x,y,click)
// {
// 	if(y>=y_pos)
// 	{
//     this.latest.x = x;
//     this.latest.y = y;
// 		apply = 0;
// 		var area = [y_iscale,y_escale]; // defines velocity areas to scale between
// 		var range; // will assume either black scaling or white scaling based on key and position
// 		// check if mouse is in chromatic region
// 		if(y<(y_pos+y_escale))
// 		{
// 			count = 0;
// 			// iterate through all keys and stop when exceeding mouse x position to specify current key
//       for(i=0;i<(numkeys+2);i++)
// 			{
// 				s = i;
// 				o = Math.floor(i/12);
// 				c = o*width/octaves_displayed;
// 				ss = (s+11)%12;
// 				if (s===0 && i!==0) z = (o-1)*12; else z = o*12; // j??
// 				if((keyAreas.chrom[i%12]+c)>=this.latest.x)
// 				{
// 					if(this.poly.map[ss] === 1 || ignoreUnmapped === 0)
// 					{
// 						this.key.latest = s-1;
// 						range = area[key_areas[ss]];
// 						apply = 1;
// 						if(keymode === 1 && this.poly.latest[this.key.latest] === 0)
// 						this.poly.latest[this.key.latest] = 1;
// 					}
// 					else apply = 0;
// 					break;
// 				}
// 	  	}
// 		}
// 		// if beneath black keys, scan through whites only
//     else
// 		{
// 			count = 0;
//       for(j=0;j<(octaves_displayed*7+3);j++)
// 			{
// 				o = Math.floor(j/7);
// 				c = o*width/octaves_displayed;
// 				s = j%7;
// 				ss = (s+6)%7;
// 				if (s===0 && j!==0) z = (o-1)*12; else z = o*12;
// 				if((keyAreas.ivory.h[j%7]+c)>=this.latest.x)
// 				{
// 					if(this.poly.map[ivory.map[ss]] === 1 || ignoreUnmapped === 0)
// 					{
// 						range = area[key_areas[ivory.map[ss]]];
// 						apply = 1;
// 						this.key.latest = ivory.map[ss]+z;
// 						if(keymode === 1)
// 						{
// 							this.poly.latest[s-1] += 1;
// 							this.poly.latest % 1;
// 						}
// 					}
// 					else apply = 0;
//           break;
//         }
//       }
//     }
// 		velo  = (this.latest.y-y_pos)/range;
// 		if (this.groupmode===0){ // 0 uses velocity input to control velocity
// 			if (range&&apply) this.vel.latest = 1-velo; // scale velocity according to key in focus // CLICK ???
// 		}
// 		else { // use velocity input to scan through variations instead, using default velocity of 100
// 			varis = this.poly.groups[this.key.latest%12].length;
// 			this.key.latest = this.poly.groups[Math.floor(varis*velo)];
// 		}
// 		mgraphics.redraw();
// 		output();
// 	}
// }
//
// // ----------------------- KEY DISPLAY PARAMS -----------------------
//
// setKeys.local = 1;
//
// // DRAW THE ACTUAL KEYS IN UI
// function setKeys(){
// 	// draw line above kslider to indicator border
// 	with (mgraphics) {
//     set_source_rgba(color.map);
// 		var shape = [0,y_pos-(height*0.03),width,height*0.03];
// 		rectangle(shape);
//     fill();
// 		set_source_rgba(color.e);
// 		set_line_width(0.5);
// 		rectangle(shape);
//     stroke();
//   }
// 	var x_scale = ivory.width;
// 	// draw white keys
//   for(k=0;k<(keycoeff);k++) {
// 		var x_offset = k*x_scale;
// 		setDisplay(k,'ivory',x_offset,x_scale,y_pos,y_iscale,color.map,color.i,color.e,50,7);
//   }
// 	// draw black keys
// 	var x_scale = ebony.width;
//   for(b=0;b<(octaves_displayed*5);b++) {
// 			var shift = Math.floor(b/5);
//       if((b%5)<2) var x_offset = (b+shift)*ivory.width+epos+(ivory.width*shift);
// 			else var x_offset = ivory.width+(b+shift)*ivory.width+epos+(ivory.width*shift);
// 		setDisplay(b,'ebony',x_offset,x_scale,y_pos,y_escale,color.emap,color.e,color.i,110,5);
//   }
// }
//
// // ----------------------- KEY APPEARANCE -----------------------
//
// setDisplay.local = 1;
// setInterface.local = 1;
//
// // FILL ALL KEYS WITH RESPECTIVE COLOR FOR ACTIVITY AND MAPPING, WITH META INFO (IF ENABLED)
// function setDisplay(index,type,xpos,xscale,ypos,yscale,mcol,bgcol,tcol,txtcoeff,knum) {
// 	with (mgraphics) {
// 		var shape = [xpos,ypos,xscale,yscale];
// 		floor = Math.floor(index/knum)*12;
// 		index %= knum;
// 		var current = eval(type+'.map[index]') + floor;
// 		var col = bgcol;
// 			if (this.poly.map[current] === 1) {
// 				if ((current%12) === offset) col = color.root;
// 				else if(current > (center-o_offset) && current < (center-o_offset+12)) col = mcol;
// 				else info = true;
// 			}
// 			else info = true;
// 			if (this.key.latest == current || this.poly.latest[current] === 1) {
// 						var bright = this.vel.latest*0.8+0.2;
// 						col = listBlend(col,color.on,bright);
// 					}
// 			set_source_rgba(col);
// 			rectangle(shape);
// 			fill();
//
// 			// meta info: display mapping for unallocated keys
// 			if (this.showInfo === 1 && info === true) {
// 				if (this.dictname) {
// 				set_source_rgba(tcol);
// 				move_to(shape[0]+width/txtcoeff,(shape[1]+shape[3]-(height*0.05)));
// 				set_font_size(20*widthcoeff);
// 				show_text(this.poly.info[current%12]); // contains either 0 (no display) or arrows to highlight key mapping (previous/next)
// 				fill();
// 				}
// 			}
// 		current %= 12;
// 		numvars = this.poly.groups[current].length; // this.poly.variations[current];
// 		set_source_rgba(color.v);
// 		subshape = [xpos,ypos,xscale,yscale];
// 		this.veloAreas[current] = [];
// 		// draw equal spaced key areas for number of variations
// 		if (numvars!==0 && this.layout<1) { // to disable root key variation display, add &&current!==offset
// 			if (numvars>1) {
// 				pos = ypos;
// 				len = yscale;
// 				for (v=0;v<numvars;v++){
// 					// vertical position (1) starts at 0, next variations fraction, so on… += ypos
// 					if (v===0) {
// 						subshape[1] = ypos;
// 						subshape[3] = (this.poly.groups[current][1]%1)*len;
// 						len = subshape[3];
// 					}
// 					else if (v!==(numvars-1)) {
// 						subshape[1] = len+ypos;
// 						subshape[3] = (this.poly.groups[current][v+1]%1)*yscale;
// 						subshape[3] -= len;
// 						len += subshape[3];
// 					}
// 					else {
// 						subshape[1] = len+ypos;
// 						subshape[3] = yscale-len;
// 					}
// 					rectangle(subshape);
// 					stroke();
// 				}
// 			}
// 			else {
// 				rectangle(subshape);
// 				stroke();
// 			}
// 		}
// 		set_source_rgba(color.e);
// 		rectangle(shape);
// 		stroke();
// 	}
//
// }
//
// // DISPLAY INFORMATION IN UI HEADER
// function setInterface(){
// 	with (mgraphics){
// 		// display scala infromation (rootkey, number of tones & description)
// 		posx = epos/2+(width/keycoeff);
// 		set_source_rgba(color.info);
// 		rectangle(0,0,width,y_pos);
// 		fill();
// 		set_source_rgba(color.i);
// 		move_to(posx,y_pos/3);
// 		set_font_size(y_pos/3); // 9
// 		select_font_face(fontname);
// 		show_text('Key: '+keynames[offset]+' | Tones in Scala: '+numtones);
// 		move_to(posx,y_pos/1.5);
// 		select_font_face(fontname);
// 		show_text('Name: '+description);
// 		set_source_rgba(color.i);
// 		select_font_face(fontname);
// 		set_font_size(y_pos/1.5);
// 		move_to(epos/2,y_pos/1.5);
// 		show_text(this.layout.toString());
// 		// display number of variations to the right of header
// 		if (this.key.latest !== -1 && this.layout<=1) {
// 			v = this.poly.variations[this.key.latest%12].toString();
// 			align = text_measure(v)[0]/2;
// 			set_source_rgba(color.info);
// 			shape = [width-align-(width/keycoeff),0,align+(width/keycoeff),y_pos]; // x = width-align-(width/keycoeff)
// 			rectangle(shape);
// 			fill();
// 			set_source_rgba(color.i);
// 			select_font_face(fontname);
// 			set_font_size(y_pos/1.5);
// 			move_to(width-align-(width/28),y_pos/1.5);
// 			show_text(v);
// 		}
// 		fill();
// 	}
// }
//
// // ----------------------- ADDITIONAL FUNCTIONS -----------------------
//
// resize.local = 1;
// listMult.local = 1;
//
// // UPDATE RELEVANT DATA WHEN CHANING KEYBOARD OCTAVE OR RANGE
// function resize(){
// 	this.ivory = { width: width/keycoeff, height: 1-v_offset, map: [0,2,4,5,7,9,11,12] };
// 	this.ebony = { width: width/numkeys, height: 0.33, map: [1,3,6,8,10] } ;
// 	this.widthcoeff = 12/numkeys;
// 	this.epos = 0.1*widthcoeff*width;
// 	this.y_pos = height*v_offset;
// 	this.y_iscale = height-y_pos;
// 	this.y_escale = y_iscale*ebony.height*2;
// 	setAreas();
// 	mgraphics.redraw();
// }
//
// function listMult(a, b){ return a * b; };
//
// function listBlend(a,b,c){
// 	var blend = [];
// 	for(d=0;d<a.length;d++){
// 		blend[d] = a[d]*(1-c)+(b[d]*c)
// 	}
// 	return blend;
// }
//
// // ----------------------- USER COMMANDS (MAX) -----------------------
//
// // display and output key
// function msg_int(key){
//   if (inlet === 0){
// 		if (this.poly.map[key%12] === 1 || ignoreUnmapped === 0) {
//     this.key.latest = key;
// 		mgraphics.redraw();
// 		output();
// 		}
// 	}
// 	if (inlet === 1) this.vel.latest = Math.max(0,Math.min(key,127))/127;
// }
//
// // choose mapping mode (0-3) --> to be deprecated
// function mapping(d){
// 	this.layout = Math.max(0,Math.min(6,d));
// 	dictionary(dictname);
// }
//
// // ----------------------- AVAILABLE ATTRIBUTES (MAX) -----------------------
//
// // opacity of variation markers
// function getVO(){
// 	return this.color.v[3];
// }
// getVO.local = 1;
//
// function variation_opacity(f){
// 	this.color.v[3] = Math.max(0,Math.min(1,f));
// 	mgraphics.redraw();
// }
//
// // color settings
// function getColors(){
// 	return autocolor;
// }
// getColors.local = 1;
//
// function autocolors(d){
// 	this.autocolor = d;
// 	setColors(autocolor);
// }
//
// // change the color settings for keys and infobox here
// function setColors(auto){
// 	if (auto === 0) {
// 		this.color = {
// 			i: [0.9, .87, .76, 0.9], // ivory (white)
// 			e: [.1, .08, .07, 1], // ebony (black)
// 			on: [0.86, 0.7, .2, 1], // active key at maximum velocity
// 			map: [0.6,0.8,0.65,1], // white keys mapped to tones explicitly
// 			emap: [0.35,0.45,0.4,1], // black keys mapped
// 			root: [0.6,0.1,0.1,1], // highlight root tone
// 			info: [0.2,0.2,0.2,1], // key info text color
// 			v: [0.2,0.2,0.2,1] // key info text color; alpha value of variations on individual keys as vertical, equally spaced areas can be set using the 'variation_opacity' function
// 		}
// 	}
// 	else {
// 		this.color = {
// 			i: [1,1,1,1], // ivory (white)
// 			e: [0,0,0,1], // ebony (black)
// 			on: env.getattr('selectioncolor'), // active key at maximum velocity
// 			map: env.getattr('color'), // white keys mapped to tones explicitly
// 			emap: [0.66,0.66,0.66,1].map(function(b, i){
// 						return listMult(env.getattr('color')[i], b);}), // black keys mapped
// 			root: env.getattr('accentcolor'), // highlight root tone
// 			info: env.getattr('bgcolor'), // key info text color
// 			v: env.getattr('bgcolor') // key info text color; alpha value of variations on individual keys as vertical, equally spaced areas can be set using the 'variation_opacity' function
// 		}
// 	}
// 	mgraphics.redraw();
// }
// setColors.local = 1;
//
// // mapping layout
// function getMode(){
// 	return this.layout;
// }
// getMode.local = 1;
//
// // choose mapping mode (0-3)
// function mode(d){
// 	this.layout = Math.max(0,Math.min(6,d));
// 	dictionary(dictname);
// }
//
// // number of full octaves to display
// function range(r){
// 	block = Math.floor(r)*12;
// 	this.numkeys = Math.min(72,Math.max(block,12));
// 	this.octaves_displayed = Math.ceil(block/12);
// 	this.keycoeff = keycoeffmap[block%12]+(Math.floor(block/12)*7); // Math.floor(numkeys/24*14)
// 	resize();
// }
//
// function getRange(){
// 	return octaves_displayed;
// }
// getRange.local = 1;
//
// // octave to focus on (offset)
// function octave(oct){
// 	new_oct = 12*Math.max(0,Math.min(7,oct));
// 	diff = this.o_offset-new_oct;
// 	// this.key.latest += diff; // causes trouble when going high up in octave, % later on don't support nega'ives, init?
// 	this.o_offset = new_oct;
// 	mgraphics.redraw();
// }
//
// function getOctave(){
// 	return o_offset/12;
// }
// getOctave.local = 1;
//
// // set flag to ignore unmapped keys with mouse and numeric input
// function ignore(i){
// 	this.ignoreUnmapped = Math.max(0,Math.min(1,i));
// 	mgraphics.redraw();
// }
//
// function getIgnore(){
// 	return ignoreUnmapped;
// }
// getIgnore.local = 1;

// setColors(autocolor);
messnamed('done','bang');
