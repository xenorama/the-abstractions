{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 100.0, 100.0, 761.0, 605.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
		"subpatcher_template" : "",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 100.0, 126.0, 761.0, 579.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"subpatcher_template" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.0, 184.0, 62.0, 22.0 ],
									"text" : "update $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 431.0, 149.0, 200.0, 24.0 ],
									"tabs" : [ "never", "flush", "repeat" ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 0.0 ],
									"bubble" : 1,
									"id" : "obj-31",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 634.5, 122.0, 110.0, 78.0 ],
									"text" : "output accumulated MIDI data when modifiers change?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 507.0, 213.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 256.0, 48.0, 22.0 ],
									"text" : "dirty $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.0, 431.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 457.0, 431.0, 29.5, 22.0 ],
									"text" : "4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 416.75, 431.0, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 379.0, 431.0, 29.5, 22.0 ],
									"text" : "23"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.0, 431.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 431.0, 29.5, 22.0 ],
									"text" : "3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 431.0, 29.5, 22.0 ],
									"text" : "4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.75, 431.0, 29.5, 22.0 ],
									"text" : "2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 148.75, 431.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpdetails.js",
									"id" : "obj-1",
									"ignoreclick" : 1,
									"jsarguments" : [ "oni.modmidiout" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 620.0, 125.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpargs.js",
									"id" : "obj-4",
									"ignoreclick" : 1,
									"jsarguments" : [ "oni.modmidiout" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 589.0, 295.0, 168.6884765625, 54.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 0.0 ],
									"bubble" : 1,
									"bubbleside" : 3,
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.5, 370.5, 82.0, 51.0 ],
									"text" : "modifiers meet conditions"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 0.0 ],
									"bubble" : 1,
									"bubbleside" : 2,
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.5, 157.0, 176.5, 66.0 ],
									"text" : "ensures that an associated pattr object stores the name of the device and not the number"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 203.5, 335.0, 120.000007629394531, 22.0 ],
									"text" : "\"IAC-Treiber Bus 1\""
								}

							}
