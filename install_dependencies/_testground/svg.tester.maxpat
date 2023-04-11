{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 890.0, 96.0, 1012.0, 912.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
		"subpatcher_template" : "Default Max 7",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1691.0, 575.0, 40.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr",
					"varname" : "u302009759"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "transport" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-76",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 36.0, 79.0, 753.0, 531.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
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
						"subpatcher_template" : "Default Max 7",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"attr" : "loop",
									"id" : "obj-21",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1034.603815734386444, 274.96229362487793, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "float", "int", "int" ],
									"patching_rect" : [ 911.792491734027863, 176.018897354602814, 61.0, 22.0 ],
									"text" : "dspstate~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 911.792491734027863, 208.018897354602814, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 911.792491734027863, 281.018897354602814, 91.0, 22.0 ],
									"text" : "adstatus switch"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.45, 0.45 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "browser_video.svg", "browser_video.svg" ], [ "active", 1 ], [ "outline_size", 0.5 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 0 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-15",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 860.0, 331.0, 31.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 224.528305351734161, 2.0, 48.811321675777435, 48.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 964.0, 464.009433567523956, 201.0, 22.0 ],
									"text" : "jit.gl.videoplane @transform_reset 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1133.0, 389.603776216506958, 60.0, 22.0 ],
									"text" : "position 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1019.0, 389.603776216506958, 109.0, 22.0 ],
									"text" : "zl lookup stop start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 964.0, 389.603776216506958, 49.0, 22.0 ],
									"text" : "read $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 860.0, 421.603776216506958, 61.0, 22.0 ],
									"text" : "enable $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "jit_matrix", "bang", "" ],
									"patching_rect" : [ 860.0, 499.603776216506958, 49.0, 22.0 ],
									"text" : "jit.world"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 964.0, 421.603776216506958, 305.0, 22.0 ],
									"text" : "jit.movie @autostart 0 @automatic 0 @output_texture 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1359.622694492340088, 614.943396270275116, 233.0, 22.0 ],
									"text" : "svg transport.play.svg transport.pause.svg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1331.434013843536377, 575.396226108074188, 47.094340324401855, 22.0 ],
									"text" : "t 0 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1161.603815734386444, 634.037736594676971, 257.0, 22.0 ],
									"text" : "svg transport.continue.svg transport.pause.svg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1109.603815734386444, 602.0, 71.0, 22.0 ],
									"text" : "routepass 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1109.603815734386444, 634.037736594676971, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.45, 0.45 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "loop.svg", "loop.svg" ], [ "active", 1 ], [ "outline_size", 0.5 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 0 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-46",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1034.603815734386444, 233.96229362487793, 31.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 334.075477838516235, 2.0, 48.811321675777435, 48.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.45, 0.45 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "waveform2.svg", "waveform2.svg" ], [ "active", 1 ], [ "outline_size", 0.5 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 0 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-45",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 911.792491734027863, 240.018897354602814, 31.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 279.528305351734161, 2.0, 48.811321675777435, 48.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.ffs.svg", "transport.ffs.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-38",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1302.981181681156158, 276.603776216506958, 47.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.857142857142861, 11.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.rec.svg", "transport.rec.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-39",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1302.981181681156158, 356.603776216506958, 47.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 85.428571428571431, 11.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.rws.svg", "transport.rws.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-40",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1302.981181681156158, 428.603776216506958, 47.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 11.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.stop.svg", "transport.stop.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-41",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1452.434013843536377, 451.509433567523956, 47.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 124.95687445572446, 11.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.continue.svg", "transport.pause.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-42",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1109.603815734386444, 532.603776216506958, 47.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 47.714285714285722, 11.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-64",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1302.981201000000056, 40.0, 30.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1258.981201000000056, 6.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-66",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1337.981201000000056, 40.0, 30.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1258.981201000000056, 6.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-71",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1302.981201000000056, 210.0, 30.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1258.981201000000056, 176.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-74",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1345.43396000000007, 210.0, 30.0, 30.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1301.43396000000007, 176.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bordercolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 0.0 ],
									"id" : "obj-10",
									"maxclass" : "dropfile",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1116.603815734386444, 268.603776216506958, 33.0, 42.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 2.0, 200.0, 48.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.259, 0.235, 0.224, 1.0 ],
									"id" : "obj-43",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 48.113207459449768, 94.77358740568161, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 2.0, 200.0, 48.0 ],
									"proportion" : 0.5,
									"rounded" : 12
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"order" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"order" : 1,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"order" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 2,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 0,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"color" : [ 0.945098039215686, 1.0, 0.984313725490196, 1.0 ],
						"elementcolor" : [ 0.501960784313725, 0.388235294117647, 0.411764705882353, 1.0 ],
						"accentcolor" : [ 0.462745098039216, 0.258823529411765, 0.305882352941176, 1.0 ],
						"selectioncolor" : [ 0.929411764705882, 0.788235294117647, 0.352941176470588, 1.0 ],
						"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"textcolor_inverse" : [ 1.0, 0.803921568627451, 0.541176470588235, 1.0 ],
						"patchlinecolor" : [ 0.298039215686275, 0.215686274509804, 0.196078431372549, 0.611764705882353 ],
						"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
						"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
						"bgfillcolor_type" : "gradient",
						"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
						"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
						"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
					}
,
					"patching_rect" : [ 1258.981181681156158, 655.0, 348.0, 59.471713244915009 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.119229078292847, 4.238541603088379, 389.0, 144.0 ],
					"varname" : "transport",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2053.119229078292847, 639.238541603088379, 244.0, 22.0 ],
					"text" : "presets presets, edit edit, transport transport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1779.119229078292847, 639.238541603088379, 86.0, 22.0 ],
					"text" : "dictionary tabs"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.921569, 0.717647, 0.117647, 1.0 ],
					"color" : [ 0.25984, 0.251716, 0.427586, 1.0 ],
					"data" : 					{
						"presets" : "presets",
						"edit" : "edit",
						"transport" : "transport"
					}
