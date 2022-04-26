autowatch = 1;
outlets = 4;
max.clearmaxwindow()

setinletassist(0,"specify settings and apply colors");
setoutletassist(0,"print as the.rgb.patch to console");
setoutletassist(1,"connect to umenu for presets");
setoutletassist(2,"jit_matrix for color palette formatting in jit.gen");
setoutletassist(3,"connect to dict.view");

      // ATTRIBUTES
      var opacity = 1;
      declareattribute("opacity","get_opacity","set_opacity",0);
      function set_opacity(op) {
        opacity = op;
        var lbgo = thisobjc.get("patcher_style").get("locked_bgcolor");
        lbgo[3] = opacity;
        objc.set(preset+"::patcher_style::locked_bgcolor",lbgo);
        thisobjc.set("patcher_style::locked_bgcolor",lbgo);
        var op_enable = (opacity < 1.) ? 1 : 0;
        this.patcher.parentpatcher.setattr("enabletransparentbgwithtitlebar",op_enable);
        dict_view()
      }; set_opacity.local = 1;
      function get_opacity() { return opacity };

      var descend = 0;
      declareattribute("descend","get_descend","set_descend",0);
      function set_descend(d) { descend = d; dict_view()}; set_descend.local = 1;
      function get_descend() { return descend };

      var exclude = ["<none>"];
      declareattribute("exclude","get_exclude","set_exclude",0);
      function set_exclude() {
        var obj_ignore = arrayfromargs(arguments);
        if (obj_ignore.length !== 0) exclude = arrayfromargs(arguments);
        else exclude = ["<none>"];
      dict_view()
      }; set_exclude.local = 1;
      function get_exclude() { return exclude };

      var thispatch = 1;
      declareattribute("thispatch","get_thispatch","set_thispatch",0);
      function set_thispatch(thsp) { thispatch = thsp; dict_view()}; set_thispatch.local = 1;
      function get_thispatch() { return thispatch };
      function thispatcher(thp){
        (typeof(thp) == "number") ? thispatch = thp : outlet(0,"'thispatcher' flag requires a boolean value")
      }

      var default_layout = 0;
      declareattribute("default_layout","get_default_layout","set_default_layout",0);
      function set_default_layout(dfl) { default_layout = dfl; dict_view()}; set_default_layout.local = 1;
      function get_default_layout() { return default_layout };
      function default(dl){
        (typeof(dl) == "number") ? default_layout = dl : outlet(0,"'default' flag requires a boolean value")
      }

      var preset = "xenorama";
      declareattribute("preset","get_preset","set_preset",0);
      function set_preset(prst) {
        if (prst == "default") set_default_layout(1);
        else {
          set_default_layout(0);
          (objc.contains(prst) == 1) ? preset = prst : outlet(0,"no preset named '"+prst+"' in database, ignoring.\ncurrent preset: '"+preset+"'");
          thisparse();
          // output_colormat()
          // post("selectioncolor",objc.get(preset+"::patcher_style::selectioncolor"),'\n')
        }
      dict_view()
      }; set_preset.local = 1;
      function get_preset() { return preset };

      var objects = 1;
      declareattribute("objects","get_objects","set_objects",0);
      function set_objects(dfl) { objects = dfl; dict_view()}; set_objects.local = 1;
      function get_objects() { return objects };

      var grab_objects = 1;
      declareattribute("grab_objects","get_grab_objects","set_grab_objects",0);
      function set_grab_objects(dfl) { grab_objects = dfl; dict_view()}; set_grab_objects.local = 1;
      function get_grab_objects() { return grab_objects };

      var verbose = 0;
      declareattribute("verbose","get_verbose","set_verbose",0);
      function set_verbose(vrbse) { verbose = vrbse; dict_view()}; set_verbose.local = 1;
      function get_verbose() { return verbose };


      var fonts = 0;
      declareattribute("fonts","get_fonts","set_fonts",0);
      function set_fonts(fnts) {
        fonts = fnts;
        if (fonts == 0) {
          if (ignore_patch_attrs.indexOf("fontname") == -1) {
            ignore_patch_attrs.push("fontname");
            ignore_patch_attrs.push("fontsize");
          }
        }
        else if (ignore_patch_attrs.indexOf("fontname") !== -1) {
          ignore_patch_attrs.splice(ignore_patch_attrs.indexOf("fontname"),ignore_patch_attrs.indexOf("fontname")+1);
          ignore_patch_attrs.splice(ignore_patch_attrs.indexOf("fontsize"),ignore_patch_attrs.indexOf("fontsize")+1);
          // var filtered = ignore_patch_attrs.filter(function(value, index, arr)
          // {
          //   return (value == "fontname" || value == "fontsize");
          // });
          // ignore_patch_attrs = filtered;
        }
        // post(ignore_patch_attrs)
      dict_view()
      }; set_fonts.local = 1;
      function get_fonts() { return fonts };

      var locked = 1;
      declareattribute("locked","get_locked","set_locked",0);
      function set_locked(lck) { locked = lck; dict_view()}; set_locked.local = 1;
      function get_locked() { return locked };



      // DEFINE PATCHER COLORS TO BE APPLIED
      var ignore_patch_attrs = ["filepath", "globalpatchername", "title", "fontname", "fontsize", "openinpresentation", "showontab", "openrect", "digest", "description", "bottomtoolbarpinned", "boxanimatetime", "defaultfocusbox", "description", "digest", "enablehscroll", "enablevscroll", "fontface", "fontname", "gridonopen", "gridsize", "gridsnaponopen", "helpsidebarclosed", "isolateaudio", "lefttoolbarpinned", "objectsnaponopen", "openinpresentation", "righttoolbarpinned", "showontab", "subpatcher_template", "tags", "tallnewobj", "textjustification", "title", "toolbarvisible", "toptoolbarpinned", "workspacedisabled" ];


      // ————————————————————————————————————————————————————————————————————————————————————————————————

      // QUERY INFORMATION
      function getcurrent(){
        outlet(0,"current preset of",this.patcher.parentpatcher.getattr("name"),"is '"+preset+"'")
      }

      function getstate(){
        outlet(0,
          "preset:",preset,
          "\nlocked:",locked,
          "\n————————",
          "\ndescend:",descend,
          "\nthispatcher:",thispatch,
          "\nobjects:",objects,
          "\nexclude:",exclude,
          "\nfonts:",fonts,
          "\ndefault:",default_layout,
          "\nopacity:",opacity,
          "\ngrab_objects:",grab_objects,
          "\nverbose:",verbose,'\n')
      }

      function getpresets(){
        var presetlist = objc.getkeys();
        var preset_outlist = [];
        outlet(1,"clear");
        for (var gp in presetlist){
          preset_outlist.push(" "+presetlist[gp]);
          outlet(1,"append",presetlist[gp]);
        }
        outlet(1,"setsymbol",preset)
        (presetlist.length = 0) ? outlet(0,"no presets stored") : outlet(0,"presets:"+preset_outlist);
      }

      function update(){
        var presetlist = objc.getkeys();
        outlet(1,"clear");
        for (var gp in presetlist){
          outlet(1,"append",presetlist[gp]);
        }
        outlet(1,"setsymbol",preset)
        if (loaded) output_colormat();
        dict_view()
        // post("fonts?",ignore_patch_attrs,'\n')
        // print("update");
      }


