autowatch = 1

mgraphics.relative_coords = 0
mgraphics.init()
/*

simple 2d dial

arguments: fgred fggreen fgblue bgred bggreen bgblue dialred dialgreen dialblue

*/



function setvalueof(v)
{
	msg_float(v);
}

function getvalueof()
{
	return val;
}

function paint() {
	with(mgraphics){
		rectangle(0,0,40,40)
		set_source_rgba([1,0,0,1])
		fill()
	}
}

// all mouse events are of the form:
// onevent <x>, <y>, <button down>, <cmd(PC ctrl)>, <shift>, <capslock>, <option>, <ctrl(PC rbutton)>
// if you don't care about the additonal modifiers args, you can simply leave them out.
// one potentially confusing thing is that mouse events are in absolute screen coordinates,
// with (0,0) as left top, and (width,height) as right, bottom, while drawing
// coordinates are in relative world coordinates, with (0,0) as the center, +1 top, -1 bottom,
// and x coordinates using a uniform scale based on the y coordinates. to convert between screen
// and world coordinates, use sketch.screentoworld(x,y) and sketch.worldtoscreen(x,y,z).

function onclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	// cache mouse position for tracking delta movements
	last_x = x;
	last_y = y;
}
onclick.local = 1; //private. could be left public to permit "synthetic" events

function ondrag(x,y,but,cmd,shift,capslock,option,ctrl)
{
	// var f,dy;
	//
	// // calculate delta movements
	// dy = y - last_y;
	// if (shift) {
	// 	// fine tune if shift key is down
	// 	f = val - dy*0.001;
	// } else {
	// 	f = val - dy*0.01;
	// }
	// msg_float(f); //set new value with clipping + refresh
	// // cache mouse position for tracking delta movements
	// last_x = x;
	// last_y = y;
}
ondrag.local = 1; //private. could be left public to permit "synthetic" events

function ondblclick(x,y,but,cmd,shift,capslock,option,ctrl)
{
	// last_x = x;
	// last_y = y;
	// msg_float(0); // reset dial?
}
ondblclick.local = 1; //private. could be left public to permit "synthetic" events

function forcesize(w,h)
{
	// if (w!=h) {
	// 	h = w;
	// 	box.size(w,h);
	// }
}
forcesize.local = 1; //private

function onresize(w,h)
{
	forcesize(w,h);
	refresh();
}
onresize.local = 1; //private

refresh()
