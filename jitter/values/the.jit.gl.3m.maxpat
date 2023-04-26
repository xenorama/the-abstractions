{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 417.0, 136.0, 1079.0, 855.0 ],
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
		"tags" : "jitter glsl",
		"style" : "",
		"subpatcher_template" : "Default Max 7",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.096930474042892, 0.440656125545502, 0.980045557022095, 1.0 ],
					"color" : [ 0.743439078330994, 0.235420942306519, 0.121469646692276, 1.0 ],
					"hidden" : 1,
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 5,
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture", "jit_gl_texture", "jit_gl_texture", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "jit.gen",
						"rect" : [ 424.0, 252.0, 1066.0, 711.0 ],
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
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-11",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 869.523824896131373, 99.0, 185.0, 64.0 ],
									"text" : "0 = apha is considered for mean/absolute mean calculation\n1 = alpha always 1 nd not considered",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-10",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 869.523824896131373, 22.0, 185.0, 64.0 ],
									"text" : "0 = average all min/mean/max values per channel to outlet 4\n1 = calculate min/mean/max across  all channels",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 745.0, 103.0, 119.0, 22.0 ],
									"text" : "param ignorealpha 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 759.0, 25.0, 105.0, 22.0 ],
									"text" : "param avgmode 0"
								}

							}