// ————————————————————————————————————————————————————————————————————————————————————————————————

// COLOR DICTIONARY
var objc = new Dict("the.obj.colors");
objc.readany("the.rgb.layouts.json");
var thisobjc = new Dict(jsarguments[1]+"_this.layout");
// thisparse();
var thisstate = new Dict()
// objc.quiet = 1;
// thisobjc.quiet = 1;

var default_palette = new Dict("maxcolors")
default_palette.readany("maxcolors.json")
var default_style = default_palette.get("styledefaults");

// INITIALISE VARIABLES
var singles = [];
var patcher_style = "";

var obj_bgcolor = this.patcher.parentpatcher.getattr("bgcolor");
var obj_color = this.patcher.parentpatcher.getattr("accentcolor");
var obj_textcolor = this.patcher.parentpatcher.getattr("textcolor_inverse");
var textcolor = this.patcher.parentpatcher.getattr("textcolor");

var obj_colors = [obj_bgcolor,obj_color,obj_textcolor];
var box_attrs = ["bgcolor","color","textcolor"];

var obj_diff_tol = 0.05;
var this_preset = "";
var loaded = 0;

// ————————————————————————————————————————————————————————————————————————————————————————————————

// APPLY COLORS
function bang() {
  if (default_layout == 0) {
    if (thispatch == 1) {
      var patcher_attributes = thisobjc.get("patcher_style").getkeys();
      // post("ignored:",ignore_patch_attrs,'\n')
      // post("patcher attributes:",patcher_attributes,'\n')
      for (var v in patcher_attributes){
        // if (ignore_patch_attrs.indexOf(patcher_attributes[v]) == -1)
        if ((/.*color.*/).test(patcher_attributes[v]) || (fonts == 1 && (/font.+/).test(patcher_attributes[v])))
        {
          // post(patcher_attributes[v],'\n');

          // var complex_color = thisobjc.get("patcher_style::"+patcher_attributes[v]); // dictionary ?
          // if (complex_color instanceof Array) this.patcher.parentpatcher.setattr(patcher_attributes[v],thisobjc.get("patcher_style::"+patcher_attributes[v]));
          // else if (complex_color.name) this.patcher.parentpatcher.setattr(patcher_attributes[v],"dictionary",complex_color.name)
          var complex_color = thisobjc.get("patcher_style::"+patcher_attributes[v]).name; // dictionary ?
          if (complex_color === undefined) this.patcher.parentpatcher.setattr(patcher_attributes[v],thisobjc.get("patcher_style::"+patcher_attributes[v]));
          else if (complex_color) {
            this.patcher.parentpatcher.setattr(patcher_attributes[v],"dictionary",complex_color)
            // post("dictionary",complex_color.get("type"))
          }
        }
      }
    }
      obj_bgcolor = this.patcher.parentpatcher.getattr("bgcolor");
      obj_color = this.patcher.parentpatcher.getattr("accentcolor");
      obj_textcolor = this.patcher.parentpatcher.getattr("textcolor_inverse");
      textcolor = this.patcher.parentpatcher.getattr("textcolor");
    (descend == 1) ? this.patcher.parentpatcher.applydeep(obj_apply) : this.patcher.parentpatcher.apply(obj_apply);
  }
  if (default_layout == 1) {
    (descend == 1) ? this.patcher.parentpatcher.applydeep(obj_default) : this.patcher.parentpatcher.apply(obj_default);
    if (thispatch == 1){
      var keys = default_style.getkeys();
      for (var i in keys) {
        if (keys[i] !== "lightcolor") {
          if (keys[i] == "locked_bgcolor") {
            var val = default_style.get("locked_bgcolor");
            val[3] = opacity;
          }
          else var val = default_style.get(keys[i]);
        this.patcher.parentpatcher.setattr(keys[i],val);
        }
      }
    }
  }
  output_colormat()
}

