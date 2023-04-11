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

	mgraphics.set_source_rgba(box.getattr("bgcolor"));
	mgraphics.rectangle_rounded(0, 0, width, height,rounded_outer,rounded_outer);
  mgraphics.fill();
  mgraphics.set_source_rgba(box.getattr(colorname));
	mgraphics.rectangle_rounded(width/2-(nwidth/2), ypos, nwidth, nheight,rounded_inner,rounded_inner);
	// mgraphics.rectangle_rounded((width/2)-(nwidth/2), ypos, nwidth, nheight,5,5);
  mgraphics.fill();
	mgraphics.rectangle_rounded(width*0.1, ypos, width-(width*0.2), width-(width*0.2), rounded_outer, rounded_outer)
	mgraphics.set_source_rgba(box.getattr("elementcolor"))
	mgraphics.fill_preserve()
	mgraphics.set_source_rgba(box.getattr(colorname));
	mgraphics.set_line_width(nwidth)
	mgraphics.stroke()
}
