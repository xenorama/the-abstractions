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

	mgraphics.set_source_rgba(box.getattr("bgcolor"));
	mgraphics.rectangle(0, 0, width, height);
  mgraphics.fill();
  mgraphics.set_source_rgba(box.getattr(colorname));
  var ypos = valrange-height*(val/valrange);
  var norm = val/valrange
	mgraphics.rectangle(0, height-(height*norm), width, height*norm);
  mgraphics.fill();
}