// ————————————————————————————————————————————————————————————————————————————————————————————————

// APPLY DEFAULTS PER OBJECT
function obj_default(e){
  var obj_class = e.maxclass;
  if (obj_class == "comment" && thispatch == 1) {
    e.message("sendbox","textcolor",default_style.get("textcolor"));
  }
  if (objects == 1) {
    if (obj_class.substr(0,3) == "mc." && thisobjc.contains(obj_class) == 0) obj_class = obj_class.substr(3,obj_class.length-3);
    else if ((obj_class.substr(0,4) == "mcs." || obj_class.substr(0,4) == "mcp.") && thisobjc.contains(obj_class) == -1) obj_class = obj_class.substr(4,obj_class.length-4);
    if (thisobjc.contains(obj_class) == 1 && (exclude.indexOf(obj_class) == -1 || singles.indexOf(obj_class) !== -1) && obj_class !== "mc.combine~")
    {
      var attrs = thisobjc.get(obj_class).getkeys();
      if (obj_class == "live.line" && thispatch == 1) e.message("sendbox","linecolor",default_style.get("elementcolor"));
      else if (attrs.length)
        {
          for (var a in attrs) {
            var obj_attr = attrs[a];
            var def_attr = obj_attr;
            if (obj_attr == "textcolor") def_attr = "textcolor_inverse";
            else if (obj_attr == "bordercolor") def_attr = "accentcolor";
          e.message("sendbox",obj_attr,default_style.get(def_attr));
        }
      }
    }
  }
  if (obj_class == "patcher" && descend == 1 && thispatch == 1){
    var keys = default_style.getkeys();
    for (var i in keys) {
      var tc = keys[i];
      if (tc !== "lightcolor") var val = default_style.get(tc);
      e.setattr(tc,val);
    }
  }
}

