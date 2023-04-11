function paint()
{
	var val = box.getvalueof()[0]; // this is an array of size 1
	var viewsize = mgraphics.size;
	var valrange = box.getattr("size");
  var valtype = box.getattr("floatoutput")
	var width = viewsize[0];
	var height = viewsize[1];
	var start;

  var colorname = box.attrname_forstylemap("color");
	var degs = box.getattr("degrees")/360

	val *= degs

	var dial = new Image("rem_knob-metal-monochrome_no-indic.png"); // reate a new Image instance from a file from disk
	var knob = new Image("rem_knob-metal-monochrome_no-indic_knob3.png"); // reate a new Image instance from a file from disk
	var resize = [width/dial.size[0],height/dial.size[1]]

	with(mgraphics) {
		var instance = new MGraphics(width,height)

		scale(resize)
		var pat = pattern_create_for_surface(dial);
		set_source(pat);
		rectangle(0,0,dial.size[0],dial.size[1]);
		fill();
		identity_matrix()
		radius = rot(val,width,height)
		scale(resize)
		var pat = pattern_create_for_surface(knob);
		set_source(pat);
		rectangle(0,0,dial.size[0],dial.size[1]);
		fill();
					// scale(1/resize[0],1/resize[1])
					// var dist = radius * 0.75
					// arc(dist*0.45,dist*1.35,dist*0.07,0,Math.PI*2)
					// set_source_rgba(0,0,0,1)
					// fill()
		restore();
	}
}

rot.local = 1
function rot(v,w,h){
	var degs = box.getattr("degrees")/360
	var degtorad = Math.PI/180
	var shift = degs * Math.PI + (Math.PI * 1.245)
	var wh = w/2
	var hh = h/2
	var radius = Math.sqrt(wh*wh+(hh*hh))
	// var deg_offset = 180 - (degs * 180) +
	// post(deg_offset,'\n')
	var angle = (v*360-45)*degtorad - shift
	var repos = poltocar(radius,angle,wh,hh)
	angle = v * (360) * degtorad - shift
	mgraphics.translate(repos)
	mgraphics.rotate(angle)
	return radius
}

poltocar.local = 1
function poltocar(radius,theta,wh,hh){
	var x = radius * Math.sin(theta) + wh
	var y = radius * Math.cos(theta) - hh
	return [x,-y]
}
