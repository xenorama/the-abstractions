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
	var norm = val/valrange
	var nheight = height*norm
	var ypos = height-nheight;
	var nwidth = Math.min(box.getattr("thickness")*0.01*width,width/2)
	var rounded_inner = (box.getattr("knobshape") == 2) * nwidth
	var rounded_outer = (box.getattr("knobshape") == 2) * width
	var dial = new Image("rem_knob-metal-monochrome_no-indic.png"); // reate a new Image instance from a file from disk
	var resize = [width/dial.size[0],height/dial.size[1]]

	with(mgraphics) {
		// transform(1,1,0,0,0,0)
		// translate(width/2,height/2)
		// rotate(val)
		// rotate(0.15)
		// var instance = new MGraphics(width,height)
		// var p = pattern_create_rgba(dial)
		// pattern_create_for_surface(dial,width,height)
		// instance.image_surface_create(dial,"rem_knob-metal-monochrome_no-indic.png",width,height)
						// set_source_rgba(1,0,0,1)
						scale(resize)
						// image_surface_draw(dial)
		// image_surface_draw(dial)
					// set_source_surface(dial)
					// save()
					// translate(width/2,height/2)
					// pattern_create_rgba(instance)
					// pattern_add_color_stop_rgba(instance,0,1,0,0,1)
					// pattern_add_color_stop_rgba(instance,1,0,1,0,1)
													// rotate (10 * Math.PI/180);
					// var pat = pattern_create_for_surface(dial);
					// set_source(pat);
					// rectangle(0,0,width,height);
					// fill();
					// restore();
							image_surface_draw(dial,[0,0,dial.size[0],dial.size[1]])
							// fill()
		// set_source_rgba(box.getattr("bgcolor"));
		// rectangle_rounded(0, 0, width, height,rounded_outer,rounded_outer);
	  // fill();
	  // set_source_rgba(box.getattr(colorname));
		// rectangle_rounded(width/2-(nwidth/2), ypos, nwidth, nheight,rounded_inner,rounded_inner);
	  // fill();
		// rectangle_rounded(width*0.1, ypos, width-(width*0.2), width-(width*0.2), rounded_outer, rounded_outer)
		// set_source_rgba(box.getattr("elementcolor"))
		// fill_preserve()
		// set_source_rgba(box.getattr(colorname));
		// set_line_width(nwidth)
		// stroke()
	}
}