,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1783.119229078292847, 584.943396270275116, 115.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict tabs @embed 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "hide_objs_by_tab", 1 ], [ "autoscale_height", 0 ], [ "tab_width", 55 ], [ "fontname", "Lato" ], [ "fg_color", "textcolor_inverse" ], [ "style", 0 ], [ "panel_alpha", 0.1 ], [ "svg_px", "browser_plugin.svg", "snowflake2.svg", "presentation2.svg", "paintbucket.svg" ], [ "tabs", "plug-ins", "freeze", "presentation", "colours" ], [ "tab_height", 45 ], [ "ht_color", "bgcolor" ], [ "header", 1 ], [ "frame_alpha", 0.1 ], [ "panel_color", "color" ], [ "line", 2 ], [ "font_size", 12 ], [ "framecolor", "textcolor" ], [ "gradients", 1 ], [ "info_text", 0 ], [ "rounded", 6 ], [ "hilite_color", "accentcolor" ], [ "selcolor", "color" ], [ "bg_color", "bgcolor" ], [ "tab_offset", 0 ] ],
					"filename" : "the.tab.js",
					"hidden" : 1,
					"id" : "obj-37",
					"maxclass" : "jsui",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2105.596187114715576, 109.174302816390991, 293.0, 432.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.119229078292847, 4.238541603088379, 293.0, 432.0 ],
					"varname" : "edit"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "hide_objs_by_tab", 1 ], [ "autoscale_height", 0 ], [ "tab_width", 100 ], [ "fontname", "Lato" ], [ "fg_color", "textcolor_inverse" ], [ "style", 0 ], [ "panel_alpha", 0 ], [ "svg_px", "snapshotlist.svg", "trace.svg", "power.svg", "warp.svg", "code2.svg", "—", "waveform2.svg", "mappings.svg", "vinyl.svg", "—", "lessons2.svg" ], [ "tabs", "presets", "edit", "activate", "warp", "code", "—", "audio", "params", "transport", "—", "instructions" ], [ "tab_height", 45 ], [ "ht_color", "bgcolor" ], [ "header", 0 ], [ "frame_alpha", 0 ], [ "panel_color", "color" ], [ "line", 2 ], [ "font_size", 12 ], [ "dictionary", "tabs" ], [ "framecolor", "textcolor" ], [ "gradients", 1 ], [ "info_text", 1 ], [ "rounded", 6 ], [ "hilite_color", "accentcolor" ], [ "selcolor", "color" ], [ "bg_color", "bgcolor" ], [ "tab_offset", 0 ] ],
					"filename" : "the.tab.js",
					"id" : "obj-29",
					"maxclass" : "jsui",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1779.119229078292847, 671.238541603088379, 293.0, 432.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 4.238541603088379, 105.0, 523.0 ],
					"varname" : "jsui"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "hide_objs_by_tab", 1 ], [ "autoscale_height", 0 ], [ "tab_width", 55 ], [ "fontname", "Lato" ], [ "fg_color", "textcolor_inverse" ], [ "style", 0 ], [ "panel_alpha", 0.1 ], [ "svg_px", "snapshot2.svg", "reload2.svg", "store.svg", "remotebuild2.svg" ], [ "tabs", "snapshot", "recall", "save", "export" ], [ "tab_height", 45 ], [ "ht_color", "bgcolor" ], [ "header", 1 ], [ "frame_alpha", 0.1 ], [ "panel_color", "color" ], [ "line", 2 ], [ "font_size", 12 ], [ "framecolor", "textcolor" ], [ "gradients", 1 ], [ "info_text", 0 ], [ "rounded", 6 ], [ "hilite_color", "accentcolor" ], [ "selcolor", "color" ], [ "bg_color", "bgcolor" ], [ "tab_offset", 0 ] ],
					"filename" : "the.tab.js",
					"hidden" : 1,
					"id" : "obj-147",
					"maxclass" : "jsui",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1788.596187114715576, 109.174302816390991, 293.0, 432.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.119229078292847, 4.238541603088379, 293.0, 432.0 ],
					"varname" : "presets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 851.5, 42.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 851.5, 76.0, 57.0, 22.0 ],
					"text" : "uzi 127 0"
				}

			}