// APPLY CUSTOM PER OBJECT
function obj_apply(e){
  var obj_class = e.maxclass;
  // print("SUBSTRING",(obj_class.substr(0,4)));
  // print(obj_class);
  // if (obj_class.match(/mc\..+/)) error("matched!\n");
  // print("CONTAINS",obj_class,"?",thisobjc.contains(obj_class))
  if (obj_class == "comment" && thispatch == 1) {
    var tc = (e.getboxattr("bubble") == 1 && e.getboxattr("bubbleusescolors") == 0) ? [0., 0., 0., 1.] : thisobjc.get("patcher_style").get("textcolor"); // add bubble opton here
    e.setattr("textcolor",tc);
  }
  if ((obj_class.match(/mc\..+/)) && thisobjc.contains(obj_class) == 0) obj_class = obj_class.substr(3,obj_class.length-3);
  // if ((obj_class.match(/mc\..+/)) && thisobjc.contains(obj_class) == -1) { obj_class = obj_class.substr(3,obj_class.length-3); print(obj_class,"is an mc.-object"); };
  if ((obj_class.substr(0,4) == "mcs." || obj_class.substr(0,4) == "mcp.") && thisobjc.contains(obj_class) == 0) obj_class = obj_class.substr(4,obj_class.length-4);
  if (obj_class == "live.line" && thispatch == 1) e.setboxattr("linecolor", textcolor);
  // print("CLASS STRIP",obj_class,obj_class.substr(4,obj_class.length-4));
  if (obj_class == "patcher") { obj_class = e.getattr("name"); } // post(obj_class,'\n')
  if (thisobjc.contains(obj_class) == 1 && obj_class !== "mc.combine~" && obj_class !== "message") {
    // print("contains",obj_class);
  // if (thisobjc.contains(obj_class) == 1 && obj_class !== "mc.combine~") {
  // if (obj_class == "patcher") {
    //   e.setboxattr("textcolor",thisobjc.get("patcher_style::bgcolor"))
    //   e.setboxattr("bgcolor",thisobjc.get("patcher_style::textcolor_inverse"))
    // }
    if (exclude.indexOf(obj_class) == -1 || singles.indexOf(obj_class) !== -1){
      var attrs = thisobjc.get(obj_class).getkeys();
      // if (obj_class == "live.line" && thispatch == 1) e.message("sendbox","linecolor",objc.get(obj_class).get("linecolor").slice(1,5));
      if (objects == 1) {
        if (attrs.length) // else if
          {
            for (var a in attrs) {
              if (attrs instanceof Array){
              var obj_attr = (attrs[a] == "bordercolor") ? "color" : attrs[a];
              e.setboxattr(obj_attr,thisobjc.get(obj_class).get(attrs[a]).slice(1,5));
            }
            else {
              // post(attrs,"no instance of Array\n")
              var obj_attr = (attrs == "bordercolor") ? "color" : attrs;
              e.setboxattr(obj_attr,thisobjc.get(obj_class).get(attrs).slice(1,5));
            }
          }
        }
      }
      else if (objects == 2) {
        e.setboxattr("bgcolor",obj_bgcolor);
        e.setboxattr("color",obj_color);
        e.setboxattr("textcolor",obj_textcolor);
      }
    }
  }
  else if ((objects == 1 || objects == 3) && compat_check(e,obj_class) && obj_class !== "patcher" && obj_class !== "message") {
    e.setboxattr("bgcolor",obj_bgcolor);
    e.setboxattr("color",obj_color);
    e.setboxattr("textcolor",obj_textcolor);
  }
  // else   print(obj_class)
  if (e.maxclass == "patcher" && !thisobjc.contains(obj_class)) {
    e.setboxattr("textcolor",thisobjc.get("patcher_style::bgcolor"))
    e.setboxattr("bgcolor",thisobjc.get("patcher_style::textcolor_inverse"))
  }
  if (e.maxclass == "patcher" && descend == 1 && thispatch == 1) {
    var patcher_attributes = thisobjc.get("patcher_style").getkeys();
    for (var v in patcher_attributes){
      // if (ignore_patch_attrs.indexOf(patcher_attributes[v]) == -1)
      if ((/.*color.*/).test(patcher_attributes[v]))
      // {
      //   // post(patcher_attributes[v],objc.get("patcher_style::"+preset+"::"+patcher_attributes[v]),'\n')
      //   e.setattr(patcher_attributes[v],thisobjc.get("patcher_style::"+patcher_attributes[v]));
      // }
      {
        var complex_color = thisobjc.get("patcher_style::"+patcher_attributes[v]).name; // dictionary ?
        if (complex_color == undefined)
        e.setattr(patcher_attributes[v],thisobjc.get("patcher_style::"+patcher_attributes[v]))
        else e.setattr(patcher_attributes[v],"dictionary",complex_color);
      }
    }
  }
}
obj_apply.local = 1;

