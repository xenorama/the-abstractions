{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 1852.0, 1030.0 ],
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
		"subpatcher_template" : "XEN-init_template",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.900000000000006, 907.75, 93.0, 20.0 ],
					"text" : "$1 $2 sorted #1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 66.900000000000006, 752.0, 448.5, 20.0 ],
					"text" : "zl 2 reg dictionary #2",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.481539, 0.0, 0.0, 1.0 ],
					"color" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.900000000000006, 662.0, 51.0, 20.0 ],
					"text" : "deferlow",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.089048, 0.464451, 0.299708, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 407.899999999999977, 615.0, 248.0, 20.0 ],
					"text" : "pack dictionary #2",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ],
					"color" : [ 0.25984, 0.251716, 0.427586, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 407.899999999999977, 883.75, 50.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "dict[1]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "clear" ],
					"patching_rect" : [ 292.566666666666606, 702.75, 45.0, 20.0 ],
					"text" : "t l clear",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 63.400000000000006, 1003.0, 150.0, 30.0 ],
					"text" : "name of current dictionary and its new order of keys"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-19",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.900000000000006, 964.75, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "", "bang", "clear" ],
					"patching_rect" : [ 66.900000000000006, 484.0, 285.5, 20.0 ],
					"text" : "t b getkeys b clear",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
					"color" : [ 0.482353, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
					"patching_rect" : [ 23.0, 338.0, 238.5, 20.0 ],
					"text" : "typeroute~",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ],
					"color" : [ 0.25984, 0.251716, 0.427586, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 418.399999999999977, 972.0, 258.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict #2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "dict[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 418.399999999999977, 937.0, 90.0, 20.0 ],
					"text" : "prepend replace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.566666666666606, 826.75, 70.0, 20.0 ],
					"text" : "prepend get"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.80333, 0.486758, 0.705232, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.566666666666606, 788.5, 25.0, 20.0 ],
					"text" : "iter",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 292.566666666666606, 662.0, 87.0, 20.0 ],
					"text" : "zl 1024 sort #1",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ],
					"color" : [ 0.25984, 0.251716, 0.427586, 1.0 ],
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 155.900000000000006, 615.0, 224.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict #2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "dict[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.0, 293.0, 150.0, 18.0 ],
					"text" : "name or incoming dictionary"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-7",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 23.0, 287.0, 30.0, 30.0 ],
					"varname" : "in"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 31.601106143802621,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 18.7855224609375, 408.0, 38.0 ],
					"text" : "oni.dict.sort",
					"varname" : "title[2]"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.57,
					"id" : "obj-2",
					"justification" : 2,
					"linecolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 228.7855224609375, 826.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 18.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 235.7855224609375, 280.0, 24.0 ],
					"text" : "dict.sort",
					"varname" : "title[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 14.0,
					"id" : "obj-35",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 107.0, 410.0, 63.0 ],
					"text" : "args:\n\n#1: positive = up, negative = down\n#2: dictionary name"
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
					"patching_rect" : [ 14.0, 63.0, 410.0, 24.0 ],
					"text" : "sort dictionary keys in alphabetical order",
					"varname" : "title"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 76.400000000000006, 695.0, 76.400000000000006, 695.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 165.233333333333348, 559.0, 165.400000000000006, 559.0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 342.899999999999977, 531.0, 677.0, 531.0, 677.0, 870.0, 525.0, 870.0, 525.0, 870.0, 417.399999999999977, 870.0 ],
					"source" : [ "obj-15", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 254.066666666666663, 559.0, 417.399999999999977, 559.0 ],
					"source" : [ "obj-15", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 302.066666666666606, 864.75, 417.399999999999977, 864.75 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-49", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 328.066666666666606, 732.75, 394.733333333333235, 732.75, 394.733333333333235, 604.0, 165.400000000000006, 604.0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "J-Patcher Color",
				"default" : 				{
					"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "JulStyle",
				"panel" : 				{
					"color" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
						"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
						"angle" : 270.0,
						"proportion" : 0.504115,
						"autogradient" : 0
					}

				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"comment" : 				{
					"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"message" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
						"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
						"angle" : 270.0,
						"proportion" : 0.504115,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "JulStyle2",
				"default" : 				{
					"color" : [ 0.231373, 0.231373, 0.517647, 1.0 ],
					"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
					"elementcolor" : [ 0.192157, 0.180392, 0.117647, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patchlinecolor" : [ 1.0, 1.0, 1.0, 0.9 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.916111, 0.890012, 0.797811, 0.81 ],
						"color2" : [ 0.916111, 0.890012, 0.797811, 0.5 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Loadbang class objects",
				"default" : 				{
					"accentcolor" : [ 0.011765, 0.396078, 0.752941, 0.81 ],
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"fontsize" : [ 9.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : [ "Arial" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Luca",
				"default" : 				{
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ],
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Open Sans Semibold" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Matt",
				"default" : 				{
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Solarized_01",
				"default" : 				{
					"color" : [ 0.916111, 0.890012, 0.797811, 0.76 ],
					"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
					"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"elementcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
					"textcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"selectioncolor" : [ 0.647465, 0.467514, 0.023485, 1.0 ],
					"textcolor_inverse" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
					"patchlinecolor" : [ 0.039381, 0.160116, 0.198333, 0.69 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
						"color2" : [ 0.015924, 0.126521, 0.159696, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Helvetica Neue Thin" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Solarized_02",
				"default" : 				{
					"color" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
					"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
					"elementcolor" : [ 0.505992, 0.564858, 0.563637, 1.0 ],
					"selectioncolor" : [ 0.647465, 0.467514, 0.023485, 1.0 ],
					"textcolor_inverse" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"patchlinecolor" : [ 0.647465, 0.467514, 0.023485, 0.69 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
						"color2" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Helvetica Neue Thin" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Teaching",
				"default" : 				{
					"fontface" : [ 0 ],
					"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
					"fontsize" : [ 18.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "WTF",
				"default" : 				{
					"color" : [ 0.113725, 0.580392, 0.737255, 1.0 ],
					"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"elementcolor" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"fontsize" : [ 18.0 ],
					"patchlinecolor" : [ 0.231373, 0.121569, 0.305882, 0.9 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "HydrogenType" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Xenorama",
				"default" : 				{
					"color" : [ 0.937255, 0.763913, 0.302615, 1.0 ],
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"patchlinecolor" : [ 1.0, 0.984314, 0.870588, 0.741017 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontname" : [ "Theinhardt Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classic",
				"default" : 				{
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
					"fontsize" : [ 9.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontname" : [ "Geneva" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicButton",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicDial",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGain~",
				"default" : 				{
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGswitch",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGswitch2",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicKslider",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicLed",
				"default" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicMatrixctrl",
				"default" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicMeter~",
				"default" : 				{
					"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNodes",
				"default" : 				{
					"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"fontsize" : [ 9.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNslider",
				"default" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNumber",
				"default" : 				{
					"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicPictslider",
				"default" : 				{
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicPreset",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicScope~",
				"default" : 				{
					"color" : [ 0.462745, 0.933333, 0.0, 1.0 ],
					"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicTab",
				"default" : 				{
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicTextbutton",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicToggle",
				"default" : 				{
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicUmenu",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicWaveform~",
				"default" : 				{
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
					"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dark-night-patch",
				"default" : 				{
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpatcher001",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpatcher002",
				"default" : 				{
					"fontsize" : [ 9.5 ],
					"clearcolor" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
					"patchlinecolor" : [ 0.65098, 0.65098, 0.65098, 0.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontname" : [ "Ableton Sans Book" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpink",
				"default" : 				{
					"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"elementcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"textcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"clearcolor" : [ 0.113725, 0.607843, 0.607843, 1.0 ],
					"selectioncolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"patchlinecolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "lightbutton",
				"default" : 				{
					"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
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
				"name" : "multi_grey",
				"default" : 				{
					"textjustification" : [ 1 ],
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontname" : [ "Verdana" ]
				}
,
				"umenu" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1",
				"default" : 				{
					"textjustification" : [ 1 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Verdana" ]
				}
,
				"umenu" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"fontname" : [ "Arial" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1-1",
				"default" : 				{
					"textjustification" : [ 1 ],
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontname" : [ "Verdana" ]
				}
,
				"umenu" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1-1-1",
				"default" : 				{
					"textjustification" : [ 1 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"fontname" : [ "Verdana" ]
				}
,
				"umenu" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"fontname" : [ "Arial" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-2",
				"default" : 				{
					"textjustification" : [ 1 ],
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontname" : [ "Verdana" ]
				}
,
				"umenu" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-3",
				"default" : 				{
					"textjustification" : [ 1 ],
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontname" : [ "Verdana" ]
				}
,
				"umenu" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobj001",
				"default" : 				{
					"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
					"fontsize" : [ 10.0 ],
					"fontname" : [ "Arial Bold" ]
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
				"name" : "newobjBlue-2",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBrown-1",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjCyan-1",
				"default" : 				{
					"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjRed-1",
				"default" : 				{
					"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
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
				"name" : "newobjYellow-2",
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
					"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"parentstyle" : "oni_default-1",
				"multi" : 1
			}
, 			{
				"name" : "oni_default",
				"umenu" : 				{
					"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
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

				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"panel" : 				{
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"dial" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-1",
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"slider" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
					"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
				}
,
				"preset" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
					"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
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
				"tab" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
					"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
					"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"number" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
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
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-2",
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-3",
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-4",
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-5",
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "panelViolet",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.372549, 0.196078, 0.486275, 0.2 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "patcherargs",
				"default" : 				{
					"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "pattr001",
				"newobj" : 				{
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "pattr_inv",
				"default" : 				{
					"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "purple",
				"default" : 				{
					"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
					"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "receives",
				"default" : 				{
					"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "rsliderGold",
				"default" : 				{
					"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ],
					"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "sends",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
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
				"name" : "tastefulltoggle",
				"default" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tastefultoggle",
				"default" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "test",
				"default" : 				{
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "thisdevice",
				"default" : 				{
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "whitey",
				"default" : 				{
					"fontsize" : [ 36.0 ],
					"selectioncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"textcolor_inverse" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"patchlinecolor" : [ 0.199068, 0.062496, 0.060031, 0.9 ],
					"fontname" : [ "Dirty Ego" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"color" : [ 0.937255, 0.763913, 0.302615, 1.0 ],
		"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
		"patchlinecolor" : [ 1.0, 0.984314, 0.870588, 0.741017 ],
		"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
		"editing_bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ]
	}

}