, 			{
				"box" : 				{
					"attr" : "prefix",
					"id" : "obj-72",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 825.811358869075775, 139.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 731.0, 446.504716783761978, 100.0, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 731.0, 480.009433567523956, 49.0, 22.0 ],
					"text" : "pack i s"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.803921568627451, 0.541176470588235, 1.0 ],
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 51.0, 114.0, 753.0, 816.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "hide_objs_by_tab", 1 ], [ "autoscale_height", 0 ], [ "tab_width", 55 ], [ "fontname", "Lato" ], [ "fg_color", "textcolor_inverse" ], [ "style", 0 ], [ "panel_alpha", 0.1 ], [ "svg_px", "snapshotlist.svg", "trace.svg", "power.svg", "warp.svg", "code2.svg", "—", "waveform2.svg", "mappings.svg", "projector.svg" ], [ "tabs", "presets", "edit", "activate", "warp", "code", "—", "audio", "params", "image" ], [ "tab_height", 45 ], [ "ht_color", "bgcolor" ], [ "header", 1 ], [ "frame_alpha", 0.1 ], [ "panel_color", "color" ], [ "line", 2 ], [ "font_size", 12 ], [ "framecolor", "textcolor" ], [ "gradients", 1 ], [ "info_text", 0 ], [ "rounded", 6 ], [ "hilite_color", "accentcolor" ], [ "selcolor", "color" ], [ "bg_color", "elementcolor" ], [ "tab_offset", 0 ] ],
									"filename" : "the.tab.js",
									"id" : "obj-147",
									"maxclass" : "jsui",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 58.0, 317.0, 293.0, 432.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 534.0, 32.0, 22.0 ],
									"text" : "pvar"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 464.125, 53.0, 22.0 ],
									"text" : "pack s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 426.25, 89.0, 22.0 ],
									"text" : "sprintf jsuis[%i]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-140",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 555.0, 388.5, 63.0, 22.0 ],
									"text" : "unpack i s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-139",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 502.0, 113.0, 22.0 ],
									"text" : "setname $1, svg $2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-137",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 344.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform1.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform1.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-120",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 498.584892809391022, 663.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[120]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-121",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 648.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[121]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform3.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform3.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-122",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 633.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[122]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform4.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/waveform4.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-123",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 618.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[123]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/web.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/web.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-124",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 603.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[124]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-125",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 588.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[125]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-126",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 573.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[126]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-127",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 558.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[127]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-128",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 543.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[128]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-129",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 528.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[129]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-130",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 513.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[130]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-131",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 498.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[131]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-132",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 483.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[132]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-133",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 468.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[133]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-134",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 453.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[134]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-135",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 438.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[135]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "<undefined>", "<undefined>" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-136",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 258.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 423.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[136]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/speaker.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/speaker.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-103",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 498.584892809391022, 628.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[103]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/speakers.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/speakers.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-104",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 613.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[104]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/star.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/star.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-105",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 598.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[105]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/store.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/store.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-106",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 583.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[106]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/trace.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/trace.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-107",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 568.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[107]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.continue.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.continue.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-108",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 553.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[108]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.ff.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.ff.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-109",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 538.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[109]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.ffs.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.ffs.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-110",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 523.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[110]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.pause.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.pause.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-111",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 508.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[111]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.play.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.play.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-112",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 493.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[112]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.rec.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.rec.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-113",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 478.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[113]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.rw.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.rw.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-114",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 463.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[114]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.rws.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.rws.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-115",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 448.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[115]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.stop.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/transport.stop.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-116",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 433.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[116]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/unlock.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/unlock.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-117",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 418.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[117]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/unlocked.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/unlocked.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-118",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 403.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[118]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/warp.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/warp.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-119",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 223.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 388.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[119]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/refresh2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/refresh2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-86",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 498.584892809391022, 593.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[86]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/reload2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/reload2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-87",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 578.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[87]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/remotebuild2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/remotebuild2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-88",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 563.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[88]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/reset2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/reset2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-89",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 548.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[89]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/resolveconflicts2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/resolveconflicts2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-90",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 533.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[90]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/screen.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/screen.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-91",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 518.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[91]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/search.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/search.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-92",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 503.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[92]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/serial.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/serial.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-93",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 488.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[93]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/settings.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/settings.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-94",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 473.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[94]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sinoid.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sinoid.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-95",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 458.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[95]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/smartphone.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/smartphone.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-96",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 443.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[96]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/snapshot2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/snapshot2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-97",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 428.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[97]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/snapshotlist.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/snapshotlist.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-98",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 413.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[98]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/snowflake2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/snowflake2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-99",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 398.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[99]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sobel.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sobel.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-100",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 383.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[100]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sound.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sound.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-101",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 368.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[101]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sound2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/sound2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-102",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 188.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 353.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[102]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/os_mac.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/os_mac.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-69",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 498.584892809391022, 558.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[69]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/os_win.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/os_win.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-70",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 543.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[70]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/package.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/package.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-71",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 528.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[71]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/paintbrush.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/paintbrush.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-72",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 513.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[72]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/paintbucket.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/paintbucket.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-73",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 498.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[73]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/particles.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/particles.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-74",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 483.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[74]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/pencil2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/pencil2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-75",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 468.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[75]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/photo-camera2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/photo-camera2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-76",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 453.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[76]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/placeholder2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/placeholder2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-77",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 438.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[77]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/plug.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/plug.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-78",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 423.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[78]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/power.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/power.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-79",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 408.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[79]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/presentation2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/presentation2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-80",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 393.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[80]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/preview.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/preview.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-81",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 378.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[81]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/project2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/project2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-82",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 363.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[82]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/projector.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/projector.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-83",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 348.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[83]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/projector_detail.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/projector_detail.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-84",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 333.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[84]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/recyclebin.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/recyclebin.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-85",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 153.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 318.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[85]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/live.dial2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/live.dial2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-51",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 498.584892809391022, 523.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[52]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/live.gain2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/live.gain2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-52",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 508.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[53]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/load2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/load2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-54",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 493.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[54]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/lock.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/lock.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-55",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 478.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[55]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/locked.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/locked.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-56",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 463.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[56]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/loop.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/loop.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-57",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 448.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[57]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/mappings2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/mappings2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-58",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 433.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[58]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/microphone.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/microphone.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-59",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 418.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[59]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/midimap.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/midimap.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-60",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 403.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[60]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/mute.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/mute.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-61",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 388.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[61]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/network.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/network.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-62",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 373.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[62]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/no2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/no2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-63",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 358.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[63]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/nodecross.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/nodecross.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-64",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 343.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[64]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/note.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/note.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-65",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 328.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[65]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/nslider-fclef2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/nslider-fclef2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-66",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 313.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[66]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/nslider-gclef2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/nslider-gclef2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-67",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 298.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[67]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/os.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/os.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-68",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 118.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 283.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[68]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/folder.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/folder.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-34",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 498.584892809391022, 488.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[35]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/folders.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/folders.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-35",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 473.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[36]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/font.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/font.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-36",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 458.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[37]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/fullscreen.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/fullscreen.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-37",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 443.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[38]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/garbage-bin-recycle-bin.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/garbage-bin-recycle-bin.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-38",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 428.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[39]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/hashtag.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/hashtag.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-39",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 413.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[40]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/heart2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/heart2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-40",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 398.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[41]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/home.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/home.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-41",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 383.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[42]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/info.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/info.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-42",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 368.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[43]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/itable2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/itable2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-43",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 353.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[44]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/jit.playlist.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/jit.playlist.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-44",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 338.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[45]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/jsui2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/jsui2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-45",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 323.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[46]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/jweb2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/jweb2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-46",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 308.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[47]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/keymap.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/keymap.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-47",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 293.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[48]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/kslider2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/kslider2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-48",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 278.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[49]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/legacy", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/legacy" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-49",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 263.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[50]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/lessons2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/lessons2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-50",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 83.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 248.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[51]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/code2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/code2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-17",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 498.584892809391022, 453.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[18]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/codebox.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/codebox.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-18",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 438.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[19]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/color_palette.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/color_palette.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-19",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 423.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[20]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/comment2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/comment2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-20",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 408.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[21]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/consolidate2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/consolidate2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-21",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 393.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[22]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.behaviour.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.behaviour.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-22",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 378.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[23]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.calligraphy_brush.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.calligraphy_brush.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-23",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 363.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[24]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.calligraphy_mizu.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.calligraphy_mizu.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-24",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 348.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[25]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.calligraphy_q.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.calligraphy_q.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-25",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 333.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[26]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.lightsource.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.lightsource.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-26",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 318.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[27]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.pointcloud.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.pointcloud.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-27",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 303.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[28]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.tiles.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/dkr.tiles.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-28",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 288.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[29]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/doublecirc2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/doublecirc2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-29",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 273.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[30]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/download2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/download2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-30",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 258.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[31]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/edit.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/edit.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-31",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 243.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[32]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/exit.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/exit.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-32",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 228.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[33]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/ezadc~2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/ezadc~2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-33",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 48.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 213.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[34]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/cloud-computing.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/cloud-computing.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-16",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 538.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 483.584892809391022, 438.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[17]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/calendar2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/calendar2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-15",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 505.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 468.584892809391022, 423.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[16]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/c74_2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/c74_2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-14",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 472.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 453.584892809391022, 408.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[15]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_video.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_video.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-13",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 438.584892809391022, 393.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[14]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_snippet 2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_snippet 2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-12",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 406.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 423.584892809391022, 378.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[13]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_plugin.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_plugin.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-11",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 373.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 408.584892809391022, 363.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[12]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_images2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/browser_images2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-10",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 393.584892809391022, 348.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[11]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/box.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/box.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-9",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 378.584892809391022, 333.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[10]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/backtodefault.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/backtodefault.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-8",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 274.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 363.584892809391022, 318.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[9]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/back.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/back.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-7",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 241.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 348.584892809391022, 303.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[8]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/audiopower2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/audiopower2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-6",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 333.584892809391022, 288.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[7]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.up.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.up.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-5",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 175.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 318.584892809391022, 273.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[6]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.right.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.right.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-4",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 303.584892809391022, 258.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[5]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.left.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.left.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-3",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.584892809391022, 243.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[4]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.down.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/arrow.down.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-2",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 273.584892809391022, 228.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[3]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/addsnippet2.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/addsnippet2.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-1",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 43.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 258.584892809391022, 213.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[2]"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/add.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/add.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
									"filename" : "the.svgbutton.js",
									"id" : "obj-53",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 13.0, 33.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 243.584892809391022, 198.698111891746521, 64.0, 64.0 ],
									"varname" : "jsuis[1]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 1 ],
									"source" : [ "obj-140", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
 ],
						"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"color" : [ 0.945098039215686, 1.0, 0.984313725490196, 1.0 ],
						"elementcolor" : [ 0.501960784313725, 0.388235294117647, 0.411764705882353, 1.0 ],
						"accentcolor" : [ 0.462745098039216, 0.258823529411765, 0.305882352941176, 1.0 ],
						"selectioncolor" : [ 0.929411764705882, 0.788235294117647, 0.352941176470588, 1.0 ],
						"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"textcolor_inverse" : [ 1.0, 0.803921568627451, 0.541176470588235, 1.0 ],
						"patchlinecolor" : [ 0.298039215686275, 0.215686274509804, 0.196078431372549, 0.611764705882353 ],
						"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
						"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
						"bgfillcolor_type" : "gradient",
						"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
						"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
						"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
					}