// APPLY SINGLE OBJECT COLORS
function single(){
  singles = arrayfromargs(arguments);
  (descend == 1) ? this.patcher.parentpatcher.applydeep(single_apply) : this.patcher.parentpatcher.apply(single_apply);
  singles = [];
  }

// ITERATE THROUGH SINGLE OBJECTS
function single_apply(o){
  if (singles.indexOf(o.maxclass) !== -1) {
    print(o.maxclass);
    (default_layout == 0) ? obj_apply(o) : obj_default(o);
  }
} single_apply.local = 1;

// PASSOUT
function anything(){
  outlet(0,"doesn't understand '"+messagename+"'");
}

function compat_check(o,c){
  if (c !== "message"){
    var thisbox_attrs = o.getboxattrnames();
    var compat = 0;
    for (var a = 0; a < box_attrs.length; a++){
      compat += (thisbox_attrs.indexOf(box_attrs[a]) !== -1) ? 1 : 0;
    }
    return (compat == box_attrs.length) ? true : false;
  }
  else return 0;
} compat_check.local = 1;



// ————————————————————————————————————————————————————————————————————————————————————————————————

// GRAB PATCH COLORS AND SAVE DICTIONARY
function grab(presetname){
  if (!presetname) presetname = preset;
  if (objc.getkeys().indexOf(presetname) !== -1 && locked == 1) {
    outlet(0,"preset '"+presetname+"' already exists, to overwrite existing presets, set the @locked flag to '0' (by default '1')");
  }
  else {
    var p_attr_names = this.patcher.parentpatcher.getattrnames()
    var p_attrs = new Dict("rgb.patcher.style");
    for (var p in p_attr_names){
      p_attrs.replace(p_attr_names[p],this.patcher.parentpatcher.getattr(p_attr_names[p]));
      // post(p_attr_names[p],this.patcher.parentpatcher.getattr(p_attr_names[p]),'\n')
    }
    this_preset = presetname;
    objc.replace(presetname+"::patcher_style","dictionary",p_attrs.name);
    if (grab_objects == 1){
      obj_bgcolor = this.patcher.parentpatcher.getattr("bgcolor");
      obj_color = this.patcher.parentpatcher.getattr("accentcolor");
      obj_textcolor = this.patcher.parentpatcher.getattr("textcolor_inverse");
      obj_colors = [obj_bgcolor,obj_color,obj_textcolor];
      (descend == 1) ? this.patcher.parentpatcher.applydeep(single_grab) : this.patcher.parentpatcher.apply(single_grab);
    }
    dictexport();
    thisparse();
    // thisobjc.replace(objc.get(presetname));
    preset = presetname;
    p_attrs.freepeer();
    outlet(0,"written style '"+presetname+"' to the.rgb.layouts.json");
    update();
  }
}