, 							{
								"box" : 								{
									"code" : "Param avgmode(0);\nParam ignorealpha(1);\r\nalpha = vec(0,0,0,1);\ndivider = 3;\n\nif (ignorealpha == 0) {\n  alpha = vec(in1.w,in2.w,in3.w,in1.w);\n  divider = 4;\n}\n\nif (avgmode == 1)\n\tout1 = vec(\n\t(in1.x + in1.y + in1.z + alpha.x)/divider,\n\t(in2.x + in2.y + in2.z + alpha.y)/divider,\n\t(in3.x + in3.y + in3.z + alpha.z)/divider,\n  1.);\nelse out1 = vec(\n  min(in1.x,min(in1.y,min(in1.z,alpha.w))),\n  (in2.x + in2.y + in2.z + alpha.y)/divider,\n  max(in3.x,max(in3.y,max(in3.z,alpha.z)))\n);\n",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-29",
									"maxclass" : "codebox",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 473.547649792262746, 233.0, 443.0, 359.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 406.523824896131373, 65.0, 111.0, 22.0 ],
									"text" : "vec 0 sampleOffset"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.523824896131373, 109.0, 64.0, 22.0 ],
									"text" : "nearest"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.523824896131373, 65.0, 28.0, 22.0 ],
									"text" : "in 4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.0, 65.0, 111.0, 22.0 ],
									"text" : "vec 0 sampleOffset"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.0, 109.0, 64.0, 22.0 ],
									"text" : "nearest"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.0, 65.0, 28.0, 22.0 ],
									"text" : "in 3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-17",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 482.047649792262746, 641.0, 137.0, 35.0 ],
									"text" : "rgb = mean of all planes (min/mean/max)",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 473.547649792262746, 617.0, 35.0, 22.0 ],
									"text" : "out 4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 361.523824896131373, 617.0, 35.0, 22.0 ],
									"text" : "out 3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 189.0, 617.0, 35.0, 22.0 ],
									"text" : "out 2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 361.523824896131373, 641.0, 38.0, 21.0 ],
									"text" : "max",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 641.0, 47.0, 21.0 ],
									"text" : "min",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 189.0, 641.0, 38.0, 21.0 ],
									"text" : "mean",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 541.523824896131373, 65.0, 185.0, 35.0 ],
									"text" : "top left pixel contains\nvec2([value-range],[lowest-value])",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 172.857159222875453, 25.0, 339.66666567325592, 21.0 ],
									"text" : "vertical offset required to sample the top left pixel",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 25.0, 150.0, 22.0 ],
									"text" : "param sampleOffset 0.007"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.0, 65.0, 111.0, 22.0 ],
									"text" : "vec 0 sampleOffset"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 109.0, 64.0, 22.0 ],
									"text" : "nearest"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 65.0, 28.0, 22.0 ],
									"text" : "in 2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 617.0, 35.0, 22.0 ],
									"text" : "out 1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"midpoints" : [ 198.5, 193.0, 695.047649792262746, 193.0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 2 ],
									"midpoints" : [ 371.023824896131373, 178.0, 907.047649792262746, 178.0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 33.5, 209.0, 483.047649792262746, 209.0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 33.5, 246.0, 33.5, 246.0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Audiomix",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Heading",
								"default" : 								{
									"clearcolor" : [ 0.65098, 0.666667, 0.662745, 0.68 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "J-Patcher Color",
								"default" : 								{
									"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Jamoma_highlighted_orange",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.5, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle",
								"newobj" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"color" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"comment" : 								{
									"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle2",
								"default" : 								{
									"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 0.81 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 0.5 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Larry 5-9-2015",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"fontname" : [ "Century Gothic" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Larry 8-9-2015",
								"parentstyle" : "Heading",
								"multi" : 0
							}
, 							{
								"name" : "Loadbang class objects",
								"default" : 								{
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
, 							{
								"name" : "Luca",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Matt",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Solarized_01",
								"default" : 								{
									"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
									"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
										"color2" : [ 0.015924, 0.126521, 0.159696, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Solarized_02",
								"default" : 								{
									"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
									"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Teaching",
								"default" : 								{
									"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
									"fontface" : [ 0 ],
									"fontsize" : [ 18.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "WTF",
								"default" : 								{
									"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Xenorama",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "afxyellow",
								"multislider" : 								{
									"bgcolor" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
									"color" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
										"color2" : [ 0.685, 0.685, 0.685, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.79
									}
,
									"fontname" : [ "Arial" ],
									"fontsize" : [ 30.0 ],
									"textcolor_inverse" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 0.679508, 0.55813, 0.006126, 1.0 ],
									"elementcolor" : [ 0.451979, 0.451979, 0.451979, 1.0 ],
									"textcolor_inverse" : [ 0.881305, 0.881305, 0.881305, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 24.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "blueYellowSlider",
								"default" : 								{
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
, 							{
								"name" : "blue_new_bg_1",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "buttonBlue",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "buttonPurple",
								"default" : 								{
									"bgcolor" : [ 0.372549, 0.196078, 0.486275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classic",
								"default" : 								{
									"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "classicButton",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicDial",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGain~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch2",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicKslider",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicLed",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMatrixctrl",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMeter~",
								"default" : 								{
									"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNodes",
								"default" : 								{
									"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNslider",
								"default" : 								{
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNumber",
								"default" : 								{
									"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPictslider",
								"default" : 								{
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPreset",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicScope~",
								"default" : 								{
									"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTab",
								"default" : 								{
									"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTextbutton",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicToggle",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicUmenu",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicWaveform~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "clean",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanGreen",
								"default" : 								{
									"patchlinecolor" : [ 0.548569, 0.71066, 0.19772, 0.901961 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanMini",
								"default" : 								{
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanenzo",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanpink",
								"default" : 								{
									"patchlinecolor" : [ 0.701961, 0.415686, 0.886275, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "cleanred",
								"default" : 								{
									"patchlinecolor" : [ 0.92549, 0.364706, 0.341176, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "comment001",
								"default" : 								{
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ],
									"textcolor" : [ 0.301961, 0.701961, 0.301961, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "comment001-1",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-2",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-3",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "dark-night-patch",
								"default" : 								{
									"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
									"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "default_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "default_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "helpfile_label-1",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 13.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher001",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher002",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "jpink",
								"default" : 								{
									"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
									"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "ksliderWhite",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "lightbutton",
								"default" : 								{
									"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
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
								"name" : "m4va",
								"default" : 								{
									"bgcolor" : [ 0.788235, 0.8, 0.843137, 0.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "m4vatextbutton",
								"default" : 								{
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
, 							{
								"name" : "master_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-2-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-5",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-7",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "messageGreen-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.165741, 0.364658, 0.14032, 0.74 ],
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
, 							{
								"name" : "messagegold",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 0.74 ],
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
, 							{
								"name" : "minimal",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
										"color1" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.99,
										"autogradient" : 0
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
, 							{
								"name" : "multi_grey",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-2",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-3",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multisliderBlue&Yellow",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.79 ],
									"color" : [ 0.960784, 0.867826, 0.084811, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrDict",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrInit",
								"default" : 								{
									"accentcolor" : [ 0.0, 1.0, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrLiveObject",
								"default" : 								{
									"accentcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrPattr",
								"default" : 								{
									"accentcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
									"fontface" : [ 0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrReceive",
								"default" : 								{
									"accentcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSend",
								"default" : 								{
									"accentcolor" : [ 0.466667, 0.254902, 0.607843, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSubpatch",
								"default" : 								{
									"accentcolor" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrValue",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_blue_bg",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobj001",
								"default" : 								{
									"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-2",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-3",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-4",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-5",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBronze",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "newobjYellow",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-1",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-2",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-3",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-4",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjCyan-1",
								"default" : 								{
									"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-2",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-3",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-4",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-5",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjMagenta-1",
								"default" : 								{
									"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjRed-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-2",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-3",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-4",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-5",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-6",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberB-1",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberG-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-2",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-3",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-4",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-5",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberR-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberW",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "oni",
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"textbutton" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
								}
,
								"panel" : 								{
									"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
								}
,
								"dial" : 								{
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
								}
,
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
									"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
									"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"tab" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
									"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "orangeBlue",
								"default" : 								{
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
, 							{
								"name" : "orangeBlue-1",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376938, 0.307692, 1.0 ],
									"selectioncolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.376471, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "blueYellowSlider",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlue2",
								"default" : 								{
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueMeter",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueNumber",
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueSlider",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueTog",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.490196, 0.0, 0.309804, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue-1",
								"multi" : 0
							}
, 							{
								"name" : "panelGold-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.764706, 0.592157, 0.101961, 0.25 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
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
, 							{
								"name" : "panelViolet",
								"default" : 								{
									"bgfillcolor" : 									{
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
								"name" : "purple",
								"default" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
									"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "receives",
								"default" : 								{
									"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rinox",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"fontsize" : [ 10.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rsliderGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
									"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "sends",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "shittyStyle",
								"default" : 								{
									"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
									"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"elementcolor" : [ 0.871412, 0.955014, 0.629622, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.078431, 0.321569, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "simple",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "style test",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefulltoggle",
								"default" : 								{
									"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefultoggle",
								"default" : 								{
									"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "test",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "texteditGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 0.68 ],
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
, 							{
								"name" : "vb green",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb pink",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "vb purple",
								"multi" : 1
							}
, 							{
								"name" : "vb pink-1",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vb purple",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb purple-1",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vbio",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_comment",
								"default" : 								{
									"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor" : [ 1.0, 0.709804, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_patcher_background",
								"default" : 								{
									"editing_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ],
									"locked_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "whitey",
								"default" : 								{
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
 ]
					}
,
					"patching_rect" : [ 524.0, 668.999991178512573, 160.0, 35.0 ],
					"text" : "jit.gl.pix @t apply @dim 1 1 @adapt 0",
					"textcolor" : [ 0.875831604003906, 0.744177997112274, 0.033599980175495, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.jit.gl.3m: dumpout ",
					"id" : "obj-22",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 320.0, 783.999991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.096930474042892, 0.440656125545502, 0.980045557022095, 1.0 ],
					"color" : [ 0.743439078330994, 0.235420942306519, 0.121469646692276, 1.0 ],
					"hidden" : 1,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture", "jit_gl_texture", "jit_gl_texture", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "jit.gen",
						"rect" : [ 787.0, 463.0, 572.0, 391.0 ],
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
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 156.0, 41.0, 22.0 ],
									"text" : "swiz y"
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-17",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 457.523824896131373, 199.0, 89.0, 35.0 ],
									"text" : "rgb = min/mean/max",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 419.0, 212.0, 35.0, 22.0 ],
									"text" : "out 4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 286.0, 212.0, 35.0, 22.0 ],
									"text" : "out 3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 212.0, 35.0, 22.0 ],
									"text" : "out 2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 334.523824896131373, 155.0, 38.0, 21.0 ],
									"text" : "max",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 286.0, 155.0, 41.0, 22.0 ],
									"text" : "swiz z"
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.523824896131373, 156.0, 47.0, 21.0 ],
									"text" : "min",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 212.523824896131373, 155.0, 38.0, 21.0 ],
									"text" : "mean",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 327.523824896131373, 63.0, 185.0, 35.0 ],
									"text" : "top left pixel contains\nvec2([value-range],[lowest-value])",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 172.857159222875453, 25.0, 339.66666567325592, 21.0 ],
									"text" : "vertical offset required to sample the top left pixel",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 156.0, 41.0, 22.0 ],
									"text" : "swiz x"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 25.0, 150.0, 22.0 ],
									"text" : "param sampleOffset 0.007"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 63.0, 111.0, 22.0 ],
									"text" : "vec 0 sampleOffset"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 102.0, 64.0, 22.0 ],
									"text" : "nearest"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 63.0, 28.0, 22.0 ],
									"text" : "in 1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 63.0, 28.0, 22.0 ],
									"text" : "in 2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 46.0, 212.0, 35.0, 22.0 ],
									"text" : "out 1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 173.5, 139.0, 55.5, 139.0 ],
									"order" : 3,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 173.5, 139.0, 295.5, 139.0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 173.5, 139.5, 428.5, 139.5 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 2,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Audiomix",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Heading",
								"default" : 								{
									"clearcolor" : [ 0.65098, 0.666667, 0.662745, 0.68 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "J-Patcher Color",
								"default" : 								{
									"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Jamoma_highlighted_orange",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.5, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle",
								"newobj" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"color" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"comment" : 								{
									"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle2",
								"default" : 								{
									"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 0.81 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 0.5 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Larry 5-9-2015",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"fontname" : [ "Century Gothic" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Larry 8-9-2015",
								"parentstyle" : "Heading",
								"multi" : 0
							}
, 							{
								"name" : "Loadbang class objects",
								"default" : 								{
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
, 							{
								"name" : "Luca",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Matt",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Solarized_01",
								"default" : 								{
									"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
									"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
										"color2" : [ 0.015924, 0.126521, 0.159696, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Solarized_02",
								"default" : 								{
									"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
									"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Teaching",
								"default" : 								{
									"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
									"fontface" : [ 0 ],
									"fontsize" : [ 18.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "WTF",
								"default" : 								{
									"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Xenorama",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "afxyellow",
								"multislider" : 								{
									"bgcolor" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
									"color" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
										"color2" : [ 0.685, 0.685, 0.685, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.79
									}
,
									"fontname" : [ "Arial" ],
									"fontsize" : [ 30.0 ],
									"textcolor_inverse" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 0.679508, 0.55813, 0.006126, 1.0 ],
									"elementcolor" : [ 0.451979, 0.451979, 0.451979, 1.0 ],
									"textcolor_inverse" : [ 0.881305, 0.881305, 0.881305, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 24.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "blueYellowSlider",
								"default" : 								{
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
, 							{
								"name" : "blue_new_bg_1",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "buttonBlue",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "buttonPurple",
								"default" : 								{
									"bgcolor" : [ 0.372549, 0.196078, 0.486275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classic",
								"default" : 								{
									"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "classicButton",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicDial",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGain~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch2",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicKslider",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicLed",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMatrixctrl",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMeter~",
								"default" : 								{
									"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNodes",
								"default" : 								{
									"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNslider",
								"default" : 								{
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNumber",
								"default" : 								{
									"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPictslider",
								"default" : 								{
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPreset",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicScope~",
								"default" : 								{
									"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTab",
								"default" : 								{
									"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTextbutton",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicToggle",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicUmenu",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicWaveform~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "clean",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanGreen",
								"default" : 								{
									"patchlinecolor" : [ 0.548569, 0.71066, 0.19772, 0.901961 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanMini",
								"default" : 								{
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanenzo",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanpink",
								"default" : 								{
									"patchlinecolor" : [ 0.701961, 0.415686, 0.886275, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "cleanred",
								"default" : 								{
									"patchlinecolor" : [ 0.92549, 0.364706, 0.341176, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "comment001",
								"default" : 								{
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ],
									"textcolor" : [ 0.301961, 0.701961, 0.301961, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "comment001-1",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-2",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-3",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "dark-night-patch",
								"default" : 								{
									"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
									"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "default_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "default_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "helpfile_label-1",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 13.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher001",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher002",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "jpink",
								"default" : 								{
									"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
									"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "ksliderWhite",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "lightbutton",
								"default" : 								{
									"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
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
								"name" : "m4va",
								"default" : 								{
									"bgcolor" : [ 0.788235, 0.8, 0.843137, 0.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "m4vatextbutton",
								"default" : 								{
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
, 							{
								"name" : "master_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-2-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-5",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-7",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "messageGreen-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.165741, 0.364658, 0.14032, 0.74 ],
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
, 							{
								"name" : "messagegold",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 0.74 ],
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
, 							{
								"name" : "minimal",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
										"color1" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.99,
										"autogradient" : 0
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
, 							{
								"name" : "multi_grey",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-2",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-3",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multisliderBlue&Yellow",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.79 ],
									"color" : [ 0.960784, 0.867826, 0.084811, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrDict",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrInit",
								"default" : 								{
									"accentcolor" : [ 0.0, 1.0, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrLiveObject",
								"default" : 								{
									"accentcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrPattr",
								"default" : 								{
									"accentcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
									"fontface" : [ 0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrReceive",
								"default" : 								{
									"accentcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSend",
								"default" : 								{
									"accentcolor" : [ 0.466667, 0.254902, 0.607843, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSubpatch",
								"default" : 								{
									"accentcolor" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrValue",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_blue_bg",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobj001",
								"default" : 								{
									"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-2",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-3",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-4",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-5",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBronze",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "newobjYellow",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-1",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-2",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-3",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-4",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjCyan-1",
								"default" : 								{
									"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-2",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-3",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-4",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-5",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjMagenta-1",
								"default" : 								{
									"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjRed-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-2",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-3",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-4",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-5",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-6",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberB-1",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberG-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-2",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-3",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-4",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-5",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberR-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberW",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "oni",
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"textbutton" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
								}
,
								"panel" : 								{
									"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
								}
,
								"dial" : 								{
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
								}
,
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
									"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
									"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"tab" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
									"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "orangeBlue",
								"default" : 								{
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
, 							{
								"name" : "orangeBlue-1",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376938, 0.307692, 1.0 ],
									"selectioncolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.376471, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "blueYellowSlider",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlue2",
								"default" : 								{
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueMeter",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueNumber",
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueSlider",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueTog",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.490196, 0.0, 0.309804, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue-1",
								"multi" : 0
							}
, 							{
								"name" : "panelGold-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.764706, 0.592157, 0.101961, 0.25 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
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
, 							{
								"name" : "panelViolet",
								"default" : 								{
									"bgfillcolor" : 									{
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
								"name" : "purple",
								"default" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
									"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "receives",
								"default" : 								{
									"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rinox",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"fontsize" : [ 10.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rsliderGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
									"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "sends",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "shittyStyle",
								"default" : 								{
									"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
									"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"elementcolor" : [ 0.871412, 0.955014, 0.629622, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.078431, 0.321569, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "simple",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "style test",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefulltoggle",
								"default" : 								{
									"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefultoggle",
								"default" : 								{
									"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "test",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "texteditGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 0.68 ],
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
, 							{
								"name" : "vb green",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb pink",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "vb purple",
								"multi" : 1
							}
, 							{
								"name" : "vb pink-1",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vb purple",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb purple-1",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vbio",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_comment",
								"default" : 								{
									"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor" : [ 1.0, 0.709804, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_patcher_background",
								"default" : 								{
									"editing_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ],
									"locked_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "whitey",
								"default" : 								{
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
 ]
					}
,
					"patching_rect" : [ 524.0, 718.999991178512573, 160.0, 35.0 ],
					"text" : "jit.gl.pix @t apply @dim 1 1 @adapt 0",
					"textcolor" : [ 0.875831604003906, 0.744177997112274, 0.033599980175495, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.jit.gl.3m: (jit_gl_texture) ",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 284.75, 783.999991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.jit.gl.3m: (jit_gl_texture) maximum values of RGB channels",
					"id" : "obj-30",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.5, 783.999991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.jit.gl.3m: (jit_gl_texture) mean values of RGB channels",
					"id" : "obj-28",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 214.25, 783.999991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.333671, 0.378149, 0.42558, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 791.000000000000114, 511.0, 54.0, 22.0 ],
					"text" : "sel done",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 60.0, 372.999991178512573, 29.5, 22.0 ],
					"text" : "!- 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 404.999991178512573, 138.0, 22.0 ],
					"text" : "gate 2 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.344535, 0.418209, 0.290269, 1.0 ],
					"color" : [ 0.45522, 0.188215, 0.381035, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 340.999991178512573, 77.0, 22.0 ],
					"text" : "route bypass",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.372549, 0.164706, 0.066667, 1.0 ],
					"color" : [ 0.626893, 0.394594, 0.025588, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 826.000000000000114, 588.0, 97.0, 22.0 ],
					"text" : "print the.jit.gl.3m",
					"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
					"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 826.000000000000114, 548.0, 166.0, 22.0 ],
					"text" : "sprintf doesn't understand %s",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.968627, 0.968627, 0.968627, 1.0 ],
					"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
					"id" : "obj-1",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_gl_texture", "", "" ],
					"patching_rect" : [ 692.000000000000114, 432.0, 118.0, 62.0 ],
					"text" : "the.jit.attr.wrapper jit.gl.pix @pass 0 @custom avgmode ignorealpha",
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.547116, 0.396938, 0.623438, 1.0 ],
					"color" : [ 0.937255, 0.796078, 0.0, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 341.0, 271.999991178512573, 57.0, 22.0 ],
					"text" : "universal",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 239.999991178512573, 229.0, 22.0 ],
					"text" : "jit.gl.texture drawto $1, jit.gl.pix drawto $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.968627, 0.968627, 0.968627, 1.0 ],
					"color" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 897.0, 305.0, 433.0, 440.0 ],
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
									"bgcolor" : [ 0.344535, 0.418209, 0.290269, 1.0 ],
									"color" : [ 0.45522, 0.188215, 0.381035, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 64.0, 87.0, 22.0 ],
									"text" : "route precision",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 359.0, 334.0, 29.5, 22.0 ],
									"text" : "!/ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 359.0, 293.0, 29.5, 22.0 ],
									"text" : "$2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 359.0, 373.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 203.5, 258.0, 174.5, 22.0 ],
									"text" : "t l l",
									"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.5, 208.0, 39.0, 22.0 ],
									"text" : "$1 $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
									"color" : [ 0.482353, 0.0, 0.0, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
									"patching_rect" : [ 151.0, 166.5, 71.5, 22.0 ],
									"text" : "typeroute~",
									"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 203.5, 293.0, 108.0, 22.0 ],
									"text" : "adapt 0, dim $1 $2"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 77.0, 132.0, 93.0, 22.0 ],
									"text" : "t 2 l",
									"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 132.0, 22.0, 22.0 ],
									"text" : "t 1",
									"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.333671, 0.378149, 0.42558, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 100.0, 46.0, 22.0 ],
									"text" : "sel 0",
									"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 14.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 368.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 203.5, 368.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 86.5, 260.5, 59.5, 260.5 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-23", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-23", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-23", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Audiomix",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Heading",
								"default" : 								{
									"clearcolor" : [ 0.65098, 0.666667, 0.662745, 0.68 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "J-Patcher Color",
								"default" : 								{
									"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Jamoma_highlighted_orange",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.5, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle",
								"newobj" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"color" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"comment" : 								{
									"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle2",
								"default" : 								{
									"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 0.81 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 0.5 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Larry 5-9-2015",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"fontname" : [ "Century Gothic" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Larry 8-9-2015",
								"parentstyle" : "Heading",
								"multi" : 0
							}
, 							{
								"name" : "Loadbang class objects",
								"default" : 								{
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
, 							{
								"name" : "Luca",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Matt",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Solarized_01",
								"default" : 								{
									"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
									"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
										"color2" : [ 0.015924, 0.126521, 0.159696, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Solarized_02",
								"default" : 								{
									"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
									"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Teaching",
								"default" : 								{
									"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
									"fontface" : [ 0 ],
									"fontsize" : [ 18.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "WTF",
								"default" : 								{
									"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Xenorama",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "afxyellow",
								"multislider" : 								{
									"bgcolor" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
									"color" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
										"color2" : [ 0.685, 0.685, 0.685, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.79
									}
,
									"fontname" : [ "Arial" ],
									"fontsize" : [ 30.0 ],
									"textcolor_inverse" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 0.679508, 0.55813, 0.006126, 1.0 ],
									"elementcolor" : [ 0.451979, 0.451979, 0.451979, 1.0 ],
									"textcolor_inverse" : [ 0.881305, 0.881305, 0.881305, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 24.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "blueYellowSlider",
								"default" : 								{
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
, 							{
								"name" : "blue_new_bg_1",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "buttonBlue",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "buttonPurple",
								"default" : 								{
									"bgcolor" : [ 0.372549, 0.196078, 0.486275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classic",
								"default" : 								{
									"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "classicButton",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicDial",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGain~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch2",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicKslider",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicLed",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMatrixctrl",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMeter~",
								"default" : 								{
									"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNodes",
								"default" : 								{
									"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNslider",
								"default" : 								{
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNumber",
								"default" : 								{
									"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPictslider",
								"default" : 								{
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPreset",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicScope~",
								"default" : 								{
									"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTab",
								"default" : 								{
									"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTextbutton",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicToggle",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicUmenu",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicWaveform~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "clean",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanGreen",
								"default" : 								{
									"patchlinecolor" : [ 0.548569, 0.71066, 0.19772, 0.901961 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanMini",
								"default" : 								{
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanenzo",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanpink",
								"default" : 								{
									"patchlinecolor" : [ 0.701961, 0.415686, 0.886275, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "cleanred",
								"default" : 								{
									"patchlinecolor" : [ 0.92549, 0.364706, 0.341176, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "comment001",
								"default" : 								{
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ],
									"textcolor" : [ 0.301961, 0.701961, 0.301961, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "comment001-1",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-2",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-3",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "dark-night-patch",
								"default" : 								{
									"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
									"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "default_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "default_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "helpfile_label-1",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 13.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher001",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher002",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "jpink",
								"default" : 								{
									"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
									"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "ksliderWhite",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "lightbutton",
								"default" : 								{
									"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
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
								"name" : "m4va",
								"default" : 								{
									"bgcolor" : [ 0.788235, 0.8, 0.843137, 0.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "m4vatextbutton",
								"default" : 								{
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
, 							{
								"name" : "master_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-2-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-5",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-7",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "messageGreen-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.165741, 0.364658, 0.14032, 0.74 ],
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
, 							{
								"name" : "messagegold",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 0.74 ],
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
, 							{
								"name" : "minimal",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
										"color1" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.99,
										"autogradient" : 0
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
, 							{
								"name" : "multi_grey",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-2",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-3",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multisliderBlue&Yellow",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.79 ],
									"color" : [ 0.960784, 0.867826, 0.084811, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrDict",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrInit",
								"default" : 								{
									"accentcolor" : [ 0.0, 1.0, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrLiveObject",
								"default" : 								{
									"accentcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrPattr",
								"default" : 								{
									"accentcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
									"fontface" : [ 0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrReceive",
								"default" : 								{
									"accentcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSend",
								"default" : 								{
									"accentcolor" : [ 0.466667, 0.254902, 0.607843, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSubpatch",
								"default" : 								{
									"accentcolor" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrValue",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_blue_bg",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobj001",
								"default" : 								{
									"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-2",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-3",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-4",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-5",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBronze",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "newobjYellow",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-1",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-2",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-3",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-4",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjCyan-1",
								"default" : 								{
									"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-2",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-3",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-4",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-5",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjMagenta-1",
								"default" : 								{
									"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjRed-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-2",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-3",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-4",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-5",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-6",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberB-1",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberG-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-2",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-3",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-4",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-5",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberR-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberW",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "oni",
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"textbutton" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
								}
,
								"panel" : 								{
									"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
								}
,
								"dial" : 								{
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
								}
,
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
									"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
									"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"tab" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
									"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "orangeBlue",
								"default" : 								{
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
, 							{
								"name" : "orangeBlue-1",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376938, 0.307692, 1.0 ],
									"selectioncolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.376471, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "blueYellowSlider",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlue2",
								"default" : 								{
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueMeter",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueNumber",
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueSlider",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueTog",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.490196, 0.0, 0.309804, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue-1",
								"multi" : 0
							}
, 							{
								"name" : "panelGold-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.764706, 0.592157, 0.101961, 0.25 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
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
, 							{
								"name" : "panelViolet",
								"default" : 								{
									"bgfillcolor" : 									{
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
								"name" : "purple",
								"default" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
									"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "receives",
								"default" : 								{
									"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rinox",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"fontsize" : [ 10.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rsliderGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
									"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "sends",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "shittyStyle",
								"default" : 								{
									"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
									"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"elementcolor" : [ 0.871412, 0.955014, 0.629622, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.078431, 0.321569, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "simple",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "style test",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefulltoggle",
								"default" : 								{
									"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefultoggle",
								"default" : 								{
									"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "test",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "texteditGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 0.68 ],
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
, 							{
								"name" : "vb green",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb pink",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "vb purple",
								"multi" : 1
							}
, 							{
								"name" : "vb pink-1",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vb purple",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb purple-1",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vbio",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_comment",
								"default" : 								{
									"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor" : [ 1.0, 0.709804, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_patcher_background",
								"default" : 								{
									"editing_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ],
									"locked_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "whitey",
								"default" : 								{
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
						"color" : [ 0.996214628219604, 0.851524233818054, 0.347806602716446, 1.0 ],
						"accentcolor" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
						"selectioncolor" : [ 0.489759147167206, 0.682605266571045, 0.869955897331238, 1.0 ],
						"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
						"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.66 ],
						"bgcolor" : [ 0.63921568627451, 0.705882352941177, 0.72156862745098, 1.0 ],
						"editing_bgcolor" : [ 0.580392156862745, 0.650980392156863, 0.666666666666667, 1.0 ],
						"bgfillcolor_type" : "gradient",
						"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
						"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
						"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
					}
,
					"patching_rect" : [ 435.500000000000057, 386.0, 152.499999999999943, 22.0 ],
					"saved_object_attributes" : 					{
						"accentcolor" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
						"color" : [ 0.996214628219604, 0.851524233818054, 0.347806602716446, 1.0 ],
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.580392156862745, 0.650980392156863, 0.666666666666667, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.63921568627451, 0.705882352941177, 0.72156862745098, 1.0 ],
						"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.66 ],
						"selectioncolor" : [ 0.489759147167206, 0.682605266571045, 0.869955897331238, 1.0 ],
						"tags" : "",
						"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
					}
,
					"text" : "p precision",
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.811765, 1.0, 0.976471, 1.0 ],
					"color" : [ 0.211765, 0.898039, 0.576471, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 193.0, 459.999991178512573, 52.0, 22.0 ],
					"text" : "gate 2 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.596078, 0.058824, 1.0 ],
					"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 542.999991178512573, 179.0, 22.0 ],
					"text" : "loadmess sendoutput filter none",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 341.0, 207.999991178512573, 261.0, 22.0 ],
					"text" : "patcherargs @precision 128 128",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "sampleOffset",
					"id" : "obj-10",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 569.0, 571.999991178512573, 92.499999999999943, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.jit.gl.3m: (jit_gl_texture) minimum values of RGB channels",
					"id" : "obj-7",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.0, 783.999991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.1847313195467, 0.0, 0.153139352798462, 1.0 ],
					"color" : [ 0.110558107495308, 0.812045097351074, 0.546411156654358, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 226.0, 504.999991178512573, 194.0, 22.0 ],
					"text" : "jit.gl.texture @adapt 0 @filter none",
					"textcolor" : [ 0.810308635234833, 0.620984792709351, 0.233699977397919, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.096930474042892, 0.440656125545502, 0.980045557022095, 1.0 ],
					"color" : [ 0.743439078330994, 0.235420942306519, 0.121469646692276, 1.0 ],
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 5,
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture", "jit_gl_texture", "jit_gl_texture", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "jit.gen",
						"rect" : [ 424.0, 252.0, 1191.0, 692.0 ],
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
									"code" : "Param sampleOffset(0.007); // vertical offset required to sample the top left pixel\nParam avgmode(0); // 0 = average all min/mean/max values per channel to outlet 4, 1 = calculate min/mean/max across  all channels\nParam ignorealpha(1); // 0 = apha is considered for mean/absolute mean calculation, 1 = alpha always 1 nd not considered\nalpha = vec(0,0,0,1);\ndivider = 3;\n\npos = vec(0,sampleOffset);\n\np1 = nearest(in1, pos);\np2 = nearest(in2, pos);\np3 = nearest(in3, pos);\n\nif (ignorealpha == 0) {\n  alpha = vec(p1.w,p2.w,p3.w,p1.w);\n  divider = 4;\n}\n\nif (avgmode == 1)\n\tout1 = vec(\n\t(p1.x + p1.y + p1.z + alpha.x)/divider,\n\t(p2.x + p2.y + p2.z + alpha.y)/divider,\n\t(p3.x + p3.y + p3.z + alpha.z)/divider,\n  1.);\nelse out4 = vec(\n  min(p1.x,min(p1.y,min(p1.z,alpha.w))),\n  (p2.x + p2.y + p2.z + alpha.y)/divider,\n  max(p3.x,max(p3.y,max(p3.z,alpha.z)))\n); \n\r\nout1, out2, out3 = p1, p2, p3;",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-29",
									"maxclass" : "codebox",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 24.0, 100.0, 1012.523824896131373, 474.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1017.523824896131487, 65.0, 28.0, 22.0 ],
									"text" : "in 4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 521.0, 65.0, 28.0, 22.0 ],
									"text" : "in 3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-17",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1017.523824896131487, 626.0, 137.0, 35.0 ],
									"text" : "rgb = mean of all planes (min/mean/max)",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1017.523824896131487, 602.0, 35.0, 22.0 ],
									"text" : "out 4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 686.349216597420877, 602.0, 35.0, 22.0 ],
									"text" : "out 3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 355.174608298710439, 602.0, 35.0, 22.0 ],
									"text" : "out 2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 686.349216597420877, 626.0, 38.0, 21.0 ],
									"text" : "max",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 626.0, 47.0, 21.0 ],
									"text" : "min",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 355.174608298710439, 626.0, 38.0, 21.0 ],
									"text" : "mean",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubbleusescolors" : 1,
									"fontname" : "Lato",
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 15.0, 185.0, 35.0 ],
									"text" : "top left pixel contains\nvec2([value-range],[lowest-value])",
									"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
									"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 65.0, 28.0, 22.0 ],
									"text" : "in 2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
									"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ],
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 602.0, 35.0, 22.0 ],
									"text" : "out 1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 33.5, 106.0, 33.5, 106.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"midpoints" : [ 530.5, 106.0, 530.261912448065686, 106.0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 2 ],
									"midpoints" : [ 1027.023824896131373, 112.5, 1027.023824896131373, 112.5 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-29", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-29", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Audiomix",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Heading",
								"default" : 								{
									"clearcolor" : [ 0.65098, 0.666667, 0.662745, 0.68 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "J-Patcher Color",
								"default" : 								{
									"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Jamoma_highlighted_orange",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.5, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle",
								"newobj" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"color" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
										"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
										"angle" : 270.0,
										"proportion" : 0.504115,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"comment" : 								{
									"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "JulStyle2",
								"default" : 								{
									"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 0.81 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 0.5 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Larry 5-9-2015",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"fontname" : [ "Century Gothic" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Larry 8-9-2015",
								"parentstyle" : "Heading",
								"multi" : 0
							}
, 							{
								"name" : "Loadbang class objects",
								"default" : 								{
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
, 							{
								"name" : "Luca",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Matt",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "Solarized_01",
								"default" : 								{
									"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
									"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
										"color2" : [ 0.015924, 0.126521, 0.159696, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Solarized_02",
								"default" : 								{
									"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
									"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"color2" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Teaching",
								"default" : 								{
									"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
									"fontface" : [ 0 ],
									"fontsize" : [ 18.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "WTF",
								"default" : 								{
									"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "Xenorama",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "afxyellow",
								"multislider" : 								{
									"bgcolor" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
									"color" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
										"color2" : [ 0.685, 0.685, 0.685, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.79
									}
,
									"fontname" : [ "Arial" ],
									"fontsize" : [ 30.0 ],
									"textcolor_inverse" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 0.679508, 0.55813, 0.006126, 1.0 ],
									"elementcolor" : [ 0.451979, 0.451979, 0.451979, 1.0 ],
									"textcolor_inverse" : [ 0.881305, 0.881305, 0.881305, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 24.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "blueYellowSlider",
								"default" : 								{
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
, 							{
								"name" : "blue_new_bg_1",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "buttonBlue",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "buttonPurple",
								"default" : 								{
									"bgcolor" : [ 0.372549, 0.196078, 0.486275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classic",
								"default" : 								{
									"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "classicButton",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicDial",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGain~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicGswitch2",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicKslider",
								"default" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicLed",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMatrixctrl",
								"default" : 								{
									"color" : [ 1.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicMeter~",
								"default" : 								{
									"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNodes",
								"default" : 								{
									"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNslider",
								"default" : 								{
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicNumber",
								"default" : 								{
									"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPictslider",
								"default" : 								{
									"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicPreset",
								"default" : 								{
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicScope~",
								"default" : 								{
									"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTab",
								"default" : 								{
									"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicTextbutton",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicToggle",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicUmenu",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "classicWaveform~",
								"default" : 								{
									"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
									"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "clean",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanGreen",
								"default" : 								{
									"patchlinecolor" : [ 0.548569, 0.71066, 0.19772, 0.901961 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanMini",
								"default" : 								{
									"fontsize" : [ 9.0 ]
								}
,
								"parentstyle" : "clean",
								"multi" : 0
							}
, 							{
								"name" : "cleanenzo",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 1.0, 0.385962, 0.293389, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cleanpink",
								"default" : 								{
									"patchlinecolor" : [ 0.701961, 0.415686, 0.886275, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "cleanred",
								"default" : 								{
									"patchlinecolor" : [ 0.92549, 0.364706, 0.341176, 0.901961 ]
								}
,
								"parentstyle" : "cleanGreen",
								"multi" : 0
							}
, 							{
								"name" : "comment001",
								"default" : 								{
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ],
									"textcolor" : [ 0.301961, 0.701961, 0.301961, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "comment001-1",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-2",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "comment001-3",
								"parentstyle" : "redness",
								"multi" : 0
							}
, 							{
								"name" : "dark-night-patch",
								"default" : 								{
									"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
									"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "default_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "default_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.636487, 0.648652, 0.683149, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "helpfile_label-1",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 13.0 ],
									"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher001",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher002",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
, 							{
								"name" : "jpink",
								"default" : 								{
									"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
									"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
, 							{
								"name" : "ksliderWhite",
								"default" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "lightbutton",
								"default" : 								{
									"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
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
								"name" : "m4va",
								"default" : 								{
									"bgcolor" : [ 0.788235, 0.8, 0.843137, 0.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "m4vatextbutton",
								"default" : 								{
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
, 							{
								"name" : "master_style",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-1-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-1-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-1-3-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-1-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-2-1-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-2",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-2-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-3",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-4",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-5",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "master_style-6-1",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "master_style-7",
								"newobj" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0.0
									}
,
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
										"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"gain~" : 								{
									"color" : [ 1.0, 0.861448, 0.16921, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"kslider" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "messageGreen-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.165741, 0.364658, 0.14032, 0.74 ],
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
, 							{
								"name" : "messagegold",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 0.74 ],
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
, 							{
								"name" : "minimal",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
										"color1" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.99,
										"autogradient" : 0
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
, 							{
								"name" : "multi_grey",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"fontface" : [ 1 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 10.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-2",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multi_grey-3",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"filtergraph~" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"color" : [ 0.75, 0.75, 0.75, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"tab" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "multisliderBlue&Yellow",
								"default" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.79 ],
									"color" : [ 0.960784, 0.867826, 0.084811, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrDict",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrInit",
								"default" : 								{
									"accentcolor" : [ 0.0, 1.0, 0.501961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrLiveObject",
								"default" : 								{
									"accentcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrPattr",
								"default" : 								{
									"accentcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
									"fontface" : [ 0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrReceive",
								"default" : 								{
									"accentcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSend",
								"default" : 								{
									"accentcolor" : [ 0.466667, 0.254902, 0.607843, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrSubpatch",
								"default" : 								{
									"accentcolor" : [ 0.082353, 0.431373, 0.411765, 1.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "myrValue",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_blue_bg",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-1-1-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.862745, 0.741176, 0.137255, 0.9 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "new_yellow-1-2-1",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"elementcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ],
									"textcolor" : [ 0.319298, 0.79242, 0.856174, 1.0 ]
								}
,
								"newobj" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
								}
,
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobj001",
								"default" : 								{
									"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
									"fontname" : [ "Arial Bold" ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-2",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-3",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-4",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-5",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBronze",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "newobjYellow",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-1",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-2",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-3",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBrown-4",
								"default" : 								{
									"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjCyan-1",
								"default" : 								{
									"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-2",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-3",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-4",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-5",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjMagenta-1",
								"default" : 								{
									"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjRed-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-2",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-3",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-4",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-5",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-6",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberB-1",
								"default" : 								{
									"accentcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberG-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-2",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-3",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-4",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-5",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberR-1",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberW",
								"default" : 								{
									"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "oni",
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"textbutton" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
								}
,
								"panel" : 								{
									"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
								}
,
								"dial" : 								{
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
								}
,
								"textbutton" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
									"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
									"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"tab" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
									"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
									"fontname" : [ "Futura Std Book" ],
									"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
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
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
								}
,
								"comment" : 								{
									"fontname" : [ "Futura Std Book" ],
									"fontsize" : [ 12.0 ],
									"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
									"textjustification" : [ 2 ]
								}
,
								"number" : 								{
									"fontname" : [ "Futura Std Book" ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "orangeBlue",
								"default" : 								{
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
, 							{
								"name" : "orangeBlue-1",
								"default" : 								{
									"accentcolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376938, 0.307692, 1.0 ],
									"selectioncolor" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.376471, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "blueYellowSlider",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlue2",
								"default" : 								{
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueMeter",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueNumber",
								"parentstyle" : "orangeBlue",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueSlider",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue2",
								"multi" : 0
							}
, 							{
								"name" : "orangeBlueTog",
								"default" : 								{
									"bgcolor" : [ 0.027451, 0.0, 0.305882, 1.0 ],
									"color" : [ 1.0, 0.376471, 0.305882, 1.0 ],
									"elementcolor" : [ 0.490196, 0.0, 0.309804, 1.0 ]
								}
,
								"parentstyle" : "orangeBlue-1",
								"multi" : 0
							}
, 							{
								"name" : "panelGold-1",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.764706, 0.592157, 0.101961, 0.25 ],
										"color1" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
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
, 							{
								"name" : "panelViolet",
								"default" : 								{
									"bgfillcolor" : 									{
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
								"name" : "purple",
								"default" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
									"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "receives",
								"default" : 								{
									"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rinox",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"fontsize" : [ 10.0 ],
									"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.9 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rsliderGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
									"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "sends",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "shittyStyle",
								"default" : 								{
									"bgcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
									"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"elementcolor" : [ 0.871412, 0.955014, 0.629622, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.078431, 0.321569, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "simple",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "style test",
								"default" : 								{
									"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tap",
								"default" : 								{
									"fontname" : [ "Lato Light" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefulltoggle",
								"default" : 								{
									"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "tastefultoggle",
								"default" : 								{
									"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
									"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "test",
								"default" : 								{
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "texteditGold",
								"default" : 								{
									"bgcolor" : [ 0.764706, 0.592157, 0.101961, 0.68 ],
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
, 							{
								"name" : "vb green",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"elementcolor" : [ 0.701961, 0.811765, 0.301961, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb pink",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "vb purple",
								"multi" : 1
							}
, 							{
								"name" : "vb pink-1",
								"textbutton" : 								{
									"bgcolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ],
									"selectioncolor" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"button" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"umenu" : 								{
									"color" : [ 0.956863, 0.666667, 0.92549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vb purple",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "vb purple-1",
								"button" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"textbutton" : 								{
									"bgcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"centerjust" : [ 2 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 16.0 ],
									"selectioncolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"color" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"elementcolor" : [ 0.54902, 0.584314, 0.705882, 1.0 ],
									"fontface" : [ 1 ],
									"fontsize" : [ 10.0 ],
									"textcolor_inverse" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"comment" : 								{
									"fontface" : [ 1 ],
									"textcolor" : [ 0.6, 0.6, 0.6, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vbio",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_comment",
								"default" : 								{
									"clearcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor" : [ 1.0, 0.709804, 0.196078, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "vs_patcher_background",
								"default" : 								{
									"editing_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ],
									"locked_bgcolor" : [ 0.2431372549, 0.2431372549, 0.2431372549, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "whitey",
								"default" : 								{
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
 ]
					}
,
					"patching_rect" : [ 179.0, 668.999991178512573, 160.0, 35.0 ],
					"text" : "jit.gl.pix @t apply @dim 1 1 @adapt 0",
					"textcolor" : [ 0.875831604003906, 0.744177997112274, 0.033599980175495, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.096930474042892, 0.440656125545502, 0.980045557022095, 1.0 ],
					"color" : [ 0.743439078330994, 0.235420942306519, 0.121469646692276, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture", "jit_gl_texture", "" ],
					"patching_rect" : [ 226.0, 593.999991178512573, 160.0, 22.0 ],
					"text" : "jit.gl.pix @gen 3m.4p",
					"textcolor" : [ 0.875831604003906, 0.744177997112274, 0.033599980175495, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.344535, 0.418209, 0.290269, 1.0 ],
					"color" : [ 0.45522, 0.188215, 0.381035, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 179.0, 340.999991178512573, 532.000000000000114, 22.0 ],
					"text" : "routepass jit_gl_texture precision",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.jit.gl.3m: (jit_gl_texture) texture to analyse, (anything) jit.gl.pix dumpout messages to final sampler",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 258.999991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "defaultfont", 0 ] ],
					"filename" : "the.patcher.js",
					"id" : "obj-21",
					"jsarguments" : [ "the.jit.gl.3m" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 7.0, 585.0, 178.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 701.500000000000114, 639.499995589256287, 188.5, 639.499995589256287 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 578.5, 639.499991178512573, 188.5, 639.499991178512573 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 264.5, 581.499991178512573, 235.5, 581.499991178512573 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-14", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-14", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 202.5, 552.499991178512573, 235.5, 552.499991178512573 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 1,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"midpoints" : [ 188.5, 437.499991178512573, 235.5, 437.499991178512573 ],
					"order" : 0,
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 69.5, 744.999991178512573, 188.5, 744.999991178512573 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 127.5, 376.999991178512573, 158.0, 376.999991178512573, 158.0, 329.999991178512573, 188.5, 329.999991178512573 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-29", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 445.000000000000057, 428.499991178512573, 202.5, 428.499991178512573 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 511.75, 492.499991178512573, 235.5, 492.499991178512573 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 3 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 2 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 592.5, 311.999991178512573, 69.5, 311.999991178512573 ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "3m.4p.genjit",
				"bootpath" : "~/Documents/Max 8/Packages/the-package/code/jitter",
				"patcherrelativepath" : "../code/jitter",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "jitter-obj-attributes.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-package/code/jitter",
				"patcherrelativepath" : "../code/jitter",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.helpargs.js",
				"bootpath" : "~/Documents/Max 8/Xenorama/XEN_Ablage",
				"patcherrelativepath" : "../../../Xenorama/XEN_Ablage",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.helpattrs.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/the-max/the-rgb-patch",
				"patcherrelativepath" : "../../the-abstractions/the-max/the-rgb-patch",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.jit.attr.wrapper.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/the-package/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "the.patcher.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-package/code/max",
				"patcherrelativepath" : "../code/max",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
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
				"name" : "Audiomix",
				"default" : 				{
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
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
						"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
						"angle" : 270.0,
						"proportion" : 0.504115,
						"autogradient" : 0
					}
,
					"color" : [ 0.82517, 0.78181, 0.059545, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 0.59 ],
						"color2" : [ 0.358573, 0.333383, 0.3663, 0.0 ],
						"angle" : 270.0,
						"proportion" : 0.504115,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.916111, 0.890012, 0.797811, 0.81 ],
						"color2" : [ 0.916111, 0.890012, 0.797811, 0.5 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
						"color2" : [ 0.015924, 0.126521, 0.159696, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
						"color2" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
						"type" : "gradient",
						"color1" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
						"color2" : [ 0.685, 0.685, 0.685, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.79
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.0, 0.0, 0.0, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "color",
						"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
						"type" : "gradient",
						"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
						"type" : "gradient",
						"color1" : [ 0.848496, 0.856888, 0.868666, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
						"type" : "color",
						"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
						"type" : "color",
						"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"button" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
				}
,
				"attrui" : 				{
					"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezadc~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"multislider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"slider" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"ezdac~" : 				{
					"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0.0
					}
,
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.165741, 0.364658, 0.14032, 0.74 ],
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
				"name" : "messagegold",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.764706, 0.592157, 0.101961, 0.74 ],
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
				"name" : "minimal",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
						"color1" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.99,
						"autogradient" : 0
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
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
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
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
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
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
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
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
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.3, 0.3, 0.3, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
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
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
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
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
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
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
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
				"textbutton" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"number" : 				{
					"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
					"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
				}
,
				"button" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"spectroscope~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"scope~" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"toggle" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
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
				"multislider" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"function" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"dial" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"waveform~" : 				{
					"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"color" : [ 0.3, 0.3, 0.3, 1.0 ],
					"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
				}
,
				"meter~" : 				{
					"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}
,
				"panel" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.75, 0.75, 0.75, 1.0 ]
				}
,
				"umenu" : 				{
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"color2" : [ 0.0, 0.0, 0.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
				"toggle" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
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
				"umenu" : 				{
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
					"color" : [ 0.4, 0.486275, 0.505882, 1.0 ],
					"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
				}
,
				"textbutton" : 				{
					"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
					"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
				}
,
				"panel" : 				{
					"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
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
						"type" : "color",
						"color" : [ 0.764706, 0.592157, 0.101961, 0.25 ],
						"color1" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
						"type" : "color",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
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
		"color" : [ 0.996214628219604, 0.851524233818054, 0.347806602716446, 1.0 ],
		"accentcolor" : [ 0.517647058823529, 0.372549019607843, 0.372549019607843, 1.0 ],
		"selectioncolor" : [ 0.489759147167206, 0.682605266571045, 0.869955897331238, 1.0 ],
		"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
		"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.66 ],
		"bgcolor" : [ 0.63921568627451, 0.705882352941177, 0.72156862745098, 1.0 ],
		"editing_bgcolor" : [ 0.580392156862745, 0.650980392156863, 0.666666666666667, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
		"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
		"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
	}

}
