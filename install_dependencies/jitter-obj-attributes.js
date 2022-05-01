// to be used in [the.jit.attr.wrapper]: Automatically direct and filter messages to specific jitter objects (in an abstraction)
// reads a valid jitter object reference file and extracts all methods and attributes from it
// populates a [routepass] object with all relevant methods/attributes to support specific Jitter GL objects
// Written by Tim Heinze © 2021, www.xenorama.com.

autowatch = 1;
inlets = 1;
outlets = 2;

var attrs = [];
var index = 0;
var pass_on = 1;
var custom_attrs = [];
var custom_list = new String();

function load(x,y)
{
	var methodlist = new String("routepass "); // instantiate a string of methods and attributes
	this.attrs = []; // initialise array list
	var jitref = new File(x); // read from jitter reference files
	var re = new RegExp('<(jitterattribute|jittermethod|attribute|method) name="'+'(\\w+)'+'"\\s?.*>$');	// filter relevant lines containing methods or attribute
	var reGet = new RegExp('<(jitterattribute|attribute) name="'+'(\\w+)'+'"\\s?.*>$');	// $2 is the method/attribute in expression
	this.index = 0;	// initialise count

	// scan through document
	while (jitref.position != jitref.eof)
	{
		line_current = jitref.readline();	// iterate lines
		// check line matching defined expression
		if (line_current.match(re))
		{
			var attr = re.test(line_current) ? RegExp.$2 : '0'; // extract method/attribute ($2)
			// check if entry is already listed to avoid duplicates
			if (this.attrs.indexOf(attr) == -1)
			{
				this.attrs[this.index] = attr; // extend entry array
				methodlist += attr + " ";// coninue list
				this.index++;// increment index
			}
		}
	}
	(methodlist.indexOf("jit_gl_texture") !== -1) ? outlet(0,"script connect texout 0 target 0") : outlet(0,"script connect matout 0 target 0");

	jitref.position = 0;

	// perform same procedure for all attributes which can be queried from native object
	while (jitref.position != jitref.eof){
		line_current = jitref.readline(); // iterate lines
		// check line matching defined expression
		if (line_current.match(reGet))
		{
			var attr = reGet.test(line_current) ? RegExp.$2 : '0'; // extract method/attribute ($2)
			attr = "get"+attr;

			// check if entry is already listed to avoid duplicates
			if (this.attrs.indexOf(attr) == -1)
			{
				this.attrs[this.index] = attr; // extend entry array
				methodlist += attr + " "; // coninue list
				this.index++; // increment index
			}
		}
	}
	// if custom params were added, add them to the 'routepass' items
	if (custom_attrs.length !== 0){
		for(var c in this.custom_attrs){
			custom_list += this.custom_attrs[c] + " ";
		}
	}

	if (x.match(/jit.gl..+/))
	{
		methodlist += "getout_name "; // add unlisted methods here
		this.index++;
		if (x.match(/jit.gl.mesh|jit.gl.gridshape|jit.gl.nurbs|jit.gl.bfg|jit.gl.pix/))
		{
			methodlist += "get_gl3_shader "; // add unlisted 'get_gl3_shader' command
			this.index++;
		}
	}
	else if (x.match(/jit.gen|jit.pix/))
	{
		methodlist += "out_name "; // add unlisted methods here
		this.index++;
	}


	var parse_command = "script replace parser newex 0 1 648 12 " + methodlist + custom_list; // concatenate 'paste replace' logic for [thispatcher]
	outlet(0,parse_command); // call replacement

	// connect all entries to target outlet of gl.object
	for(k=0;k<this.index;k++)
	{
		outlet(0,"script connect parser "+k+" target 0");
	}

	// connect custom params to target outlet
	if (custom_attrs.length !== 0)
	{
		for(c=0;c<this.custom_attrs.length;c++)
		{
			var new_index = c + this.index;
			if (x.match(/jit.gl.slab|jit.gl.shader/))
			{
				outlet(0,"script connect parser "+new_index+" param_cmd 0"); // prepend 'param' for jit.gl.slab-shaders
			}
			else outlet(0,"script connect parser "+new_index+" target 0"); // for jit.gl.pix, jit.pix or jit.gen the word 'param' should not be used
		}
	}
	jitref.close(); // close file oepration
}

// listen to pass flag of object from patcherargs
function pass(p,u)
{
	this.pass_on = p; // pass on?
	if (this.pass_on == 1) outlet(0,"script connect in 0 pass 0");
	else outlet(0,"script connect parser "+(this.index+this.custom_attrs.length)+" pass 0"); // filter?
	populate(u) // populate umenu
}

// support messages with arbitrary number of arguments
function anything()
{
	if (arguments.length)
	{
		// the 'custom' method allows for adding custom params for jit.gl.pix or jit.gl.slab objects
		if (messagename == "custom")
		{
			this.custom_attrs = arrayfromargs(arguments);
		}
	}
}

// populate menu
function populate(m){
	messnamed(m,"clear"); // clear menu
	// iterate through indices and append each entry
	for (n=0;n<this.attrs.length;n++)
	{
		messnamed(m,"append",this.attrs[n]);
	}
	if (this.pass_on == 0) outlet(1,"done");
}