// SCAN ALL OBJECTS FOR THEIR CURRENT BOX COLORS
function single_grab(o){
  var thisclass = o.maxclass;
  if (thisclass !== "comment" && thisclass !== "live.line" && thisclass !== "message" && thisclass !== "patcher") {
    var thiscolors = [
      o.getboxattr("bgcolor"),
      o.getboxattr("color"),
      o.getboxattr("textcolor")
    ];
    var valid_obj = 0;
    for (t in box_attrs) {
      if (o.getboxattr(box_attrs[t]) instanceof Array) {
        if (box_attrs[t] !== "bgcolor" || o.getboxattrnames().indexOf("bgfillcolor") == -1) { // complex_color
          valid_obj = 1;
        }
        else { valid_obj = 0; break; }
      }
      else { valid_obj = 0; break; }
    }
    if (valid_obj && find_custom_colors(thiscolors,obj_colors)) for (t in box_attrs) objc.replace(this_preset+"::"+thisclass+"::"+box_attrs[t],thisclass,thiscolors[t]);
  }
} single_grab.local = 1;

function find_custom_colors(thiscols,refcols){
  var match = []
  thiscols.forEach(function (col,index) { for (i=0;i<3;i++) match.push(col[i] !== refcols[index][i]); });
  return match.reduce(function (x,i) { return x + i }) !== 0;
} find_custom_colors.local = 1;

// ————————————————————————————————————————————————————————————————————————————————————————————————

// SET PATCHER STYLE FROM PALETTE
function style(s){
  patcher_style = (arrayfromargs(arguments).length !== 0) ? s : "No Style";
  this.patcher.parentpatcher.setattr("style",patcher_style);
  (descend == 1) ? this.patcher.parentpatcher.applydeep(set_style) : this.patcher.parentpatcher.apply(set_style);
}

function set_style(p){
  p.setattr("style",patcher_style)
} set_style.local = 1;


// ————————————————————————————————————————————————————————————————————————————————————————————————

// MANAGE PRESETS
function remove(q){
  if (q !== undefined) {
    if (objc.contains(q) == 1) {
      if (locked) outlet(0,"preset '"+preset+"' cannot be removed unless the @locked flag is set '0' (by default '1')");
      else {
        objc.remove(q);
        dictexport();
        outlet(0,"removed style '"+q+"' from the.rgb.layouts.json")
        update();
        preset = "xenorama";
      }
    }
    else outlet(0,"preset '"+q+"' not found in the rgb.layouts.json")
  }
  else outlet(0,"'remove' method requires a valid preset name, ignoring.")
}

function duplicate(d){
  if (d !== undefined) {
    objc.replace(d,"dictionary",objc.get(preset).name)
    dictexport();
    outlet(0,"duplicated current style '"+preset+"' into new style '"+d+"' in the.rgb.layouts.json")
    preset = d;
  }
}

