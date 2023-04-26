{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
		"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
		"editing_bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Theinhardt Light",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 2,
		"toptoolbarpinned" : 2,
		"righttoolbarpinned" : 2,
		"bottomtoolbarpinned" : 2,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"title" : "midilim",
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 456.666656, 399.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Thin",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 157.0, 363.0, 18.0 ],
					"style" : "",
					"text" : "messages:",
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Thin",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 133.0, 363.0, 18.0 ],
					"style" : "",
					"text" : "int: time to pass before midi response gets through (ms)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Thin",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 179.0, 379.0, 54.0 ],
					"style" : "",
					"text" : "in1: midi out\nin2: midi in\n\nout 1: midi feedback"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Thin",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 111.0, 363.0, 18.0 ],
					"style" : "",
					"text" : "arguments:",
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 14.0,
					"id" : "obj-35",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 52.0, 369.0, 34.0 ],
					"style" : "",
					"text" : "a midi response will be held for a specific time before being received"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.57,
					"id" : "obj-41",
					"justification" : 2,
					"linecolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 12.0, 815.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Regular",
					"fontsize" : 18.0,
					"id" : "obj-131",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 16.0, 179.0, 24.0 ],
					"style" : "",
					"text" : "midilim"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 567.666626, 288.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "sel 128"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-5",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 567.666626, 52.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.333344, 157.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.0, 52.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "bang", "int" ],
					"patching_rect" : [ 482.0, 188.0, 60.0, 20.0 ],
					"style" : "",
					"text" : "t 128 b 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 567.666626, 248.0, 48.0, 20.0 ],
					"style" : "",
					"text" : "128"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 456.666656, 335.0, 159.999969, 20.0 ],
					"style" : "",
					"text" : "gate",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.882353, 0.654902, 0.007843, 1.0 ],
					"color" : [ 0.164377, 0.195147, 0.31135, 1.0 ],
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 482.0, 155.0, 56.0, 20.0 ],
					"style" : "",
					"text" : "pipe #1",
					"textcolor" : [ 0.717647, 0.141176, 0.239216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "stop" ],
					"patching_rect" : [ 406.0, 103.0, 95.0, 20.0 ],
					"style" : "",
					"text" : "t 1 i 0 stop"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-118", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"midpoints" : [ 415.5, 139.5, 491.5, 139.5 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-118", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-118", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-125", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"midpoints" : [ 512.0, 228.5, 577.166626, 228.5 ],
					"source" : [ "obj-125", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 1 ],
					"midpoints" : [ 491.5, 217.5, 606.166626, 217.5 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 1 ],
					"source" : [ "obj-7", 1 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "livid_sysex",
				"default" : 				{
					"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
					"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "oni",
				"umenu" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"button" : 				{
					"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "oni_default-1",
				"multi" : 1
			}
, 			{
				"name" : "oni_default",
				"newobj" : 				{
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"button" : 				{
					"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"dial" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
				}
,
				"umenu" : 				{
					"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-1",
				"preset" : 				{
					"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
					"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ]
				}
,
				"button" : 				{
					"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ]
				}
,
				"dial" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ]
				}
,
				"tab" : 				{
					"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
					"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"color2" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"slider" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 1.0, 0.998287, 0.929809, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"number" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-2",
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-3",
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-4",
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-5",
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "patcherargs",
				"default" : 				{
					"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "pattr001",
				"newobj" : 				{
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "pattr_inv",
				"default" : 				{
					"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "thisdevice",
				"default" : 				{
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"color" : [ 0.937255, 0.763913, 0.302615, 1.0 ],
		"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
		"patchlinecolor" : [ 1.0, 0.984314, 0.870588, 0.741017 ]
	}

}
