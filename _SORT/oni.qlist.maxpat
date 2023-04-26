{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 0.0, 45.0, 1308.0, 969.0 ],
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
		"title" : "oni.qlist",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1856.0, 585.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1786.0, 587.0, 50.0, 20.0 ],
					"text" : "1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1874.5, 1020.0, 103.0, 20.0 ],
					"text" : "pak f f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.120676, 0.498039, 0.402411, 1.0 ],
					"color" : [ 0.035294, 0.203922, 0.290196, 1.0 ],
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1959.0, 969.0, 40.0, 20.0 ],
					"text" : "line 0.",
					"textcolor" : [ 0.937255, 0.764706, 0.301961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1959.0, 927.0, 52.0, 20.0 ],
					"text" : "0., 1. $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-95",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1959.0, 889.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1683.250030517578125, 374.5, 48.0, 20.0 ],
					"text" : "* 0.001",
					"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1939.0, 346.75, 29.5, 20.0 ],
					"text" : "+ 1",
					"textcolor" : [ 0.392137, 0.95897, 0.351168, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.089048, 0.464451, 0.299708, 1.0 ],
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1939.0, 379.5, 39.0, 20.0 ],
					"text" : "join",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1959.0, 278.0, 80.0, 20.0 ],
					"text" : "sprintf (%i ms)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.921569, 0.854927, 0.640727, 1.0 ],
					"color" : [ 0.63934, 0.331056, 0.323518, 1.0 ],
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1939.0, 314.0, 39.0, 20.0 ],
					"text" : "buddy",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"color" : [ 0.481539, 0.0, 0.0, 1.0 ],
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1841.0, 208.0, 29.0, 20.0 ],
					"text" : "<",
					"textcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
					"varname" : "<_external[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1692.750030517578125, 534.5, 92.0, 20.0 ],
					"text" : "prepend Entries:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.372549, 0.164706, 0.066667, 1.0 ],
					"color" : [ 0.626893, 0.394594, 0.025588, 1.0 ],
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1692.750030517578125, 568.0, 56.0, 20.0 ],
					"text" : "print Qlist",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1692.750030517578125, 501.0, 117.0, 20.0 ],
					"text" : "gate",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.768627, 0.658824, 0.580392, 1.0 ],
					"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1692.750030517578125, 462.0, 87.0, 20.0 ],
					"text" : "r #0_to-print",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1841.0, 314.0, 29.5, 20.0 ],
					"text" : "&&",
					"textcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1332.833333333333258, 108.22607421875, 29.5, 20.0 ],
					"text" : "t i i",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1141.0, 991.5, 102.0, 20.0 ],
					"text" : "prepend Message:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.372549, 0.164706, 0.066667, 1.0 ],
					"color" : [ 0.626893, 0.394594, 0.025588, 1.0 ],
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1141.0, 1025.0, 56.0, 20.0 ],
					"text" : "print Qlist",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1141.0, 958.0, 117.0, 20.0 ],
					"text" : "gate",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.768627, 0.658824, 0.580392, 1.0 ],
					"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1141.0, 919.0, 87.0, 20.0 ],
					"text" : "r #0_to-print",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1841.0, 445.75, 80.0, 20.0 ],
					"text" : "prepend Step:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.372549, 0.164706, 0.066667, 1.0 ],
					"color" : [ 0.626893, 0.394594, 0.025588, 1.0 ],
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1841.0, 479.25, 56.0, 20.0 ],
					"text" : "print Qlist",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1841.0, 412.25, 117.0, 20.0 ],
					"text" : "gate",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.768627, 0.658824, 0.580392, 1.0 ],
					"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1851.5, 247.0, 87.0, 20.0 ],
					"text" : "r #0_to-print",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"color" : [ 0.63934, 0.331056, 0.323518, 1.0 ],
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1639.250030517578125, 421.0, 136.0, 20.0 ],
					"text" : "pak Total Time: f seconds",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.372549, 0.164706, 0.066667, 1.0 ],
					"color" : [ 0.626893, 0.394594, 0.025588, 1.0 ],
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1639.250030517578125, 454.5, 56.0, 20.0 ],
					"text" : "print Qlist",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1683.250030517578125, 346.0, 117.0, 20.0 ],
					"text" : "gate",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.768627, 0.658824, 0.580392, 1.0 ],
					"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1683.250030517578125, 307.0, 87.0, 20.0 ],
					"text" : "r #0_to-print",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.713726, 0.87451, 0.831373, 1.0 ],
					"color" : [ 0.768627, 0.521569, 0.392157, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 427.0, 838.0, 88.0, 20.0 ],
					"text" : "s #0_to-print",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
					"color" : [ 0.482353, 0.0, 0.0, 1.0 ],
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
					"patching_rect" : [ 515.5, 411.0, 71.5, 20.0 ],
					"text" : "typeroute~",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.120676, 0.498039, 0.402411, 1.0 ],
					"color" : [ 0.035294, 0.203922, 0.290196, 1.0 ],
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1874.5, 969.0, 40.0, 20.0 ],
					"text" : "line 0.",
					"textcolor" : [ 0.937255, 0.764706, 0.301961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1874.5, 927.0, 52.0, 20.0 ],
					"text" : "0., 1. $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1874.5, 889.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.713726, 0.87451, 0.831373, 1.0 ],
					"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1188.0, 122.22607421875, 41.0, 20.0 ],
					"text" : "grab 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1188.0, 232.0, 40.0, 20.0 ],
					"text" : "zl sum",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1188.0, 192.0, 48.0, 20.0 ],
					"text" : "zl group",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1188.0, 152.9521484375, 52.0, 20.0 ],
					"text" : "zl slice 1",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "dump" ],
					"patching_rect" : [ 1050.0, 96.4521484375, 157.0, 20.0 ],
					"text" : "t b dump",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1808.25, 1121.0, 176.0, 34.0 ],
					"text" : "float output of progress 0.-1. (list of 2)",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-51",
					"index" : 4,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1771.0, 1117.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.344535, 0.418209, 0.290269, 1.0 ],
					"color" : [ 0.45522, 0.188215, 0.381035, 1.0 ],
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 334.785714285714278, 449.0, 60.0, 20.0 ],
					"text" : "route read",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 684.0, 552.0, 120.0, 20.0 ],
					"text" : "substitute _bang bang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-70",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 611.5, 437.0, 63.0, 44.0 ],
					"text" : "substitute bang _bang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1410.0, 825.0, 120.0, 20.0 ],
					"text" : "substitute _bang bang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-64",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1458.5, 957.0, 63.0, 44.0 ],
					"text" : "substitute bang _bang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-53",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1452.25, 631.0, 63.0, 44.0 ],
					"text" : "substitute bang _bang",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 471.300000000000011, 567.0, 34.0, 20.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.713726, 0.87451, 0.831373, 1.0 ],
					"color" : [ 0.768627, 0.521569, 0.392157, 1.0 ],
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 366.300000000000011, 786.0, 83.0, 20.0 ],
					"text" : "s #0_to-coll",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.768627, 0.658824, 0.580392, 1.0 ],
					"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1299.0, 36.7855224609375, 81.0, 20.0 ],
					"text" : "r #0_to-coll",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.300000000000011, 567.0, 31.0, 20.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.344535, 0.418209, 0.290269, 1.0 ],
					"color" : [ 0.45522, 0.188215, 0.381035, 1.0 ],
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 344.300000000000011, 536.5, 63.0, 20.0 ],
					"text" : "route bang",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 918.5, 1002.0, 51.0, 20.0 ],
					"text" : "gate 2 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 344.300000000000011, 491.0, 31.0, 20.0 ],
					"text" : "t s 2",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.300000000000011, 567.0, 76.0, 20.0 ],
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.300000000000011, 702.0, 19.0, 20.0 ],
					"text" : "t l",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1425.0, 78.0, 77.0, 18.0 ],
					"text" : "coll_internal"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1410.0, 232.0, 77.0, 18.0 ],
					"text" : "gate_external"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1278.0, 403.0, 64.0, 18.0 ],
					"text" : "<_external"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.823529, 0.921569, 0.945098, 1.0 ],
					"color" : [ 0.333671, 0.378149, 0.42558, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1299.0, 78.0, 120.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"precision" : 6
					}