function import_objs_from(pr){
  if(objc.contains(pr) == 1){
    if (locked) outlet(0,"preset '"+preset+"' cannot be modified unless the @locked flag is set '0' (by default '1')");
    else {
      var _tempname = objc.get(pr).name;
      var _tempdict = new Dict(_tempname);
      _tempdict.remove("patcher_style");
      _tempdict.replace("patcher_style","dictionary",objc.get(preset).get("patcher_style").name);
      objc.remove(preset);
      objc.replace(preset,"dictionary",_tempdict.name);
      _tempdict.freepeer();
      dictexport();
      outlet(0,"imported object colors from '"+pr+"' into preset '"+preset+"' in the.rgb.layouts.json")
    }
  }
  else outlet(0,"preset '"+pr+"' does not exist, cannot import object colors")
}

function purge_obj_colors(){
  if (locked) outlet(0,"preset '"+preset+"' cannot be modified unless the @locked flag is set '0' (by default '1')");
  else {
    var _tempdict = new Dict(objc.get(preset+"::patcher_style").name);
    objc.remove(preset);
    objc.replace(preset+"::patcher_style","dictionary",_tempdict.name);
    set_preset(preset);
    _tempdict.freepeer();
    dictexport()
    outlet(0,"purged all object colors from '"+preset+"' in the.rgb.layouts.json")
  }
}

function msg_int(i){
  var presetlist = objc.getkeys();
  if (presetlist.length > i) {
    preset = presetlist[i];
    thisparse();
    bang();
  }
  else {
    outlet(0,"only",presetlist.length,"presets are available:\n")
    getpresets();
  }
}

// ————————————————————————————————————————————————————————————————————————————————————————————————

// MANAGE DICTIONARY
function thisparse(){
  thisobjc.clear();
  (objc.contains(preset)) ? thisobjc.clone(objc.get(preset).name) : thisobjc.clone(objc.get("xenorama").name);
  if (loaded) output_colormat();
}

function dictexport(){
  objc.writeagain();
  objc.readany("the.rgb.layouts.json");
  thisparse();
} dictexport.local = 1;

function reloaddict(){
  var objc = new Dict("the.obj.colors");
  objc.readany("the.rgb.layouts.json");
  var thisobjc = new Dict(jsarguments[1]+"_this.layout");
  thisparse();
}

// // SAVE LAYOUT
// function backup(){
//
// }

// CONSOLE WITH LINE BREAK
function print(){
  post(arrayfromargs(arguments),'\n');
} print.local = 1;

function output_colormat(){
  var mat = new JitterMatrix(4,"float32",1,3)
  var patch_colors = []
  var patch_attrs = thisobjc.get("patcher_style").getkeys()
  patch_attrs.forEach(function (x,i) {
    if ((/.*color$/).test(x)) patch_colors.push(thisobjc.get("patcher_style::"+patch_attrs[i]))
  });
  mat.dim = [patch_colors.length * 16,4];
  outlet(2,"dim",mat.dim[0],64);
  for (c=0;c<patch_colors.length;c++) {
    var f = patch_colors[c]
    if (f instanceof Array) for(d=0;d<16;d++) { mat.setcell2d(d+c*16,0,f) }
    else {
      if (f.get("type") == "gradient") {
        var fx = f.get("color1")
        var fy = f.get("color2")
        if (fx instanceof Array) for(d=0;d<16;d++) { mat.setcell2d(d+c*16,1,fx) }
        if (fy instanceof Array) for(d=0;d<16;d++) { mat.setcell2d(d+c*16,2,fy); mat.setcell2d(d+c*16,3,1) }
      }
    }
  }
  outlet(2,"jit_matrix",mat.name);
}

function dict_view(){
  thisstate.replace("preset name:",preset);
  thisstate.replace("locked:",locked);
  thisstate.replace("descend into subpatchers:",descend);
  thisstate.replace("apply patcher colors:",thispatch);
  thisstate.replace("apply object colors:",objects);
  thisstate.replace("excluded objects:",exclude);
  thisstate.replace("change fonts with preset:",fonts);
  thisstate.replace("apply Max default layout:",default_layout);
  thisstate.replace("patcher opacity:",opacity);
  thisstate.replace("grab objects:",grab_objects);
  thisstate.replace("verbose:",verbose);
  outlet(3,"dictionary",thisstate.name);

}

function loadbang(){
  loaded = 1;
}
