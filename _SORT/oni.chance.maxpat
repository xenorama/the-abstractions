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
		"rect" : [ 125.0, 134.0, 1197.0, 651.0 ],
		"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
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
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Xenorama",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 54.0, 170.0, 28.0, 20.0 ],
					"style" : "",
					"text" : "abs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 54.0, 212.0, 35.0, 20.0 ],
					"style" : "",
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-6",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 341.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.333671, 0.378149, 0.42558, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 14.0, 293.0, 35.0, 20.0 ],
					"style" : "",
					"text" : "sel 0",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 54.0, 119.0, 80.0, 20.0 ],
					"style" : "",
					"text" : "patcherargs 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.471957, 0.13375, 0.503781, 1.0 ],
					"color" : [ 0.190986, 0.493984, 1.0, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 14.0, 251.0, 75.0, 20.0 ],
					"style" : "",
					"text" : "random 1",
					"textcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 14.0, 170.0, 24.0, 20.0 ],
					"style" : "",
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.0, 119.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 85.0, 379.0, 18.0 ],
					"style" : "",
					"text" : "probability (int): 1 = always"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 14.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 52.0, 587.0, 20.0 ],
					"style" : "",
					"text" : "probability of a bang"
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
					"patching_rect" : [ 14.0, 12.0, 408.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 18.0,
					"id" : "obj-131",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 19.0, 130.0, 24.0 ],
					"style" : "",
					"text" : "chance"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "livid_sysex",
				"default" : 				{
					"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ],
					"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "oni",
				"umenu" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.376471, 0.384314, 0.4, 1.0 ]
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
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
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
					"color" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"number" : 				{
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"newobj" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ]
				}
,
				"textbutton" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-1",
				"textbutton" : 				{
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"button" : 				{
					"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
					"color" : [ 1.0, 0.101961, 0.305882, 1.0 ]
				}
,
				"preset" : 				{
					"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
					"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"dial" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"tab" : 				{
					"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
					"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"color" : [ 1.0, 0.741176, 0.196078, 0.84 ]
				}
,
				"umenu" : 				{
					"textcolor_inverse" : [ 1.0, 0.998287, 0.929809, 1.0 ],
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
					"fontname" : [ "Futura Std Book" ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"color2" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ]
				}
,
				"number" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-2",
				"textbutton" : 				{
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"number" : 				{
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-3",
				"textbutton" : 				{
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"number" : 				{
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-4",
				"textbutton" : 				{
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"number" : 				{
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-5",
				"textbutton" : 				{
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"number" : 				{
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "patcherargs",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "pattr001",
				"newobj" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "pattr_inv",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
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
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"color" : [ 0.937255, 0.763913, 0.302615, 1.0 ],
		"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
		"patchlinecolor" : [ 1.0, 0.984314, 0.870588, 0.741017 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