,
					"text" : "coll",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "coll_internal"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1512.25, 1121.0, 176.0, 22.0 ],
					"text" : "connect to entry message box",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-49",
					"index" : 3,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1475.0, 1117.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 515.5, 520.0, 99.0, 20.0 ],
					"text" : "t b i 0",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 14.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 217.0, 411.0, 20.0 ],
					"text" : "messages:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 170.0, 366.0, 42.0 ],
					"text" : "@prepend: string which will be prepended to every message\n@append: string which will be appended to every message\n@file: filename qith appropriately formatted qlist entries"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 148.0, 363.0, 18.0 ],
					"text" : "int: interval between messages in miliseconds"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 239.0, 379.0, 103.0 ],
					"text" : "in1: messages to be sent, separated by commas; leading symbols define named receive objects and will be prepended by \"receive: (N)\" on output\nin2: connect to object which starts the schedule (i.e. button, loadbang)\nin3: connect to destination coll (out1)\nin4: connect to destination coll (out2)\n\nout1: connect to destination coll (in1)\nout2: connect to destination objects for scheduled messages"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 31.601106143802621,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 18.7855224609375, 408.0, 38.0 ],
					"text" : "oni.qlist",
					"varname" : "title[2]"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.57,
					"id" : "obj-25",
					"justification" : 2,
					"linecolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 557.0, 9.7855224609375, 500.0, 7.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 18.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 557.0, 18.7855224609375, 280.0, 24.0 ],
					"text" : "qlist",
					"varname" : "title[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 14.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 126.0, 410.0, 20.0 ],
					"text" : "args:"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.57,
					"id" : "obj-30",
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
					"id" : "obj-31",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 63.0, 410.0, 61.0 ],
					"text" : "schedule a cue list of formatted messages to be sent out the outlet or to named receive objects, stored in an embedded  coll outside of this patch.",
					"varname" : "title"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Theinhardt Light",
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1047.5, 821.0, 75.0, 37.0 ],
					"text" : "latest string",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 927.0999755859375, 126.0, 68.0, 22.0 ],
					"text" : "example",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1087.0, 45.9521484375, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1354.0, 268.0, 30.0, 20.0 ],
					"text" : "t i 2",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1354.0, 232.0, 54.0, 20.0 ],
					"text" : "gate 2 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "gate_external"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "length", "int" ],
					"patching_rect" : [ 1252.0, 310.0, 60.0, 20.0 ],
					"text" : "t length 1",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1486.0, 863.0, 117.0, 20.0 ],
					"text" : "sprintf receive: (%s)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.089048, 0.464451, 0.299708, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1324.0, 957.0, 105.0, 20.0 ],
					"text" : "join 2 @triggers 1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1319.5, 1121.0, 59.0, 22.0 ],
					"text" : "output",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 956.0, 1124.0, 48.0, 22.0 ],
					"text" : "coll",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 653.0, 89.0, 194.0, 22.0 ],
					"text" : "set entries, divided by commas",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1629.0, 170.0, 94.0, 22.0 ],
					"text" : "coll: outlet 2",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1425.0, 170.0, 95.0, 22.0 ],
					"text" : "coll: outlet 1",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Theinhardt Light",
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1121.0, 45.9521484375, 86.0, 22.0 ],
					"text" : "begin qlist",
					"textcolor" : [ 0.250979989767075, 0.250979989767075, 0.250979989767075, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-10",
					"index" : 4,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1589.5, 170.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1389.0, 170.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-8",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1278.0, 1121.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-6",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1050.0, 45.9521484375, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-5",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 918.5, 1121.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.058824, 0.576471, 0.658824, 1.0 ],
					"color" : [ 0.717647, 0.141176, 0.239216, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 928.5, 310.0, 67.0, 20.0 ],
					"text" : "onebang 1",
					"textcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.882353, 0.654902, 0.007843, 1.0 ],
					"color" : [ 0.164377, 0.195147, 0.31135, 1.0 ],
					"id" : "obj-217",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 972.5, 402.0, 50.0, 20.0 ],
					"text" : "del 100",
					"textcolor" : [ 0.717647, 0.141176, 0.239216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 86.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 684.0, 268.0, 263.5, 20.0 ],
					"text" : "t l b",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 684.0, 126.0, 237.0, 20.0 ],
					"text" : "8 88, 7 31, 7 17, drone_design dd_mode 8"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.596078, 0.058824, 1.0 ],
					"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"id" : "obj-315",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 515.5, 337.0, 85.0, 20.0 ],
					"text" : "loadmess #1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-311",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 227.5, 491.0, 74.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-312",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 144.5, 491.0, 74.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.344535, 0.418209, 0.290269, 1.0 ],
					"color" : [ 0.45522, 0.188215, 0.381035, 1.0 ],
					"id" : "obj-313",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 144.5, 411.0, 352.0, 20.0 ],
					"text" : "route append prepend interval file coll print done",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"id" : "obj-314",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 89.5, 367.0, 74.0, 20.0 ],
					"text" : "patcherargs",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.089048, 0.464451, 0.299708, 1.0 ],
					"id" : "obj-304",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 555.5, 848.0, 113.5, 20.0 ],
					"text" : "join",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-303",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 555.5, 759.0, 114.0, 20.0 ],
					"text" : "t b l",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.120676, 0.498039, 0.402411, 1.0 ],
					"color" : [ 0.035294, 0.203922, 0.290196, 1.0 ],
					"id" : "obj-302",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 555.5, 804.0, 93.0, 20.0 ],
					"text" : "counter",
					"textcolor" : [ 0.937255, 0.764706, 0.301961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-301",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "clear", "bang" ],
					"patching_rect" : [ 928.5, 357.8349609375, 63.0, 20.0 ],
					"text" : "t 0 clear b",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-300",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 515.5, 475.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.089048, 0.464451, 0.299708, 1.0 ],
					"id" : "obj-298",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 555.5, 719.0, 147.5, 20.0 ],
					"text" : "join 2 @triggers 1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 671.0, 51.0, 20.0 ],
					"text" : "append"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-295",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 631.0, 55.0, 20.0 ],
					"text" : "prepend"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-292",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "", "int" ],
					"patching_rect" : [ 684.0, 310.0, 61.0, 20.0 ],
					"text" : "t b l 2",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-280",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 583.0, 589.0, 120.0, 20.0 ],
					"text" : "gate 2 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-282",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 684.0, 520.0, 53.0, 20.0 ],
					"text" : "zl group",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 817.9000244140625, 520.0, 24.0, 20.0 ],
					"text" : "t 1",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 851.300048828125, 520.0, 24.0, 20.0 ],
					"text" : "t 2",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-286",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 761.0, 437.0, 66.0, 20.0 ],
					"text" : "t l l 1",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-287",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 726.0, 402.0, 54.0, 20.0 ],
					"text" : "gate 2 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
					"color" : [ 0.482353, 0.0, 0.0, 1.0 ],
					"id" : "obj-288",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
					"patching_rect" : [ 784.5, 477.0, 102.50006103515625, 20.0 ],
					"text" : "typeroute~",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.80333, 0.486758, 0.705232, 1.0 ],
					"id" : "obj-289",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 761.0, 357.8349609375, 27.0, 20.0 ],
					"text" : "iter",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-266",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1278.0, 863.0, 151.0, 20.0 ],
					"text" : "gate 2 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1617.39990234375, 863.0, 84.0, 20.0 ],
					"text" : "prepend send"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.713726, 0.87451, 0.831373, 1.0 ],
					"color" : [ 0.768627, 0.521569, 0.392157, 1.0 ],
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1617.39990234375, 957.0, 50.0, 20.0 ],
					"text" : "forward",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"dontreplace" : 1,
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-260",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1043.5, 863.0, 225.0, 20.0 ],
					"text" : "random bang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-257",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1410.0, 800.0, 53.0, 20.0 ],
					"text" : "zl group",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-256",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1582.39990234375, 760.0, 54.0, 20.0 ],
					"text" : "gate 2 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-255",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1582.39990234375, 680.0, 24.0, 20.0 ],
					"text" : "t 1",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-254",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1615.800048828125, 680.0, 24.0, 20.0 ],
					"text" : "t 2",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-252",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 1525.5, 597.0, 66.0, 20.0 ],
					"text" : "t l l 1",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-251",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1490.5, 562.0, 54.0, 20.0 ],
					"text" : "gate 2 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
					"color" : [ 0.482353, 0.0, 0.0, 1.0 ],
					"id" : "obj-250",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
					"patching_rect" : [ 1549.0, 637.0, 102.50006103515625, 20.0 ],
					"text" : "typeroute~",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.80333, 0.486758, 0.705232, 1.0 ],
					"id" : "obj-249",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1525.5, 517.0, 27.0, 20.0 ],
					"text" : "iter",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-229",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1431.0, 449.0, 147.5, 20.0 ],
					"text" : "zl reg",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "next", "bang", "bang" ],
					"patching_rect" : [ 1389.0, 383.0, 61.0, 20.0 ],
					"text" : "t next b b",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.882353, 0.654902, 0.007843, 1.0 ],
					"color" : [ 0.164377, 0.195147, 0.31135, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1389.0, 346.0, 70.0, 20.0 ],
					"text" : "del",
					"textcolor" : [ 0.717647, 0.141176, 0.239216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 1389.0, 309.0, 121.0, 20.0 ],
					"text" : "t b i 2",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.278431, 0.32549, 0.305882, 1.0 ],
					"color" : [ 0.345098, 0.513725, 0.572549, 1.0 ],
					"id" : "obj-215",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1389.0, 268.0, 189.5, 20.0 ],
					"text" : "zl slice 1",
					"textcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1215.0, 449.0, 193.0, 20.0 ],
					"text" : "gate",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"color" : [ 0.481539, 0.0, 0.0, 1.0 ],
					"id" : "obj-206",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1215.0, 383.0, 158.0, 20.0 ],
					"text" : "<",
					"textcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
					"varname" : "<_external"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1354.0, 346.0, 29.5, 20.0 ],
					"text" : "- 1",
					"textcolor" : [ 0.996023, 0.809997, 0.403347, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Theinhardt Light",
					"fontsize" : 12.0,
					"id" : "obj-203",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1151.0, 310.0, 44.0, 20.0 ],
					"text" : "goto 0"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "next", "bang", "length" ],
					"patching_rect" : [ 1050.0, 268.0, 221.0, 20.0 ],
					"text" : "t next b length",
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
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
					"destination" : [ "obj-206", 0 ],
					"midpoints" : [ 1599.0, 375.5, 1224.5, 375.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 1333.5, 1021.5, 1287.5, 1021.5 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 1495.5, 920.5, 1333.5, 920.5 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 1302.5, 342.0, 1333.0, 342.0, 1333.0, 221.0, 1363.5, 221.0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"midpoints" : [ 1261.5, 489.5, 960.0, 489.5 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-199", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"source" : [ "obj-199", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"midpoints" : [ 1059.5, 489.5, 960.0, 489.5 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-292", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-215", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"midpoints" : [ 1160.5, 489.5, 960.0, 489.5 ],
					"source" : [ "obj-203", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 1 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"midpoints" : [ 1224.5, 489.5, 960.0, 489.5 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 1374.5, 300.0, 1333.0, 300.0, 1333.0, 221.0, 1363.5, 221.0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 1 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"order" : 1,
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 0,
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"order" : 2,
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 1 ],
					"source" : [ "obj-215", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-251", 0 ],
					"midpoints" : [ 1500.5, 469.0, 1500.0, 469.0 ],
					"source" : [ "obj-216", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"order" : 2,
					"source" : [ "obj-216", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"order" : 1,
					"source" : [ "obj-216", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 0,
					"source" : [ "obj-216", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"midpoints" : [ 982.0, 433.834961000000021, 1031.0, 433.834961000000021, 1031.0, 299.0, 986.0, 299.0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 1 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-229", 0 ],
					"source" : [ "obj-228", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"midpoints" : [ 1419.5, 420.0, 1419.5, 420.0 ],
					"source" : [ "obj-228", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-249", 0 ],
					"midpoints" : [ 1440.5, 493.5, 1535.0, 493.5 ],
					"source" : [ "obj-229", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 1 ],
					"source" : [ "obj-249", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-254", 0 ],
					"source" : [ "obj-250", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"source" : [ "obj-250", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"source" : [ "obj-251", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-250", 0 ],
					"source" : [ "obj-252", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-251", 0 ],
					"midpoints" : [ 1582.0, 629.0, 1603.0, 629.0, 1603.0, 551.0, 1500.0, 551.0 ],
					"source" : [ "obj-252", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 1 ],
					"midpoints" : [ 1535.0, 751.0, 1626.89990234375, 751.0 ],
					"source" : [ "obj-252", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-256", 0 ],
					"midpoints" : [ 1625.300048828125, 730.5, 1591.89990234375, 730.5 ],
					"order" : 0,
					"source" : [ "obj-254", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-266", 0 ],
					"midpoints" : [ 1625.300048828125, 744.5, 1287.5, 744.5 ],
					"order" : 1,
					"source" : [ "obj-254", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-256", 0 ],
					"midpoints" : [ 1591.89990234375, 730.5, 1591.89990234375, 730.5 ],
					"order" : 0,
					"source" : [ "obj-255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-266", 0 ],
					"midpoints" : [ 1591.89990234375, 744.5, 1287.5, 744.5 ],
					"order" : 1,
					"source" : [ "obj-255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 1626.89990234375, 855.0, 1495.5, 855.0 ],
					"order" : 1,
					"source" : [ "obj-256", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"midpoints" : [ 1591.89990234375, 786.5, 1419.5, 786.5 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"order" : 0,
					"source" : [ "obj-256", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-257", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 1,
					"source" : [ "obj-266", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"midpoints" : [ 1419.5, 900.5, 1626.89990234375, 900.5 ],
					"order" : 0,
					"source" : [ "obj-266", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"order" : 1,
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 0 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-298", 1 ],
					"source" : [ "obj-280", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-282", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-280", 0 ],
					"midpoints" : [ 827.4000244140625, 570.5, 592.5, 570.5 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-280", 0 ],
					"midpoints" : [ 860.800048828125, 570.5, 592.5, 570.5 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"midpoints" : [ 770.5, 489.0, 693.5, 489.0 ],
					"source" : [ "obj-286", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.211765, 0.898039, 0.576471, 0.498423 ],
					"destination" : [ "obj-287", 0 ],
					"midpoints" : [ 817.5, 469.0, 838.5, 469.0, 838.5, 391.0, 735.5, 391.0 ],
					"source" : [ "obj-286", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 0 ],
					"source" : [ "obj-286", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 0 ],
					"source" : [ "obj-287", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 735.5, 429.0, 621.0, 429.0 ],
					"source" : [ "obj-287", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 0 ],
					"source" : [ "obj-288", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"source" : [ "obj-288", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 1 ],
					"source" : [ "obj-289", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"midpoints" : [ 693.5, 425.5, 693.5, 425.5 ],
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-292", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-289", 0 ],
					"midpoints" : [ 714.5, 342.5, 770.5, 342.5 ],
					"source" : [ "obj-292", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-298", 1 ],
					"midpoints" : [ 592.5, 705.5, 693.5, 705.5 ],
					"source" : [ "obj-293", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"source" : [ "obj-295", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-303", 0 ],
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-313", 0 ],
					"midpoints" : [ 624.5, 396.0, 154.0, 396.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"source" : [ "obj-301", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 2 ],
					"midpoints" : [ 938.0, 793.5, 602.0, 793.5 ],
					"source" : [ "obj-301", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"source" : [ "obj-301", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-304", 0 ],
					"source" : [ "obj-302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 0 ],
					"source" : [ "obj-303", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-304", 1 ],
					"source" : [ "obj-303", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"midpoints" : [ 565.0, 888.0, 960.0, 888.0 ],
					"source" : [ "obj-304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-295", 0 ],
					"midpoints" : [ 237.0, 620.5, 592.5, 620.5 ],
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-293", 0 ],
					"midpoints" : [ 154.0, 659.5, 592.5, 659.5 ],
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 487.0, 441.0, 507.75, 441.0, 507.75, 257.0, 693.5, 257.0 ],
					"source" : [ "obj-313", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-313", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 0 ],
					"midpoints" : [ 249.142857142857139, 460.0, 525.0, 460.0 ],
					"source" : [ "obj-313", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-311", 0 ],
					"source" : [ "obj-313", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 0 ],
					"source" : [ "obj-313", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-313", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-313", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-313", 0 ],
					"source" : [ "obj-314", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-298", 0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-302", 2 ],
					"midpoints" : [ 667.0, 652.0 ],
					"source" : [ "obj-37", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 525.0, 1075.0, 1484.5, 1075.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-301", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-45", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"midpoints" : [ 1505.75, 709.0, 1419.5, 709.0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"midpoints" : [ 1461.75, 709.5, 1419.5, 709.5 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 0 ],
					"order" : 1,
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"order" : 0,
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"order" : 1,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"order" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 0 ],
					"source" : [ "obj-59", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-300", 0 ],
					"source" : [ "obj-59", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 1 ],
					"midpoints" : [ 1419.5, 851.5, 1259.0, 851.5 ],
					"order" : 1,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-266", 1 ],
					"midpoints" : [ 1520.5, 853.5, 1419.5, 853.5 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-266", 1 ],
					"order" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"midpoints" : [ 665.0, 500.0, 693.5, 500.0 ],
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"midpoints" : [ 621.0, 500.0, 693.5, 500.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 1 ],
					"midpoints" : [ 794.5, 580.0, 693.5, 580.0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-280", 1 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"order" : 1,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"order" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-79", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 2 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-96", 0 ]
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
					"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
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
				"comment" : 				{
					"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"newobj" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
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
					"elementcolor" : [ 0.192157, 0.180392, 0.117647, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
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
,
					"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Loadbang class objects",
				"default" : 				{
					"fontsize" : [ 9.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"fontname" : [ "Arial" ],
					"accentcolor" : [ 0.011765, 0.396078, 0.752941, 0.81 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Luca",
				"default" : 				{
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"fontname" : [ "Open Sans Semibold" ],
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
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Matt",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Solarized_01",
				"default" : 				{
					"color" : [ 0.916111, 0.890012, 0.797811, 0.76 ],
					"elementcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
					"selectioncolor" : [ 0.647465, 0.467514, 0.023485, 1.0 ],
					"textcolor_inverse" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
					"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"textcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"patchlinecolor" : [ 0.039381, 0.160116, 0.198333, 0.69 ],
					"fontname" : [ "Helvetica Neue Thin" ],
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
					"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Solarized_02",
				"default" : 				{
					"color" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"elementcolor" : [ 0.505992, 0.564858, 0.563637, 1.0 ],
					"selectioncolor" : [ 0.647465, 0.467514, 0.023485, 1.0 ],
					"textcolor_inverse" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
					"patchlinecolor" : [ 0.647465, 0.467514, 0.023485, 0.69 ],
					"fontname" : [ "Helvetica Neue Thin" ],
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
					"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Teaching",
				"default" : 				{
					"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
					"fontsize" : [ 18.0 ],
					"fontface" : [ 0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "WTF",
				"default" : 				{
					"color" : [ 0.113725, 0.580392, 0.737255, 1.0 ],
					"elementcolor" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"fontsize" : [ 18.0 ],
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"patchlinecolor" : [ 0.231373, 0.121569, 0.305882, 0.9 ],
					"fontname" : [ "HydrogenType" ],
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
					"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ]
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
					"fontname" : [ "Theinhardt Light" ],
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
				"name" : "classic",
				"default" : 				{
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"fontsize" : [ 9.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : [ "Geneva" ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
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
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
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
,
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ]
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
					"clearcolor" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
					"fontsize" : [ 9.5 ],
					"patchlinecolor" : [ 0.65098, 0.65098, 0.65098, 0.0 ],
					"fontname" : [ "Ableton Sans Book" ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
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
				"name" : "jpink",
				"default" : 				{
					"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"elementcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"clearcolor" : [ 0.113725, 0.607843, 0.607843, 1.0 ],
					"selectioncolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
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
,
					"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ]
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
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
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
				"name" : "multi_grey",
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Verdana" ],
					"textjustification" : [ 1 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
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
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1",
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Verdana" ],
					"textjustification" : [ 1 ],
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
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
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
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"number" : 				{
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Arial" ],
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1-1",
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Verdana" ],
					"textjustification" : [ 1 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
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
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1-1-1",
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Verdana" ],
					"textjustification" : [ 1 ],
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
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
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
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"number" : 				{
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Arial" ],
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-2",
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Verdana" ],
					"textjustification" : [ 1 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
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
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-3",
				"multislider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontname" : [ "Verdana" ],
					"textjustification" : [ 1 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontface" : [ 1 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"meter~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"scope~" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"function" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
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
				"waveform~" : 				{
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobj001",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"fontname" : [ "Arial Bold" ],
					"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ]
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
					"fontsize" : [ 12.059008 ],
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-2",
				"default" : 				{
					"fontsize" : [ 12.059008 ],
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
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
				"panel" : 				{
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
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
				"dial" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
				}
,
				"number" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"newobj" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
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
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
					"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
					"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"dial" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"slider" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textjustification" : [ 2 ]
				}
,
				"number" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"umenu" : 				{
					"textcolor_inverse" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-2",
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textjustification" : [ 2 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textjustification" : [ 2 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textjustification" : [ 2 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"comment" : 				{
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"textjustification" : [ 2 ]
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
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "pattr001",
				"newobj" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "pattr_inv",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "purple",
				"default" : 				{
					"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
					"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ]
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
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "test",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "thisdevice",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
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
		"bgcolor" : [ 0.243137, 0.243137, 0.243137, 0.0 ],
		"editing_bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ]
	}

}