, 							{
								"box" : 								{
									"attr" : "pattrmode",
									"id" : "obj-20",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.5, 228.0, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
									"color" : [ 0.501961, 0.501961, 0.0, 1.0 ],
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 304.5, 149.0, 113.0, 22.0 ],
									"restore" : [ "IAC-Treiber Bus 1" ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr output_device",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"varname" : "output_device"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.596078, 0.058824, 1.0 ],
									"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.5, 149.0, 72.0, 22.0 ],
									"text" : "loadmess 1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.658824, 0.737255, 1.0 ],
									"color" : [ 0.635294, 0.254902, 0.529412, 1.0 ],
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.5, 192.0, 52.0, 22.0 ],
									"text" : "midiinfo",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"items" : [ "AU DLS Synth 1", ",", "IAC-Treiber Bus 1", ",", "from Max 1", ",", "from Max 2" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 13.5, 296.0, 100.0, 22.0 ],
									"pattrmode" : 1,
									"varname" : "umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 562.5, 256.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 531.5, 334.0, 50.0, 35.0 ],
									"text" : "cntrlr 4 code 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 230.0, 479.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 379.0, 479.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.199664, 0.527303, 0.472039, 1.0 ],
									"color" : [ 0.372549, 0.164706, 0.066667, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 379.0, 521.0, 66.0, 22.0 ],
									"text" : "send code",
									"textcolor" : [ 1.0, 0.984314024448395, 0.870588004589081, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.199664, 0.527303, 0.472039, 1.0 ],
									"color" : [ 0.372549, 0.164706, 0.066667, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 521.0, 67.0, 22.0 ],
									"text" : "send cntrlr",
									"textcolor" : [ 1.0, 0.984314024448395, 0.870588004589081, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 122.5, 384.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.288229, 0.801816, 0.743002, 1.0 ],
									"color" : [ 0.481539, 0.0, 0.0, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 122.5, 296.0, 459.0, 22.0 ],
									"text" : "oni.modmidiout \"from Max 1\" cntrlr 1 2 4 code -1 @update 1 @initial 1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 0.0 ],
									"bubble" : 1,
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 593.0, 256.0, 117.0, 24.0 ],
									"text" : "update MIDI port"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-10",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 478.0, 468.5, 168.0, 94.0 ],
									"text" : "Using the central XEN_UDP-Monitor.maxpat you can monitor all xen.udpreceive instances currently opened in Max as well as their online state.",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 361.0, 272.5, 23.0, 272.5 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 230.0, 272.5, 23.0, 272.5 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 516.5, 284.5, 132.0, 284.5 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "livid_sysex",
								"default" : 								{
									"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
									"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "oni",
								"umenu" : 								{
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"button" : 								{
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "oni_default-1",
								"multi" : 1
							}
, 							{
								"name" : "oni_default",
								"number" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
									"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"button" : 								{
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"dial" : 								{
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
								}
,
								"textbutton" : 								{
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
									"bgfillcolor" : 									{
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
								"panel" : 								{
									"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "oni_default-1",
								"preset" : 								{
									"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ],
									"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"comment" : 								{
									"textjustification" : [ 2 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
									"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.101961, 0.305882, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"tab" : 								{
									"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
									"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
									"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"number" : 								{
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"panel" : 								{
									"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color2" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "oni_default-2",
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"comment" : 								{
									"textjustification" : [ 2 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"number" : 								{
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "oni_default-3",
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"comment" : 								{
									"textjustification" : [ 2 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"number" : 								{
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "oni_default-4",
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"comment" : 								{
									"textjustification" : [ 2 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"number" : 								{
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "oni_default-5",
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"comment" : 								{
									"textjustification" : [ 2 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"number" : 								{
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ],
									"fontname" : [ "Futura Std Book" ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "patcherargs",
								"default" : 								{
									"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
									"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "pattr001",
								"newobj" : 								{
									"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
									"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "pattr_inv",
								"default" : 								{
									"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
									"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "thisdevice",
								"default" : 								{
									"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
									"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 10.0, 80.0, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p basic",
					"varname" : "basic_tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.0, 325.0, 150.0, 22.0 ],
					"text" : "loadmess resize 1136 605"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.0, 368.0, 175.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "helpstarter.js",
						"parameter_enable" : 0
					}
,
					"text" : "js helpstarter.js oni.modmidiout"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpname.js",
					"id" : "obj-8",
					"ignoreclick" : 1,
					"jsarguments" : [ "oni.modmidiout" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 10.0, 336.037476000000026, 57.567627000000002 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 761.0, 579.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"subpatcher_template" : "",
						"showontab" : 1,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 205.0, 205.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ?",
					"varname" : "q_tab"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "helpname.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "helpstarter.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "oni.modmidiout.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/Code Supreme/patchers",
				"patcherrelativepath" : "../../../Projects/Code Supreme/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "modcomponent.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/Code Supreme/patchers",
				"patcherrelativepath" : "../../../Projects/Code Supreme/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "oni.sysexlist.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/Code Supreme/patchers",
				"patcherrelativepath" : "../../../Projects/Code Supreme/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hexout.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/Code Supreme/patchers",
				"patcherrelativepath" : "../../../Projects/Code Supreme/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "oni.hexin.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/Code Supreme/patchers",
				"patcherrelativepath" : "../../../Projects/Code Supreme/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "helpargs.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "helpdetails.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
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
				"button" : 				{
					"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"dial" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
				}
,
				"textbutton" : 				{
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
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
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "oni_default-1",
				"preset" : 				{
					"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ],
					"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
					"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"color" : [ 1.0, 0.101961, 0.305882, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"tab" : 				{
					"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
					"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
					"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"number" : 				{
					"fontsize" : [ 12.0 ],
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
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
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
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
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
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
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
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"fontname" : [ "Futura Std Book" ]
				}
,
				"comment" : 				{
					"textjustification" : [ 2 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"fontsize" : [ 12.0 ],
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
 ]
	}

}
