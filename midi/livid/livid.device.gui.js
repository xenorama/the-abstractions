
include("livid.device.meta.js") // controller meta information (components, layout, mappings)
include("livid.device.components.js") // note/cc component properties
include("livid.device.elements.js") // gui component graphical functions
include("livid.device.max.js") // Max communication (in/out)
include("livid.device.mouse.js") // mouse information
include("livid.device.clients.js") // communication with individual control objects in Max

max.clearmaxwindow()

box.message("border",0)
mgraphics.init()
mgraphics.relative_coords = 0;

// livid.device.meta.js
var device = new Device(jsarguments[1] || "cntrlr")

/* ————————— OBJECT ————————— */

var rect = [this.box.rect[2]-this.box.rect[0],this.box.rect[3]-this.box.rect[1]];
var w = rect[0]
var h = rect[1]
var mouse = [-1,-1]
var coords = [0,0]
var click = 0;
var hover = [0,-1];

/* ————————— COLORS ————————— */

var alpha = 0.8;
var panel_color = this.patcher.getattr("bgcolor")
var panel_alpha = 0.7;
var textcolor = this.patcher.getattr("textcolor")
var outline_color = this.patcher.getattr("color").map(function(x,i) { return (i==3) ? 0.5 : 1 } )
var line_width = 0.002

/* ————————— JSUI ————————— */

      function paint(){

        /* ————————— RESIZE JSUI ————————— */

        rect = mgraphics.size
        if ((rect[0]*(1/device.rect_ext[0]))/(rect[1]*(1/device.rect_ext[1])) !== device.aspect) {
          rect = [rect[0],rect[0]/device.aspect];
          box.size(rect.map(function(x,i) { return x * device.rect_ext[i] }))
        }

        w = rect[0]
        h = rect[1]

        with (mgraphics){
          /* ————————— PANEL ————————— */

          set_source_rgba(panel_color)
          rectangle(0,0,rect)
          fill_with_alpha(panel_alpha);
          set_line_width(w*line_width)

          /* ————————— ELEMENTS ————————— */

          // livid.device.elements.js
          draw_controls(device.id)
        }
      }


/* ————————— INITIAL FUNCTION CALLS ————————— */

setup()
grab()
update()