,
					"patching_rect" : [ 1345.871447324752808, 109.174302816390991, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"accentcolor" : [ 0.462745098039216, 0.258823529411765, 0.305882352941176, 1.0 ],
						"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"color" : [ 0.945098039215686, 1.0, 0.984313725490196, 1.0 ],
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
						"elementcolor" : [ 0.501960784313725, 0.388235294117647, 0.411764705882353, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
						"patchlinecolor" : [ 0.298039215686275, 0.215686274509804, 0.196078431372549, 0.611764705882353 ],
						"selectioncolor" : [ 0.929411764705882, 0.788235294117647, 0.352941176470588, 1.0 ],
						"tags" : "",
						"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"textcolor_inverse" : [ 1.0, 0.803921568627451, 0.541176470588235, 1.0 ]
					}
,
					"text" : "p all_jsuis",
					"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 941.509477734565735, 485.849079191684723, 50.0, 35.0 ],
					"text" : "count 125"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 804.71701854467392, 198.113216757774353, 38.0, 22.0 ],
					"text" : "count"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "jsui2.svg", "jsui2.svg" ], [ "active", 1 ], [ "outline_size", 0.4 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 0 ], [ "on_color", 1, 0.8, 0.1, 1 ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-63",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 467.47170627117157, 74.132062971591949, 64.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.259, 0.235, 0.224, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 825.811358869075775, 550.905682921409607, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1058.641497701406479, 21.377356648445129, 122.641505837440491, 127.245286703109741 ],
					"proportion" : 0.5,
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "arrow.down.svg", "arrow.right.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-59",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1065.603815734386444, 70.603762269020081, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1233.622634053230286, 67.436454903850631, 34.754715621471405, 34.754715621471405 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.rec.svg", "transport.rec.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-58",
					"ignoreclick" : 1,
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1451.132118761539459, 299.0, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1102.584892809391022, 67.436454903850631, 35.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "arrow.right.svg", "arrow.right.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-56",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1520.943442761898041, 299.0, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1141.264139890670776, 67.436454903850631, 34.754715621471405, 34.754715621471405 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "arrow.left.svg", "arrow.left.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-55",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1379.434002220630646, 299.0, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1063.905645728111267, 67.436454903850631, 34.754715621471405, 34.754715621471405 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "arrow.down.svg", "arrow.down.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-54",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1451.132118761539459, 371.0, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1102.584892809391022, 109.797441267509612, 34.754715621471405, 34.754715621471405 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "arrow.up.svg", "arrow.up.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-53",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1451.132118761539459, 227.0, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1102.584892809391022, 25.07546854019165, 34.754715621471405, 34.754715621471405 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 229.0, 730.358494162559509, 257.0, 22.0 ],
					"text" : "svg transport.continue.svg transport.pause.svg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 206.981132864952087, 563.339622378349304, 233.0, 22.0 ],
					"text" : "svg transport.play.svg transport.pause.svg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 177.0, 698.320757567882538, 71.0, 22.0 ],
					"text" : "routepass 0"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "lock.svg", "unlock.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-33",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 969.358526706695557, 683.471713244915009, 31.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 898.981138676404953, 12.238541603088379, 31.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "loop.svg", "palindrome.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 0 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-31",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 954.358526706695557, 668.471713244915009, 31.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 841.433966189622879, 12.238541603088379, 31.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 730.358494162559509, 41.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 193.981132864952087, 531.339622378349304, 32.0, 22.0 ],
					"text" : "t 0 b"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", 0.5, 0.5, 0, 1 ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.ffs.svg", "transport.ffs.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", 0.75, 0.75, 0, 1 ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", 1, 1, 0, 1 ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-21",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 177.0, 171.0, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 762.85714285714289, 12.238541603088379, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", 0.5, 0.1, 0, 1 ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.rec.svg", "transport.rec.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", 0.75, 0.15, 0, 1 ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", 1, 0, 0, 1 ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-17",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 177.0, 251.0, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 687.428571428571331, 12.238541603088379, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", 0.5, 0.5, 0, 1 ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.rws.svg", "transport.rws.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", 0.75, 0.75, 0, 1 ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", 1, 1, 0, 1 ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-11",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 177.0, 323.0, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 612.0, 12.238541603088379, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.pause.svg", "transport.pause.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-10",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 509.0, 615.0, 64.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", 0, 0, 0.5, 1 ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.stop.svg", "transport.stop.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 0 ], [ "hover_color", 0, 0, 0.75, 1 ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", 0, 0, 1, 1 ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-5",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 193.981132864952087, 454.396226108074188, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 725.070081915174114, 12.238541603088379, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", 0, 0.5, 0, 1 ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "transport.play.svg", "transport.pause.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", 0, 0.75, 0, 1 ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", 0, 1, 0, 1 ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-3",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 177.0, 624.283020973205566, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 649.714285714285779, 12.238541603088379, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 551.0, 61.0, 33.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-27",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 292.0, 491.0, 368.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 0.4 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 0 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-26",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 292.0, 442.0, 368.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 292.0, 148.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 428.0, 272.0, 75.0, 22.0 ],
					"text" : "prepend svg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 613.799999999999955, 560.0, 192.0, 76.0 ],
					"text" : "\"Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 731.0, 66.0, 33.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"items" : [ "add.svg", ",", "addsnippet2.svg", ",", "arrow.down.svg", ",", "arrow.left.svg", ",", "arrow.right.svg", ",", "arrow.up.svg", ",", "audiopower2.svg", ",", "back.svg", ",", "backtodefault.svg", ",", "box.svg", ",", "browser_images2.svg", ",", "browser_plugin.svg", ",", "browser_snippet", "2.svg", ",", "browser_video.svg", ",", "c74_2.svg", ",", "calendar2.svg", ",", "cloud-computing.svg", ",", "code2.svg", ",", "codebox.svg", ",", "color_palette.svg", ",", "comment2.svg", ",", "consolidate2.svg", ",", "dkr.behaviour.svg", ",", "dkr.calligraphy_brush.svg", ",", "dkr.calligraphy_mizu.svg", ",", "dkr.calligraphy_q.svg", ",", "dkr.lightsource.svg", ",", "dkr.pointcloud.svg", ",", "dkr.tiles.svg", ",", "doublecirc2.svg", ",", "download2.svg", ",", "edit.svg", ",", "exit.svg", ",", "ezadc~2.svg", ",", "folder.svg", ",", "folders.svg", ",", "font.svg", ",", "fullscreen.svg", ",", "garbage-bin-recycle-bin.svg", ",", "hashtag.svg", ",", "heart2.svg", ",", "home.svg", ",", "info.svg", ",", "itable2.svg", ",", "jit.playlist.svg", ",", "jsui2.svg", ",", "jweb2.svg", ",", "keymap.svg", ",", "kslider2.svg", ",", "legacy", ",", "lessons2.svg", ",", "live.dial2.svg", ",", "live.gain2.svg", ",", "load2.svg", ",", "lock.svg", ",", "locked.svg", ",", "loop.svg", ",", "mappings2.svg", ",", "microphone.svg", ",", "midimap.svg", ",", "mute.svg", ",", "network.svg", ",", "no2.svg", ",", "nodecross.svg", ",", "note.svg", ",", "nslider-fclef2.svg", ",", "nslider-gclef2.svg", ",", "os.svg", ",", "os_mac.svg", ",", "os_win.svg", ",", "package.svg", ",", "paintbrush.svg", ",", "paintbucket.svg", ",", "particles.svg", ",", "pencil2.svg", ",", "photo-camera2.svg", ",", "placeholder2.svg", ",", "plug.svg", ",", "power.svg", ",", "presentation2.svg", ",", "preview.svg", ",", "project2.svg", ",", "projector.svg", ",", "projector_detail.svg", ",", "recyclebin.svg", ",", "refresh2.svg", ",", "reload2.svg", ",", "remotebuild2.svg", ",", "reset2.svg", ",", "resolveconflicts2.svg", ",", "screen.svg", ",", "search.svg", ",", "serial.svg", ",", "settings.svg", ",", "sinoid.svg", ",", "smartphone.svg", ",", "snapshot2.svg", ",", "snapshotlist.svg", ",", "snowflake2.svg", ",", "sobel.svg", ",", "sound.svg", ",", "sound2.svg", ",", "speaker.svg", ",", "speakers.svg", ",", "star.svg", ",", "store.svg", ",", "trace.svg", ",", "transport.continue.svg", ",", "transport.ff.svg", ",", "transport.ffs.svg", ",", "transport.pause.svg", ",", "transport.play.svg", ",", "transport.rec.svg", ",", "transport.rw.svg", ",", "transport.rws.svg", ",", "transport.stop.svg", ",", "unlock.svg", ",", "unlocked.svg", ",", "warp.svg", ",", "waveform1.svg", ",", "waveform2.svg", ",", "waveform3.svg", ",", "waveform4.svg", ",", "web.svg", ",", "xenorama.svg" ],
					"maxclass" : "chooser",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 731.0, 227.0, 298.0, 208.0 ],
					"prefix" : "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 731.0, 139.0, 57.0, 22.0 ],
					"text" : "types, $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 731.0, 171.0, 39.0, 22.0 ],
					"text" : "folder"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 0 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-15",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 596.0, 343.0, 64.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-14",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 520.0, 343.0, 64.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 0.4 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 1 ], [ "outline", 0 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-13",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 444.0, 343.0, 64.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 1 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 1 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-12",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 368.0, 343.0, 64.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.803921568627451, 0.541176470588235, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "jit_matrix", "" ],
					"patching_rect" : [ 559.0, 171.0, 111.0, 22.0 ],
					"text" : "the.rgb.patch limen",
					"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 292.0, 235.0, 59.0, 22.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"keymode" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 292.0, 184.0, 147.0, 38.0 ],
					"text" : "heart2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.0, 272.0, 105.0, 22.0 ],
					"text" : "sprintf svg %s.svg"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "off_color", "bgcolor" ], [ "scale", 0.65, 0.65 ], [ "svg_off_color", "locked_bgcolor" ], [ "svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg", "Macintosh HD:/Users/Oni/Documents/Max 8/Packages/the-abstractions/install_dependencies/svg/xenorama.svg" ], [ "active", 1 ], [ "outline_size", 0.4 ], [ "align", 1 ], [ "mode", 1 ], [ "hover_color", "accentcolor" ], [ "offset", 0, 0 ], [ "help_grid", 0 ], [ "rounded", 0.3 ], [ "circle", 0 ], [ "outline", 0 ], [ "on_color", "color" ] ],
					"filename" : "the.svgbutton.js",
					"id" : "obj-1",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 292.0, 343.0, 64.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "defaultfont", 0 ] ],
					"filename" : "the.weblinks.js",
					"id" : "obj-8",
					"jsarguments" : [ 25 ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5.523824896131373, 128.0, 142.0, 322.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "defaultfont", 0 ] ],
					"filename" : "the.patcher.js",
					"id" : "obj-32",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5.523824896131373, 7.999991178512573, 457.0, 116.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 612.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 604.0, 4.238541603088379, 200.0, 48.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"order" : 0,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 796.299999999999955, 445.0, 707.899999999999977, 445.0, 707.899999999999977, 261.0, 437.5, 261.0 ],
					"order" : 2,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"source" : [ "obj-19", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"order" : 1,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"order" : 6,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"order" : 3,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"order" : 2,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"order" : 5,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"order" : 4,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 186.5, 767.622645676136017, 162.0, 767.622645676136017, 162.0, 246.0, 186.5, 246.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"order" : 6,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"order" : 3,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"order" : 2,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"order" : 5,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"order" : 4,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 238.5, 762.358494162559509, 271.933965027332306, 762.358494162559509, 271.933965027332306, 613.283020973205566, 186.5, 613.283020973205566 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-73", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "helpdetails.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.helpattrs.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/appearance/rgb_patch",
				"patcherrelativepath" : "../appearance/rgb_patch",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.layouts.apply.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/appearance/rgb_patch",
				"patcherrelativepath" : "../appearance/rgb_patch",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.patcher.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/install_dependencies",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.rgb.patch.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/appearance/rgb_patch",
				"patcherrelativepath" : "../appearance/rgb_patch",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "the.svgbutton.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/install_dependencies",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.tab.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/appearance",
				"patcherrelativepath" : "../appearance",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.weblinks.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/install_dependencies",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Audiomix",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Heading",
				"default" : 				{
					"clearcolor" : [ 0.65098, 0.666667, 0.662745, 0.68 ]
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
				"name" : "Jamoma_highlighted_orange",
				"default" : 				{
					"accentcolor" : [ 1.0, 0.5, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "JulStyle",
				"newobj" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
						"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
						"proportion" : 0.504115,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
						"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
						"proportion" : 0.504115,
						"type" : "gradient"
					}
,
					"color" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
				}
,
				"comment" : 				{
					"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "JulStyle2",
				"default" : 				{
					"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.916111, 0.890012, 0.797811, 0.81 ],
						"color2" : [ 0.916111, 0.890012, 0.797811, 0.5 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.231373, 0.231373, 0.517647, 1.0 ],
					"elementcolor" : [ 0.192157, 0.180392, 0.117647, 1.0 ],
					"patchlinecolor" : [ 1.0, 1.0, 1.0, 0.9 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Larry 5-9-2015",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"fontname" : [ "Century Gothic" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Larry 8-9-2015",
				"parentstyle" : "Heading",
				"multi" : 0
			}
, 			{
				"name" : "Loadbang class objects",
				"default" : 				{
					"accentcolor" : [ 0.011765, 0.396078, 0.752941, 0.81 ],
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 9.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Luca",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"fontname" : [ "Open Sans Semibold" ],
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
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
					"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
					"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
						"color2" : [ 0.015924, 0.126521, 0.159696, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.916111, 0.890012, 0.797811, 0.76 ],
					"elementcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
					"fontname" : [ "Helvetica Neue Thin" ],
					"patchlinecolor" : [ 0.039381, 0.160116, 0.198333, 0.69 ],
					"selectioncolor" : [ 0.647465, 0.467514, 0.023485, 1.0 ],
					"textcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"textcolor_inverse" : [ 0.916111, 0.890012, 0.797811, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Solarized_02",
				"default" : 				{
					"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
					"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
						"color2" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
					"elementcolor" : [ 0.505992, 0.564858, 0.563637, 1.0 ],
					"fontname" : [ "Helvetica Neue Thin" ],
					"patchlinecolor" : [ 0.647465, 0.467514, 0.023485, 0.69 ],
					"selectioncolor" : [ 0.647465, 0.467514, 0.023485, 1.0 ],
					"textcolor_inverse" : [ 0.039381, 0.160116, 0.198333, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Teaching",
				"default" : 				{
					"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
					"fontface" : [ 0 ],
					"fontsize" : [ 18.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "WTF",
				"default" : 				{
					"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.113725, 0.580392, 0.737255, 1.0 ],
					"elementcolor" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"fontname" : [ "HydrogenType" ],
					"fontsize" : [ 18.0 ],
					"patchlinecolor" : [ 0.231373, 0.121569, 0.305882, 0.9 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Xenorama",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.937255, 0.763913, 0.302615, 1.0 ],
					"fontname" : [ "Theinhardt Light" ],
					"patchlinecolor" : [ 1.0, 0.984314, 0.870588, 0.741017 ],
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "afxyellow",
				"multislider" : 				{
					"bgcolor" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
					"color" : [ 1.0, 0.818637, 0.0, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.79,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
						"color2" : [ 0.685, 0.685, 0.685, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"fontname" : [ "Arial" ],
					"fontsize" : [ 30.0 ],
					"textcolor_inverse" : [ 1.0, 0.818637, 0.0, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 0.679508, 0.55813, 0.006126, 1.0 ],
					"elementcolor" : [ 0.451979, 0.451979, 0.451979, 1.0 ],
					"textcolor_inverse" : [ 0.881305, 0.881305, 0.881305, 1.0 ]
				}
,
				"comment" : 				{
					"fontname" : [ "Arial" ],
					"fontsize" : [ 24.0 ],
					"textcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "blueYellowSlider",
				"default" : 				{
					"accentcolor" : [ 1.0, 0.788235, 0.301961, 1.0 ],
					"bgcolor" : [ 0.027632, 0.0, 0.307692, 1.0 ],
					"color" : [ 1.0, 0.788235, 0.301961, 1.0 ],
					"elementcolor" : [ 0.020779, 0.0, 0.307692, 1.0 ],
					"fontface" : [ 1 ],
					"selectioncolor" : [ 1.0, 0.788235, 0.301961, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.788235, 0.301961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "blue_new_bg_1",
				"default" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
					"textcolor" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "buttonBlue",
				"default" : 				{
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "buttonPurple",
				"default" : 				{
					"bgcolor" : [ 0.372549, 0.196078, 0.486275, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classic",
				"default" : 				{
					"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
						"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"fontname" : [ "Geneva" ],
					"fontsize" : [ 9.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
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
					"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
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
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
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
				"name" : "clean",
				"default" : 				{
					"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
					"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cleanGreen",
				"default" : 				{
					"patchlinecolor" : [ 0.548569, 0.71066, 0.19772, 0.901961 ]
				}
,
				"parentstyle" : "clean",
				"multi" : 0
			}
, 			{
				"name" : "cleanMini",
				"default" : 				{
					"fontsize" : [ 9.0 ]
				}
,
				"parentstyle" : "clean",
				"multi" : 0
			}
, 			{
				"name" : "cleanenzo",
				"default" : 				{
					"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
					"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cleanpink",
				"default" : 				{
					"patchlinecolor" : [ 0.701961, 0.415686, 0.886275, 0.901961 ]
				}
,
				"parentstyle" : "cleanGreen",
				"multi" : 0
			}
, 			{
				"name" : "cleanred",
				"default" : 				{
					"patchlinecolor" : [ 0.92549, 0.364706, 0.341176, 0.901961 ]
				}
,
				"parentstyle" : "cleanGreen",
				"multi" : 0
			}
, 			{
				"name" : "comment001",
				"default" : 				{
					"fontname" : [ "Arial Bold" ],
					"fontsize" : [ 10.0 ],
					"textcolor" : [ 0.301961, 0.701961, 0.301961, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "comment001-1",
				"parentstyle" : "redness",
				"multi" : 0
			}
, 			{
				"name" : "comment001-2",
				"parentstyle" : "redness",
				"multi" : 0
			}
, 			{
				"name" : "comment001-3",
				"parentstyle" : "redness",
				"multi" : 0
			}
, 			{
				"name" : "dark-night-patch",
				"default" : 				{
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "default_style",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "default_style-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "helpfile_label-1",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontsize" : [ 13.0 ],
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
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
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"clearcolor" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
					"fontname" : [ "Ableton Sans Book" ],
					"fontsize" : [ 9.5 ],
					"patchlinecolor" : [ 0.65098, 0.65098, 0.65098, 0.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpink",
				"default" : 				{
					"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"clearcolor" : [ 0.113725, 0.607843, 0.607843, 1.0 ],
					"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"elementcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"patchlinecolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"selectioncolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"textcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ]
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
				"name" : "m4va",
				"default" : 				{
					"bgcolor" : [ 0.788235, 0.8, 0.843137, 0.0 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 12.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "m4vatextbutton",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.264542, 0.246412, 0.247132, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.264542, 0.246412, 0.247132, 1.0 ],
					"fontsize" : [ 14.0 ],
					"selectioncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-1-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-1-1-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-1-1-1-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-1-1-1-1-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-1-1-1-2",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-1-1-1-3",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-1-1-2",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-1-1-2-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-1-1-3",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-1-2",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-1-3",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-1-3-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-1-4",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-2",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-2-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-2-1-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-2-2",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-2-3",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-3",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-4",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-5",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-6",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "master_style-6-1",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "master_style-7",
				"newobj" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"gain~" : 				{
					"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"kslider" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "messageGreen-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.165741, 0.364658, 0.14032, 0.74 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "messagegold",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.764706, 0.592157, 0.101961, 0.74 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "minimal",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
						"color1" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.99,
						"type" : "color"
					}
,
					"color" : [ 0.345098, 0.513725, 0.572549, 0.78 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 0.44 ],
					"patchlinecolor" : [ 0.65, 0.65, 0.65, 0.9 ],
					"selectioncolor" : [ 0.862745, 0.741176, 0.137255, 0.7 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey",
				"default" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Verdana" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : [ 1 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1",
				"default" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Verdana" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : [ 1 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1-1",
				"default" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Verdana" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : [ 1 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-1-1-1",
				"default" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Verdana" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : [ 1 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-2",
				"default" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Verdana" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : [ 1 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multi_grey-3",
				"default" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontface" : [ 1 ],
					"fontname" : [ "Verdana" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textjustification" : [ 1 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"filtergraph~" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "multisliderBlue&Yellow",
				"default" : 				{
					"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.79 ],
					"color" : [ 0.960784, 0.867826, 0.084811, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrDict",
				"default" : 				{
					"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrInit",
				"default" : 				{
					"accentcolor" : [ 0.0, 1.0, 0.501961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrLiveObject",
				"default" : 				{
					"accentcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrPattr",
				"default" : 				{
					"accentcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"fontface" : [ 0 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 12.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrReceive",
				"default" : 				{
					"accentcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrSend",
				"default" : 				{
					"accentcolor" : [ 0.466667, 0.254902, 0.607843, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrSubpatch",
				"default" : 				{
					"accentcolor" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 12.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "myrValue",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_blue_bg",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
					"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
					"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
					"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1-1",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1-1-1",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
					"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1-1-1-1",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1-1-1-1-1",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
					"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1-1-2",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
					"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1-2",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "new_yellow-1-2-1",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
					"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
					"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
				}
,
				"newobj" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobj001",
				"default" : 				{
					"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
					"fontname" : [ "Arial Bold" ],
					"fontsize" : [ 10.0 ]
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
				"name" : "newobjBlue-3",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-4",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-5",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBronze",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "newobjYellow",
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
				"name" : "newobjBrown-2",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBrown-3",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBrown-4",
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
				"name" : "newobjGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
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
				"name" : "newobjGreen-2",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-3",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-4",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-5",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjMagenta-1",
				"default" : 				{
					"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
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
				"name" : "newobjYellow-3",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-4",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-5",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-6",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberB-1",
				"default" : 				{
					"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberG-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
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
				"name" : "numberGold-2",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-3",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-4",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-5",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberR-1",
				"default" : 				{
					"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberW",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "oni",
				"button" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"umenu" : 				{
					"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"parentstyle" : "oni_default-1",
				"multi" : 1
			}
, 			{
				"name" : "oni_default",
				"newobj" : 				{
					"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
					"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
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
				"preset" : 				{
					"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
				}
,
				"textbutton" : 				{
					"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
					"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"color2" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 1.0, 0.998287, 0.929809, 1.0 ]
				}
,
				"tab" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
					"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
					"fontname" : [ "Futura Std Book" ],
					"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
				}
,
				"comment" : 				{
					"fontname" : [ "Futura Std Book" ],
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"number" : 				{
					"fontname" : [ "Futura Std Book" ],
					"fontsize" : [ 12.0 ]
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
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
				}
,
				"comment" : 				{
					"fontname" : [ "Futura Std Book" ],
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"number" : 				{
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
				}
,
				"comment" : 				{
					"fontname" : [ "Futura Std Book" ],
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"number" : 				{
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
				}
,
				"comment" : 				{
					"fontname" : [ "Futura Std Book" ],
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"number" : 				{
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
				}
,
				"comment" : 				{
					"fontname" : [ "Futura Std Book" ],
					"fontsize" : [ 12.0 ],
					"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
					"textjustification" : [ 2 ]
				}
,
				"number" : 				{
					"fontname" : [ "Futura Std Book" ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "orangeBlue",
				"default" : 				{
					"accentcolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
					"color" : [ 0.027451, 0.0, 0.305882, 1.0 ],
					"elementcolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"selectioncolor" : [ 1.0, 0.788235, 0.301961, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.376471, 0.305882, 1.0 ]
				}
,
				"parentstyle" : "blueYellowSlider",
				"multi" : 0
			}
, 			{
				"name" : "orangeBlue-1",
				"default" : 				{
					"accentcolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"color" : [ 1.0, 0.376938, 0.307692, 1.0 ],
					"selectioncolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.376471, 0.305882, 1.0 ]
				}
,
				"parentstyle" : "blueYellowSlider",
				"multi" : 0
			}
, 			{
				"name" : "orangeBlue2",
				"default" : 				{
					"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
				}
,
				"parentstyle" : "orangeBlue",
				"multi" : 0
			}
, 			{
				"name" : "orangeBlueMeter",
				"default" : 				{
					"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
					"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
				}
,
				"parentstyle" : "orangeBlue2",
				"multi" : 0
			}
, 			{
				"name" : "orangeBlueNumber",
				"parentstyle" : "orangeBlue",
				"multi" : 0
			}
, 			{
				"name" : "orangeBlueSlider",
				"default" : 				{
					"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
					"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
				}
,
				"parentstyle" : "orangeBlue2",
				"multi" : 0
			}
, 			{
				"name" : "orangeBlueTog",
				"default" : 				{
					"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
					"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
					"elementcolor" : [ 0.490196, 0.0, 0.309804, 1.0 ]
				}
,
				"parentstyle" : "orangeBlue-1",
				"multi" : 0
			}
, 			{
				"name" : "panelGold-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.764706, 0.592157, 0.101961, 0.25 ],
						"color1" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "panelViolet",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.372549, 0.196078, 0.486275, 0.2 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
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
				"name" : "rinox",
				"default" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"fontsize" : [ 10.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "rsliderGold",
				"default" : 				{
					"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
					"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
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
				"name" : "shittyStyle",
				"default" : 				{
					"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"elementcolor" : [ 0.871412, 0.955014, 0.629622, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.078431, 0.321569, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "simple",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "style test",
				"default" : 				{
					"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
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
					"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tastefultoggle",
				"default" : 				{
					"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
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
				"name" : "texteditGold",
				"default" : 				{
					"bgcolor" : [ 0.764706, 0.592157, 0.101961, 0.68 ],
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
, 			{
				"name" : "vb green",
				"button" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"textbutton" : 				{
					"bgcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
					"centerjust" : [ 2 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : [ 1 ],
					"fontsize" : [ 16.0 ],
					"selectioncolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
					"elementcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ],
					"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
				}
,
				"comment" : 				{
					"fontface" : [ 1 ],
					"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "vb pink",
				"textbutton" : 				{
					"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
					"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
				}
,
				"umenu" : 				{
					"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
				}
,
				"parentstyle" : "vb purple",
				"multi" : 1
			}
, 			{
				"name" : "vb pink-1",
				"textbutton" : 				{
					"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
					"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
				}
,
				"umenu" : 				{
					"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "vb purple",
				"button" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"textbutton" : 				{
					"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"centerjust" : [ 2 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : [ 1 ],
					"fontsize" : [ 16.0 ],
					"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ],
					"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
				}
,
				"comment" : 				{
					"fontface" : [ 1 ],
					"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "vb purple-1",
				"button" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"textbutton" : 				{
					"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"centerjust" : [ 2 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : [ 1 ],
					"fontsize" : [ 16.0 ],
					"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ],
					"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
				}
,
				"comment" : 				{
					"fontface" : [ 1 ],
					"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "vbio",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "vs_comment",
				"default" : 				{
					"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor" : [ 1.0, 0.709804, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "vs_patcher_background",
				"default" : 				{
					"editing_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ],
					"locked_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "whitey",
				"default" : 				{
					"fontname" : [ "Dirty Ego" ],
					"fontsize" : [ 36.0 ],
					"patchlinecolor" : [ 0.199068, 0.062496, 0.060031, 0.9 ],
					"selectioncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"textcolor_inverse" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
		"color" : [ 0.945098039215686, 1.0, 0.984313725490196, 1.0 ],
		"elementcolor" : [ 0.501960784313725, 0.388235294117647, 0.411764705882353, 1.0 ],
		"accentcolor" : [ 0.462745098039216, 0.258823529411765, 0.305882352941176, 1.0 ],
		"selectioncolor" : [ 0.929411764705882, 0.788235294117647, 0.352941176470588, 1.0 ],
		"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
		"textcolor_inverse" : [ 1.0, 0.803921568627451, 0.541176470588235, 1.0 ],
		"patchlinecolor" : [ 0.298039215686275, 0.215686274509804, 0.196078431372549, 0.611764705882353 ],
		"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
		"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
		"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
		"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
	}

}
