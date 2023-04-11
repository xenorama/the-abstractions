// ----------------------- UI ELEMENTS -----------------------

SVGicon.local = 1;
function SVGicon(svg,on,enabled,annotation){
  this.img = new MGraphicsSVG(svg)
  this.enabled = (enabled !== undefined) ? enabled : 1;
  this.on = (on !== undefined) ? on : 1
  this.annotation = annotation || "—"
  // this.func = eval(func) || undefined;
}

var icons = [
  new SVGicon("browser_plugin.svg",1,1,"create and patch mcs.matrix~ (throws error when not connected to sig)"),
  new SVGicon("project2.svg",1,1,"mixdown options: none, mono, stereo"),
  new SVGicon("snowflake2.svg",1,0,"(idle)"),
  new SVGicon("reset2.svg",autogain,1,"set autogain for randomization of jit_matrices"),
  new SVGicon("addsnippet2.svg",1,1,"add snapshot"),
  new SVGicon("loop.svg",1,1,"initialize connections and gains"),
  new SVGicon("function2.svg",1,1,"cycle through patchcord styles"),
  new SVGicon("download2.svg",1,1,"inherit jit_matrix dimensions as channel map"),
  new SVGicon("randomize.svg",1,1,"randomize connections"),
  new SVGicon("pointcloud.svg",1,1,"scale patchcord size to gain"),
  new SVGicon("preserve_aspect.svg",1,1,"scale patchcord opacity to gain"),
  new SVGicon("garbage-bin-recycle-bin.svg",1,1,"clear all connections")
]
var num_svgs = 6
