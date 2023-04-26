{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 0.0, 45.0, 1539.0, 886.0 ],
		"bglocked" : 1,
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"color" : [ 0.666933, 0.499359, 0.020125, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 716.500000000003638, 346.499991178512573, 325.000000000000455, 22.0 ],
					"text" : "unpack f f f f f",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.344535, 0.418209, 0.290269, 1.0 ],
					"color" : [ 0.45522, 0.188215, 0.381035, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 674.400000000000091, 389.499991178512573, 629.000000000000227, 22.0 ],
					"text" : "route size decay damping diffusion early_reflections wet preset sendmc",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1454.06669108072947, 145.856558561325073, 48.0, 21.0 ],
					"text" : "wet"
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
					"patching_rect" : [ 381.39996337890625, 265.285513639450073, 198.0, 22.0 ],
					"text" : "routepass multichannelsignal signal",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1349.0, 1027.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 488.333333333333314, 127.0, 163.0, 22.0 ],
									"text" : "routepass multichannelsignal"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.713726, 0.87451, 0.831373, 1.0 ],
									"color" : [ 0.768627, 0.521569, 0.392157, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 488.333333333333258, 314.0, 125.0, 22.0 ],
									"text" : "s #0_update.parms",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 488.333333333333314, 277.0, 58.0, 22.0 ],
									"text" : "change 1",
									"textcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
									"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 533.333333333333258, 191.0, 22.0, 22.0 ],
									"text" : "t b",
									"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.144559, 0.235989, 0.253663, 1.0 ],
									"color" : [ 0.717647, 0.141176, 0.239216, 1.0 ],
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "float", "int", "int" ],
									"patching_rect" : [ 533.333333333333258, 160.0, 61.0, 22.0 ],
									"text" : "dspstate~",
									"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.2, 0.211765, 0.207843, 1.0 ],
									"color" : [ 0.215686, 0.454902, 0.541176, 1.0 ],
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "signal" ],
									"patching_rect" : [ 488.333333333333314, 245.0, 106.0, 22.0 ],
									"text" : "mc.channelcount~",
									"textcolor" : [ 0.4, 0.835294, 0.996078, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1026.09527587890625, 297.7855224609375, 46.0, 35.0 ],
									"text" : "early refl.",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 911.299907302856354, 311.7855224609375, 57.0, 21.0 ],
									"text" : "diffusion"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 299.0, 293.7855224609375, 54.0, 21.0 ],
									"text" : "damping"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.666666666666629, 293.7855224609375, 39.0, 21.0 ],
									"text" : "decay"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 125.333333333333314, 289.7855224609375, 28.0, 21.0 ],
									"text" : "size"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 1034.09527587890625, 339.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 917.99998664855957, 339.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 310.0, 321.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 217.666666666666629, 321.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 125.333333333333314, 321.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 195.0, 155.0, 79.0, 22.0 ],
													"text" : "mc.*~",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 120.0, 155.0, 40.0, 22.0 ],
													"text" : "mc.*~",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 45.0, 155.0, 40.0, 22.0 ],
													"text" : "mc.*~",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-41",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 45.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-42",
													"index" : 4,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 255.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-43",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 120.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-44",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 195.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-45",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 215.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-46",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 215.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-47",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 215.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"midpoints" : [ 264.5, 114.5, 264.5, 114.5 ],
													"order" : 0,
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 1 ],
													"midpoints" : [ 264.5, 114.5, 150.5, 114.5 ],
													"order" : 1,
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"midpoints" : [ 264.5, 114.5, 75.5, 114.5 ],
													"order" : 2,
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
 ],
										"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
										"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
										"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
									}
,
									"patching_rect" : [ 33.000003814697266, 656.0, 295.999994277954045, 22.0 ],
									"saved_object_attributes" : 									{
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"description" : "",
										"digest" : "",
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"tags" : "",
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
									}
,
									"text" : "p early",
									"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 816.0, 159.0, 21.0 ],
									"text" : "(multichannel signal) out"
								}

							}
, 							{
								"box" : 								{
									"comment" : "(signal) out L",
									"id" : "obj-86",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 33.000003814697266, 810.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
									"color" : [ 0.77999, 0.753768, 0.620778, 1.0 ],
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 1386.0, 673.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"bgcolor" : [ 0.768627, 0.658824, 0.580392, 1.0 ],
													"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 278.333333333333258, 62.0, 123.0, 22.0 ],
													"text" : "r #0_update.parms",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-72",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1207.25, 218.0, 40.0, 22.0 ],
													"text" : "75 52"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
													"id" : "obj-71",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
																	"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 210.5, 86.0, 22.0 ],
																	"text" : "mc.clip~ 0 200",
																	"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																	"text" : "prepend spreadinclusive"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 167.0, 60.0, 22.0 ],
																	"text" : "mc.*~ 75.",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-26",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 226.0, 264.5, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "AudioStatus_Menu",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "Xenorama",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "livid_sysex",
																"default" : 																{
																	"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
																	"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "oni",
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "oni_default-1",
																"multi" : 1
															}
, 															{
																"name" : "oni_default",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"number" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"panel" : 																{
																	"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
																}
,
																"textbutton" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
																}
,
																"dial" : 																{
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-1",
																"preset" : 																{
																	"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
																}
,
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"button" : 																{
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
																	"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
																	"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
																}
,
																"dial" : 																{
																	"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
																}
,
																"panel" : 																{
																	"bgfillcolor" : 																	{
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
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"tab" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
																	"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-2",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-3",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-4",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-5",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "patcherargs",
																"default" : 																{
																	"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "pattr001",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "pattr_inv",
																"default" : 																{
																	"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "tap",
																"default" : 																{
																	"fontname" : [ "Lato Light" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "thisdevice",
																"default" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
 ],
														"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
														"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
														"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
													}
,
													"patching_rect" : [ 1207.25, 262.0, 79.0, 22.0 ],
													"saved_object_attributes" : 													{
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"tags" : "",
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
													}
,
													"text" : "p spread",
													"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
													"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 1174.25, 356.0, 151.0, 22.0 ],
													"text" : "mc.comb~ 200. 75. 0. 1. 0.",
													"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.596078, 0.058824, 1.0 ],
													"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 255.75, 28.0, 58.0, 22.0 ],
													"text" : "loadbang",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 255.75, 123.0, 22.0, 22.0 ],
													"text" : "t b",
													"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
																	"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 210.5, 86.0, 22.0 ],
																	"text" : "mc.clip~ 0 200",
																	"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																	"text" : "prepend spreadinclusive"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 167.0, 60.0, 22.0 ],
																	"text" : "mc.*~ 80.",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-26",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 226.0, 264.5, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "AudioStatus_Menu",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "Xenorama",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "livid_sysex",
																"default" : 																{
																	"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
																	"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "oni",
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "oni_default-1",
																"multi" : 1
															}
, 															{
																"name" : "oni_default",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"number" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"panel" : 																{
																	"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
																}
,
																"textbutton" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
																}
,
																"dial" : 																{
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-1",
																"preset" : 																{
																	"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
																}
,
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"button" : 																{
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
																	"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
																	"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
																}
,
																"dial" : 																{
																	"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
																}
,
																"panel" : 																{
																	"bgfillcolor" : 																	{
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
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"tab" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
																	"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-2",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-3",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-4",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-5",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "patcherargs",
																"default" : 																{
																	"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "pattr001",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "pattr_inv",
																"default" : 																{
																	"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "tap",
																"default" : 																{
																	"fontname" : [ "Lato Light" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "thisdevice",
																"default" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
 ],
														"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
														"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
														"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
													}
,
													"patching_rect" : [ 1046.0, 262.0, 79.0, 22.0 ],
													"saved_object_attributes" : 													{
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"tags" : "",
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
													}
,
													"text" : "p spread",
													"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-66",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1046.0, 218.0, 40.0, 22.0 ],
													"text" : "80 27"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
													"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 1013.0, 356.0, 151.0, 22.0 ],
													"text" : "mc.comb~ 200. 80. 0. 1. 0.",
													"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
																	"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 210.5, 86.0, 22.0 ],
																	"text" : "mc.clip~ 0 200",
																	"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																	"text" : "prepend spreadinclusive"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 167.0, 60.0, 22.0 ],
																	"text" : "mc.*~ 69.",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-26",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 226.0, 264.5, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "AudioStatus_Menu",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "Xenorama",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "livid_sysex",
																"default" : 																{
																	"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
																	"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "oni",
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "oni_default-1",
																"multi" : 1
															}
, 															{
																"name" : "oni_default",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"number" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"panel" : 																{
																	"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
																}
,
																"textbutton" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
																}
,
																"dial" : 																{
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-1",
																"preset" : 																{
																	"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
																}
,
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"button" : 																{
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
																	"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
																	"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
																}
,
																"dial" : 																{
																	"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
																}
,
																"panel" : 																{
																	"bgfillcolor" : 																	{
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
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"tab" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
																	"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-2",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-3",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-4",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-5",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "patcherargs",
																"default" : 																{
																	"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "pattr001",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "pattr_inv",
																"default" : 																{
																	"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "tap",
																"default" : 																{
																	"fontname" : [ "Lato Light" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "thisdevice",
																"default" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
 ],
														"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
														"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
														"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
													}
,
													"patching_rect" : [ 844.0, 262.0, 79.0, 22.0 ],
													"saved_object_attributes" : 													{
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"tags" : "",
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
													}
,
													"text" : "p spread",
													"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-62",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 844.0, 218.0, 40.0, 22.0 ],
													"text" : "69 35"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
													"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 811.0, 356.0, 151.0, 22.0 ],
													"text" : "mc.comb~ 200. 69. 0. 1. 0.",
													"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
																	"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 210.5, 86.0, 22.0 ],
																	"text" : "mc.clip~ 0 100",
																	"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																	"text" : "prepend spreadinclusive"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 167.0, 60.0, 22.0 ],
																	"text" : "mc.*~ 25.",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-26",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 226.0, 264.5, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "AudioStatus_Menu",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "Xenorama",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "livid_sysex",
																"default" : 																{
																	"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
																	"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "oni",
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "oni_default-1",
																"multi" : 1
															}
, 															{
																"name" : "oni_default",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"number" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"panel" : 																{
																	"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
																}
,
																"textbutton" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
																}
,
																"dial" : 																{
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-1",
																"preset" : 																{
																	"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
																}
,
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"button" : 																{
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
																	"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
																	"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
																}
,
																"dial" : 																{
																	"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
																}
,
																"panel" : 																{
																	"bgfillcolor" : 																	{
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
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"tab" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
																	"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-2",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-3",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-4",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-5",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "patcherargs",
																"default" : 																{
																	"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "pattr001",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "pattr_inv",
																"default" : 																{
																	"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "tap",
																"default" : 																{
																	"fontname" : [ "Lato Light" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "thisdevice",
																"default" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
 ],
														"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
														"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
														"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
													}
,
													"patching_rect" : [ 651.0, 262.0, 79.0, 22.0 ],
													"saved_object_attributes" : 													{
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"tags" : "",
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
													}
,
													"text" : "p spread",
													"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-59",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 651.0, 218.0, 33.0, 22.0 ],
													"text" : "25 3"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
													"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 618.0, 311.0, 151.0, 22.0 ],
													"text" : "mc.comb~ 100. 25. 0. 1. 0.",
													"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
																	"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 210.5, 86.0, 22.0 ],
																	"text" : "mc.clip~ 0 200",
																	"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																	"text" : "prepend spreadinclusive"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 167.0, 60.0, 22.0 ],
																	"text" : "mc.*~ 50.",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-26",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 226.0, 264.5, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "AudioStatus_Menu",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "Xenorama",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "livid_sysex",
																"default" : 																{
																	"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
																	"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "oni",
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "oni_default-1",
																"multi" : 1
															}
, 															{
																"name" : "oni_default",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"number" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"panel" : 																{
																	"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
																}
,
																"textbutton" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
																}
,
																"dial" : 																{
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-1",
																"preset" : 																{
																	"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
																}
,
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"button" : 																{
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
																	"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
																	"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
																}
,
																"dial" : 																{
																	"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
																}
,
																"panel" : 																{
																	"bgfillcolor" : 																	{
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
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"tab" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
																	"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-2",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-3",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-4",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-5",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "patcherargs",
																"default" : 																{
																	"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "pattr001",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "pattr_inv",
																"default" : 																{
																	"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "tap",
																"default" : 																{
																	"fontname" : [ "Lato Light" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "thisdevice",
																"default" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
 ],
														"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
														"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
														"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
													}
,
													"patching_rect" : [ 447.0, 262.0, 79.0, 22.0 ],
													"saved_object_attributes" : 													{
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"tags" : "",
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
													}
,
													"text" : "p spread",
													"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-37",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 447.0, 218.0, 40.0, 22.0 ],
													"text" : "50 55"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
													"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 414.0, 356.0, 151.0, 22.0 ],
													"text" : "mc.comb~ 200. 50. 0. 1. 0.",
													"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 59.5, 262.0, 65.0, 22.0 ],
													"text" : "mc.*~ 110.",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
													"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 25.0, 311.0, 157.0, 22.0 ],
													"text" : "mc.comb~ 300. 110. 0. 1. 0.",
													"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
																	"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 210.5, 88.0, 22.0 ],
																	"text" : "mc.clip~ 0 300",
																	"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 139.0, 22.0 ],
																	"text" : "prepend spreadinclusive"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-21",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 226.0, 167.0, 66.0, 22.0 ],
																	"text" : "mc.*~ 160.",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-26",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-27",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 226.0, 264.5, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-21", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-21", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "AudioStatus_Menu",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "Xenorama",
																"default" : 																{
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "livid_sysex",
																"default" : 																{
																	"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
																	"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "oni",
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "oni_default-1",
																"multi" : 1
															}
, 															{
																"name" : "oni_default",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"number" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"button" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
																}
,
																"panel" : 																{
																	"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
																}
,
																"textbutton" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
																}
,
																"dial" : 																{
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-1",
																"preset" : 																{
																	"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
																}
,
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"button" : 																{
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
																	"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
																	"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
																}
,
																"dial" : 																{
																	"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
																}
,
																"slider" : 																{
																	"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
																}
,
																"panel" : 																{
																	"bgfillcolor" : 																	{
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
																"umenu" : 																{
																	"bgfillcolor" : 																	{
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
																"tab" : 																{
																	"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
																	"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
																	"fontname" : [ "Futura Std Book" ],
																	"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-2",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-3",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-4",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "oni_default-5",
																"textbutton" : 																{
																	"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
																	"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
																}
,
																"comment" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"fontsize" : [ 12.0 ],
																	"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
																	"textjustification" : [ 2 ]
																}
,
																"number" : 																{
																	"fontname" : [ "Futura Std Book" ],
																	"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
																	"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "patcherargs",
																"default" : 																{
																	"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "pattr001",
																"newobj" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 1
															}
, 															{
																"name" : "pattr_inv",
																"default" : 																{
																	"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
																	"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "tap",
																"default" : 																{
																	"fontname" : [ "Lato Light" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "thisdevice",
																"default" : 																{
																	"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
																	"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
 ],
														"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
														"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
														"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
													}
,
													"patching_rect" : [ 255.75, 262.0, 87.0, 22.0 ],
													"saved_object_attributes" : 													{
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"tags" : "",
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
													}
,
													"text" : "p spread",
													"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-2",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.75, 218.0, 54.0, 22.0 ],
													"text" : "160 135"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
													"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 221.0, 311.0, 158.0, 22.0 ],
													"text" : "mc.comb~ 300. 160. 0. 1. 0.",
													"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 414.0, 457.0, 57.0, 22.0 ],
													"text" : "mc.*~ -1.",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 25.0, 509.0, 408.0, 22.0 ],
													"text" : "mc.+~",
													"textcolor" : [ 0.996023, 0.809997, 0.403347, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 25.0, 561.0, 66.0, 22.0 ],
													"text" : "mc.*~ 0.15",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-27",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 25.0, 615.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 7,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 1267.0, 80.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 6,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 1174.25, 32.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-13",
													"index" : 5,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 1013.0, 32.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-12",
													"index" : 4,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 811.0, 32.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-11",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 618.0, 32.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-10",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 414.0, 32.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 25.0, 32.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 34.5, 120.0, 230.5, 120.0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"midpoints" : [ 1276.5, 168.5, 333.25, 168.5 ],
													"order" : 5,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"midpoints" : [ 1276.5, 168.5, 69.0, 168.5 ],
													"order" : 6,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 1 ],
													"midpoints" : [ 1276.5, 168.5, 516.5, 168.5 ],
													"order" : 4,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 1 ],
													"midpoints" : [ 1276.5, 168.5, 720.5, 168.5 ],
													"order" : 3,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 1 ],
													"midpoints" : [ 1276.5, 168.5, 913.5, 168.5 ],
													"order" : 2,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 1 ],
													"midpoints" : [ 1276.5, 168.5, 1115.5, 168.5 ],
													"order" : 1,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 1 ],
													"midpoints" : [ 1276.5, 171.0, 1276.75, 171.0 ],
													"order" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"midpoints" : [ 230.5, 400.0, 34.5, 400.0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"midpoints" : [ 287.833333333333258, 103.0, 265.25, 103.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 1 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 1 ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 1 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"midpoints" : [ 627.5, 400.0, 34.5, 400.0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 1 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"midpoints" : [ 820.5, 423.5, 423.5, 423.5 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"midpoints" : [ 1022.5, 423.5, 423.5, 423.5 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 1 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 5,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"midpoints" : [ 265.25, 202.5, 456.5, 202.5 ],
													"order" : 4,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"midpoints" : [ 265.25, 202.5, 660.5, 202.5 ],
													"order" : 3,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"midpoints" : [ 265.25, 202.5, 853.5, 202.5 ],
													"order" : 2,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"midpoints" : [ 265.25, 202.5, 1055.5, 202.5 ],
													"order" : 1,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"midpoints" : [ 265.25, 202.5, 1216.75, 202.5 ],
													"order" : 0,
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"midpoints" : [ 1183.75, 423.5, 423.5, 423.5 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 1 ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "AudioStatus_Menu",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "J-Patcher Color",
												"default" : 												{
													"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
													"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "JulStyle",
												"newobj" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"message" : 												{
													"bgfillcolor" : 													{
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
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"comment" : 												{
													"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "JulStyle2",
												"default" : 												{
													"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Loadbang class objects",
												"default" : 												{
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
, 											{
												"name" : "Luca",
												"default" : 												{
													"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
													"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Matt",
												"default" : 												{
													"fontface" : [ 1 ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "Solarized_01",
												"default" : 												{
													"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
													"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Solarized_02",
												"default" : 												{
													"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
													"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Teaching",
												"default" : 												{
													"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
													"fontface" : [ 0 ],
													"fontsize" : [ 18.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "WTF",
												"default" : 												{
													"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
													"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Xenorama",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "classic",
												"default" : 												{
													"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "classicButton",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicDial",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGain~",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGswitch",
												"default" : 												{
													"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGswitch2",
												"default" : 												{
													"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicKslider",
												"default" : 												{
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicLed",
												"default" : 												{
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicMatrixctrl",
												"default" : 												{
													"color" : [ 1.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicMeter~",
												"default" : 												{
													"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNodes",
												"default" : 												{
													"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"fontsize" : [ 9.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNslider",
												"default" : 												{
													"color" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNumber",
												"default" : 												{
													"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicPictslider",
												"default" : 												{
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicPreset",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicScope~",
												"default" : 												{
													"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicTab",
												"default" : 												{
													"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicTextbutton",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicToggle",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicUmenu",
												"default" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicWaveform~",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "dark-night-patch",
												"default" : 												{
													"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "jpatcher001",
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "jpatcher002",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "jpink",
												"default" : 												{
													"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
													"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "ksliderWhite",
												"default" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "lightbutton",
												"default" : 												{
													"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
													"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "livid_sysex",
												"default" : 												{
													"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
													"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"fontface" : [ 1 ],
													"fontname" : [ "Arial" ],
													"fontsize" : [ 10.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1-1-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"fontface" : [ 1 ],
													"fontname" : [ "Arial" ],
													"fontsize" : [ 10.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-2",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-3",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobj001",
												"default" : 												{
													"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
													"fontname" : [ "Arial Bold" ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-1",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-2",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBrown-1",
												"default" : 												{
													"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjCyan-1",
												"default" : 												{
													"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjGreen-1",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjRed-1",
												"default" : 												{
													"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjYellow-1",
												"default" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"fontsize" : [ 12.059008 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjYellow-2",
												"default" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"fontsize" : [ 12.059008 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "numberGold-1",
												"default" : 												{
													"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "oni",
												"button" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"umenu" : 												{
													"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "oni_default-1",
												"multi" : 1
											}
, 											{
												"name" : "oni_default",
												"newobj" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"number" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"slider" : 												{
													"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"button" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"panel" : 												{
													"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
												}
,
												"textbutton" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
												}
,
												"dial" : 												{
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-1",
												"preset" : 												{
													"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
													"fontname" : [ "Futura Std Book" ],
													"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
													"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
													"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
												}
,
												"slider" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
													"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
													"fontname" : [ "Futura Std Book" ],
													"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-2",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-3",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-4",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-5",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "panelViolet",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "patcherargs",
												"default" : 												{
													"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
													"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "pattr001",
												"newobj" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "pattr_inv",
												"default" : 												{
													"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
													"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "purple",
												"default" : 												{
													"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
													"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "receives",
												"default" : 												{
													"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "rsliderGold",
												"default" : 												{
													"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
													"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "sends",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tap",
												"default" : 												{
													"fontname" : [ "Lato Light" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tastefulltoggle",
												"default" : 												{
													"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tastefultoggle",
												"default" : 												{
													"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
													"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "test",
												"default" : 												{
													"fontface" : [ 1 ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "thisdevice",
												"default" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "whitey",
												"default" : 												{
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
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
										"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
										"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
									}
,
									"patching_rect" : [ 33.000003814697266, 730.0, 850.0, 22.0 ],
									"saved_object_attributes" : 									{
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"description" : "",
										"digest" : "",
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"tags" : "",
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
									}
,
									"text" : "p combine",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 1248.0, 760.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.652473, 0.275229, 0.107814, 1.0 ],
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 452.0, 87.0, 22.0, 22.0 ],
													"text" : "t b",
													"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.768627, 0.658824, 0.580392, 1.0 ],
													"color" : [ 0.458824, 0.733333, 0.690196, 1.0 ],
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 533.333333333333258, 45.0, 123.0, 22.0 ],
													"text" : "r #0_update.parms",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-15",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 291.0, 227.0, 154.0, 35.0 ],
													"text" : "spreadinclusive 60.48 89.24"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.596078, 0.058824, 1.0 ],
													"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 452.0, 45.0, 58.0, 22.0 ],
													"text" : "loadbang",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
													"bgfillcolor_type" : "gradient",
													"gradient" : 1,
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 452.0, 317.0, 144.0, 35.0 ],
													"text" : "spreadinclusive 125 106.8"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 5,
															"revision" : 2,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 84.0, 129.0, 1044.0, 702.0 ],
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
																	"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
																	"bgfillcolor_autogradient" : 0.0,
																	"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
																	"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
																	"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
																	"bgfillcolor_type" : "gradient",
																	"gradient" : 1,
																	"id" : "obj-14",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 214.5, 235.0, 158.0, 22.0 ],
																	"text" : "spreadinclusive 149.6 141.7"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1 ],
																	"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
																	"bgfillcolor_autogradient" : 0.0,
																	"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
																	"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
																	"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
																	"bgfillcolor_type" : "gradient",
																	"gradient" : 1,
																	"id" : "obj-15",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 178.5, 111.0, 158.0, 22.0 ],
																	"text" : "spreadinclusive 22.58 30.51"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-13",
																	"index" : 3,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 214.5, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-28",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 169.5, 392.0, 40.0, 22.0 ],
																	"text" : "*~ 20.",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
																	"color" : [ 0.609825, 0.627963, 0.621845, 1.0 ],
																	"id" : "obj-27",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 169.5, 362.0, 85.0, 22.0 ],
																	"text" : "lores~ 0 0.995",
																	"textcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.221825, 0.159943, 0.119347, 1.0 ],
																	"color" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
																	"id" : "obj-26",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ],
																	"patching_rect" : [ 169.5, 332.0, 44.0, 22.0 ],
																	"text" : "noise~",
																	"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 146.5, 428.0, 42.0, 22.0 ],
																	"text" : "mc.+~",
																	"textcolor" : [ 0.996023, 0.809997, 0.403347, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.602585, 0.659672, 0.665531, 1.0 ],
																	"color" : [ 0.543399, 0.625616, 0.594302, 1.0 ],
																	"id" : "obj-31",
																	"maxclass" : "newobj",
																	"numinlets" : 5,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 108.5, 466.0, 171.0, 22.0 ],
																	"text" : "mc.comb~ 1000. 149.6 0. 1. 0.",
																	"textcolor" : [ 0.056695, 0.390456, 0.281552, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-29",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 146.5, 296.0, 184.0, 22.0 ],
																	"text" : "mc.*~ @initialvalues 149.6 141.7",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
																	"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
																	"id" : "obj-23",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 117.0, 167.0, 208.0, 22.0 ],
																	"text" : "mc.times~ @initialvalues 22.58 30.51",
																	"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.784589, 0.808254, 0.800271, 1.0 ],
																	"color" : [ 0.705981, 0.727158, 0.720014, 1.0 ],
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 50.0, 235.0, 153.0, 22.0 ],
																	"text" : "mc.allpass~ 50 22.58 -0.7",
																	"textcolor" : [ 0.324054, 0.345539, 0.379902, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-35",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-36",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "multichannelsignal" ],
																	"patching_rect" : [ 145.5, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-37",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 51.0, 513.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-38",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 108.5, 513.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"order" : 0,
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"order" : 1,
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 1 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"order" : 0,
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-37", 0 ],
																	"order" : 1,
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 1 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 1 ],
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-29", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-38", 0 ],
																	"source" : [ "obj-31", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-23", 0 ],
																	"order" : 1,
																	"source" : [ "obj-36", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"order" : 0,
																	"source" : [ "obj-36", 0 ]
																}

															}
 ],
														"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
														"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
														"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
													}
,
													"patching_rect" : [ 60.0, 182.0, 89.0, 22.0 ],
													"saved_object_attributes" : 													{
														"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
														"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
														"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
														"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
														"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
														"tags" : "",
														"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
														"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
													}
,
													"text" : "p comb.allpass",
													"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.609825, 0.627963, 0.621845, 1.0 ],
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 165.0, 233.5, 108.0, 22.0 ],
													"text" : "mc.onepole~ 1800",
													"textcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(signal) comb1",
													"id" : "obj-1",
													"index" : 4,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 324.0, 572.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 218.25, 512.0, 58.0, 22.0 ],
													"text" : "mc.tanh~"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 218.25, 451.0, 95.0, 22.0 ],
													"text" : "mc.tapout~ 125.",
													"textcolor" : [ 0.960336, 0.968115, 0.973375, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 340.0, 407.0, 198.0, 22.0 ],
													"text" : "mc.times~ @initialvalues 125 106.8",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "tapconnect" ],
													"patching_rect" : [ 218.25, 407.0, 98.0, 22.0 ],
													"text" : "mc.tapin~ 10000",
													"textcolor" : [ 0.960336, 0.968115, 0.973375, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 165.0, 317.0, 61.0, 22.0 ],
													"text" : "mc.*~ 0.5",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
													"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 230.0, 317.0, 184.0, 22.0 ],
													"text" : "mc.*~ @initialvalues 60.48 89.24",
													"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.784589, 0.808254, 0.800271, 1.0 ],
													"color" : [ 0.705981, 0.727158, 0.720014, 1.0 ],
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 165.0, 355.0, 149.0, 22.0 ],
													"text" : "mc.allpass~ 200 60.48 0.5",
													"textcolor" : [ 0.324054, 0.345539, 0.379902, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(signal) input",
													"id" : "obj-77",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 60.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-78",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 207.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(signal) size",
													"id" : "obj-79",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 95.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(signal) damping",
													"id" : "obj-80",
													"index" : 4,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 254.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(signal) allpass1",
													"id" : "obj-81",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 572.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(signal) allpass2",
													"id" : "obj-83",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 165.0, 572.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(signal) delay1",
													"id" : "obj-84",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 218.25, 572.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"midpoints" : [ 461.5, 379.0, 349.5, 379.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"midpoints" : [ 300.5, 289.0, 239.5, 289.0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 542.833333333333258, 76.5, 461.5, 76.5 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"midpoints" : [ 227.75, 551.0, 35.625, 551.0, 35.625, 171.0, 69.5, 171.0 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"midpoints" : [ 139.5, 491.5, 333.5, 491.5 ],
													"order" : 0,
													"source" : [ "obj-39", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"midpoints" : [ 139.5, 218.25, 174.5, 218.25 ],
													"order" : 1,
													"source" : [ "obj-39", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"midpoints" : [ 461.5, 146.5, 300.5, 146.5 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 2 ],
													"midpoints" : [ 461.5, 124.0, 139.5, 124.0 ],
													"order" : 2,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 1 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"midpoints" : [ 174.5, 391.5, 227.75, 391.5 ],
													"order" : 0,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"order" : 1,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"midpoints" : [ 349.5, 439.0, 227.75, 439.0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 1 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"order" : 2,
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"midpoints" : [ 104.5, 104.5, 239.5, 104.5 ],
													"order" : 1,
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"midpoints" : [ 104.5, 104.5, 349.5, 104.5 ],
													"order" : 0,
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"source" : [ "obj-80", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "AudioStatus_Menu",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Audiomix",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "J-Patcher Color",
												"default" : 												{
													"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
													"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "JulStyle",
												"newobj" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"message" : 												{
													"bgfillcolor" : 													{
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
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"comment" : 												{
													"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "JulStyle2",
												"default" : 												{
													"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Loadbang class objects",
												"default" : 												{
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
, 											{
												"name" : "Luca",
												"default" : 												{
													"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
													"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Matt",
												"default" : 												{
													"fontface" : [ 1 ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "Solarized_01",
												"default" : 												{
													"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
													"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Solarized_02",
												"default" : 												{
													"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
													"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Teaching",
												"default" : 												{
													"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
													"fontface" : [ 0 ],
													"fontsize" : [ 18.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "WTF",
												"default" : 												{
													"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
													"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Xenorama",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "classic",
												"default" : 												{
													"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "classicButton",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicDial",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGain~",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGswitch",
												"default" : 												{
													"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGswitch2",
												"default" : 												{
													"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicKslider",
												"default" : 												{
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicLed",
												"default" : 												{
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicMatrixctrl",
												"default" : 												{
													"color" : [ 1.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicMeter~",
												"default" : 												{
													"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNodes",
												"default" : 												{
													"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"fontsize" : [ 9.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNslider",
												"default" : 												{
													"color" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNumber",
												"default" : 												{
													"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicPictslider",
												"default" : 												{
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicPreset",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicScope~",
												"default" : 												{
													"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicTab",
												"default" : 												{
													"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicTextbutton",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicToggle",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicUmenu",
												"default" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicWaveform~",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "dark-night-patch",
												"default" : 												{
													"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "jpatcher001",
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "jpatcher002",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "jpink",
												"default" : 												{
													"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
													"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "ksliderWhite",
												"default" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "lightbutton",
												"default" : 												{
													"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
													"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "livid_sysex",
												"default" : 												{
													"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
													"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"fontface" : [ 1 ],
													"fontname" : [ "Arial" ],
													"fontsize" : [ 10.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1-1-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"fontface" : [ 1 ],
													"fontname" : [ "Arial" ],
													"fontsize" : [ 10.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-2",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-3",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobj001",
												"default" : 												{
													"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
													"fontname" : [ "Arial Bold" ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-1",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-2",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBrown-1",
												"default" : 												{
													"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjCyan-1",
												"default" : 												{
													"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjGreen-1",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjRed-1",
												"default" : 												{
													"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjYellow-1",
												"default" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"fontsize" : [ 12.059008 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjYellow-2",
												"default" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"fontsize" : [ 12.059008 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "numberGold-1",
												"default" : 												{
													"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "oni",
												"button" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"umenu" : 												{
													"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "oni_default-1",
												"multi" : 1
											}
, 											{
												"name" : "oni_default",
												"newobj" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"number" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"slider" : 												{
													"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"button" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"panel" : 												{
													"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
												}
,
												"textbutton" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
												}
,
												"dial" : 												{
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-1",
												"preset" : 												{
													"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
													"fontname" : [ "Futura Std Book" ],
													"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
													"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
													"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
												}
,
												"slider" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
													"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
													"fontname" : [ "Futura Std Book" ],
													"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-2",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-3",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-4",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-5",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "panelViolet",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "patcherargs",
												"default" : 												{
													"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
													"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "pattr001",
												"newobj" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "pattr_inv",
												"default" : 												{
													"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
													"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "purple",
												"default" : 												{
													"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
													"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "receives",
												"default" : 												{
													"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "rsliderGold",
												"default" : 												{
													"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
													"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "sends",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tap",
												"default" : 												{
													"fontname" : [ "Lato Light" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tastefulltoggle",
												"default" : 												{
													"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tastefultoggle",
												"default" : 												{
													"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
													"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "test",
												"default" : 												{
													"fontface" : [ 1 ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "thisdevice",
												"default" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "whitey",
												"default" : 												{
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
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
										"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
										"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
									}
,
									"patching_rect" : [ 33.0, 529.0, 296.0, 22.0 ],
									"saved_object_attributes" : 									{
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"description" : "",
										"digest" : "",
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"tags" : "",
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
									}
,
									"text" : "p comb.delay",
									"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.609825, 0.627963, 0.621845, 1.0 ],
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 43.0, 148.0, 129.0, 22.0 ],
													"text" : "mc.onepole~ 1800. Hz",
													"textcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.784589, 0.808254, 0.800271, 1.0 ],
													"color" : [ 0.705981, 0.727158, 0.720014, 1.0 ],
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 43.0, 286.0, 143.0, 22.0 ],
													"text" : "mc.allpass~ 20 9.3 0.625",
													"textcolor" : [ 0.324054, 0.345539, 0.379902, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.784589, 0.808254, 0.800271, 1.0 ],
													"color" : [ 0.705981, 0.727158, 0.720014, 1.0 ],
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 43.0, 256.0, 157.0, 22.0 ],
													"text" : "mc.allpass~ 20 12.73 0.625",
													"textcolor" : [ 0.324054, 0.345539, 0.379902, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.784589, 0.808254, 0.800271, 1.0 ],
													"color" : [ 0.705981, 0.727158, 0.720014, 1.0 ],
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 43.0, 226.0, 143.0, 22.0 ],
													"text" : "mc.allpass~ 10 3.58 0.75",
													"textcolor" : [ 0.324054, 0.345539, 0.379902, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.784589, 0.808254, 0.800271, 1.0 ],
													"color" : [ 0.705981, 0.727158, 0.720014, 1.0 ],
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 43.0, 196.0, 143.0, 22.0 ],
													"text" : "mc.allpass~ 10 4.76 0.75",
													"textcolor" : [ 0.324054, 0.345539, 0.379902, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-64",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-65",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 153.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-66",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 381.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "AudioStatus_Menu",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Audiomix",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "J-Patcher Color",
												"default" : 												{
													"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
													"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "JulStyle",
												"newobj" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"message" : 												{
													"bgfillcolor" : 													{
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
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"comment" : 												{
													"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "JulStyle2",
												"default" : 												{
													"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Loadbang class objects",
												"default" : 												{
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
, 											{
												"name" : "Luca",
												"default" : 												{
													"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
													"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Matt",
												"default" : 												{
													"fontface" : [ 1 ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "Solarized_01",
												"default" : 												{
													"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
													"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Solarized_02",
												"default" : 												{
													"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
													"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Teaching",
												"default" : 												{
													"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
													"fontface" : [ 0 ],
													"fontsize" : [ 18.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "WTF",
												"default" : 												{
													"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
													"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Xenorama",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "classic",
												"default" : 												{
													"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "classicButton",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicDial",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGain~",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGswitch",
												"default" : 												{
													"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicGswitch2",
												"default" : 												{
													"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicKslider",
												"default" : 												{
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicLed",
												"default" : 												{
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicMatrixctrl",
												"default" : 												{
													"color" : [ 1.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicMeter~",
												"default" : 												{
													"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNodes",
												"default" : 												{
													"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"fontsize" : [ 9.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNslider",
												"default" : 												{
													"color" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicNumber",
												"default" : 												{
													"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicPictslider",
												"default" : 												{
													"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicPreset",
												"default" : 												{
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicScope~",
												"default" : 												{
													"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicTab",
												"default" : 												{
													"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicTextbutton",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicToggle",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicUmenu",
												"default" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "classicWaveform~",
												"default" : 												{
													"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
													"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "dark-night-patch",
												"default" : 												{
													"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "jpatcher001",
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "jpatcher002",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "jpink",
												"default" : 												{
													"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
													"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "ksliderWhite",
												"default" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "lightbutton",
												"default" : 												{
													"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
													"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "livid_sysex",
												"default" : 												{
													"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
													"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"fontface" : [ 1 ],
													"fontname" : [ "Arial" ],
													"fontsize" : [ 10.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-1-1-1",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"fontface" : [ 1 ],
													"fontname" : [ "Arial" ],
													"fontsize" : [ 10.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-2",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "multi_grey-3",
												"default" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor" : 													{
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
												"number" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
													"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"filtergraph~" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"function" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"meter~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"multislider" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"scope~" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.0, 0.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"spectroscope~" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
												}
,
												"toggle" : 												{
													"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
												}
,
												"waveform~" : 												{
													"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"color" : [ 0.3, 0.3, 0.3, 1.0 ],
													"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
													"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 1.0, 1.0, 1.0 ],
													"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
													"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobj001",
												"default" : 												{
													"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
													"fontname" : [ "Arial Bold" ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-1",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-2",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBrown-1",
												"default" : 												{
													"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjCyan-1",
												"default" : 												{
													"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjGreen-1",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjRed-1",
												"default" : 												{
													"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjYellow-1",
												"default" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"fontsize" : [ 12.059008 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjYellow-2",
												"default" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"fontsize" : [ 12.059008 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "numberGold-1",
												"default" : 												{
													"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "oni",
												"button" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"umenu" : 												{
													"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "oni_default-1",
												"multi" : 1
											}
, 											{
												"name" : "oni_default",
												"newobj" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"number" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"slider" : 												{
													"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"button" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
												}
,
												"panel" : 												{
													"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
												}
,
												"textbutton" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
												}
,
												"dial" : 												{
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-1",
												"preset" : 												{
													"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
													"fontname" : [ "Futura Std Book" ],
													"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
												}
,
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"button" : 												{
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
													"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
													"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
												}
,
												"dial" : 												{
													"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
												}
,
												"slider" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
												}
,
												"panel" : 												{
													"bgfillcolor" : 													{
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
												"umenu" : 												{
													"bgfillcolor" : 													{
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
												"tab" : 												{
													"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
													"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
													"fontname" : [ "Futura Std Book" ],
													"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-2",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-3",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-4",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "oni_default-5",
												"textbutton" : 												{
													"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
													"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
												}
,
												"comment" : 												{
													"fontname" : [ "Futura Std Book" ],
													"fontsize" : [ 12.0 ],
													"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
													"textjustification" : [ 2 ]
												}
,
												"number" : 												{
													"fontname" : [ "Futura Std Book" ],
													"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
													"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "panelViolet",
												"default" : 												{
													"bgfillcolor" : 													{
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
, 											{
												"name" : "patcherargs",
												"default" : 												{
													"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
													"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "pattr001",
												"newobj" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 1
											}
, 											{
												"name" : "pattr_inv",
												"default" : 												{
													"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
													"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "purple",
												"default" : 												{
													"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
													"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "receives",
												"default" : 												{
													"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "rsliderGold",
												"default" : 												{
													"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
													"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "sends",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tap",
												"default" : 												{
													"fontname" : [ "Lato Light" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tastefulltoggle",
												"default" : 												{
													"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "tastefultoggle",
												"default" : 												{
													"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
													"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
													"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "test",
												"default" : 												{
													"fontface" : [ 1 ],
													"fontsize" : [ 10.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "thisdevice",
												"default" : 												{
													"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
													"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "whitey",
												"default" : 												{
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
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
										"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
										"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
									}
,
									"patching_rect" : [ 33.0, 424.0, 251.0, 22.0 ],
									"saved_object_attributes" : 									{
										"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
										"description" : "",
										"digest" : "",
										"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
										"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
										"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
										"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
										"tags" : "",
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
									}
,
									"text" : "p allpass",
									"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
									"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 863.999986648559457, 571.0, 73.000000000000114, 22.0 ],
									"text" : "mc.*~ 1",
									"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 43.0, 128.0, 21.0 ],
									"text" : "(multichannel signal) in"
								}

							}
, 							{
								"box" : 								{
									"comment" : "(signal) input",
									"id" : "obj-59",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 38.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 1.57,
									"id" : "obj-2",
									"justification" : 2,
									"linecolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 422.0, 3.0, 792.0, 11.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 2 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 542.833333333333258, 228.5, 497.833333333333314, 228.5 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.993025004863739, 0.655717790126801, 0.068830989301205, 0.741017 ],
									"destination" : [ "obj-52", 6 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.985167682170868, 0.0, 0.851587891578674, 1.0 ],
									"destination" : [ "obj-52", 3 ],
									"source" : [ "obj-27", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.999377548694611, 0.94760262966156, 0.048932049423456, 0.741017 ],
									"destination" : [ "obj-52", 5 ],
									"midpoints" : [ 227.166666666666657, 586.0, 735.000003814697266, 586.0 ],
									"order" : 0,
									"source" : [ "obj-27", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.796411573886871, 0.783082246780396, 0.692332744598389, 0.741017 ],
									"destination" : [ "obj-52", 4 ],
									"midpoints" : [ 134.833333333333314, 615.0, 596.500003814697266, 615.0 ],
									"order" : 0,
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.999377548694611, 0.94760262966156, 0.048932049423456, 0.741017 ],
									"destination" : [ "obj-9", 2 ],
									"order" : 1,
									"source" : [ "obj-27", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.796411573886871, 0.783082246780396, 0.692332744598389, 0.741017 ],
									"destination" : [ "obj-9", 1 ],
									"order" : 1,
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.861547410488129, 0.88611626625061, 0.826499819755554, 0.741017 ],
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 134.833333333333314, 398.5, 873.499986648559457, 398.5 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"order" : 1,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 42.5, 92.75, 497.833333333333314, 92.75 ],
									"order" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 3 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"midpoints" : [ 1043.59527587890625, 641.0, 319.49999809265131, 641.0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.999377548694611, 0.94760262966156, 0.048932049423456, 0.741017 ],
									"destination" : [ "obj-52", 2 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.796411573886871, 0.783082246780396, 0.692332744598389, 0.741017 ],
									"destination" : [ "obj-52", 1 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.861547410488129, 0.88611626625061, 0.826499819755554, 0.741017 ],
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Audiomix",
								"default" : 								{
									"bgfillcolor" : 									{
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
								"name" : "JulStyle",
								"newobj" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"panel" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Solarized_02",
								"default" : 								{
									"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
									"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "Xenorama",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "classic",
								"default" : 								{
									"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
									"bgfillcolor" : 									{
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
								"name" : "dark-night-patch",
								"default" : 								{
									"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "jpatcher001",
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "jpatcher002",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "jpink",
								"default" : 								{
									"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
									"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"bgfillcolor" : 									{
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
								"name" : "multi_grey",
								"default" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"bgfillcolor" : 									{
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
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
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
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
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
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
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
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
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
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
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
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"textbutton" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
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
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
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
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
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
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"number" : 								{
									"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
									"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
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
								"button" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"dial" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
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
								"function" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"meter~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"scope~" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"spectroscope~" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
								}
,
								"waveform~" : 								{
									"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
									"color" : [ 0.3, 0.3, 0.3, 1.0 ],
									"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
								}
,
								"panel" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"name" : "newobjBrown-1",
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
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
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
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
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
								"newobj" : 								{
									"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
									"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"number" : 								{
									"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"button" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
								}
,
								"panel" : 								{
									"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
								}
,
								"textbutton" : 								{
									"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"name" : "panelViolet",
								"default" : 								{
									"bgfillcolor" : 									{
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
						"default_bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
						"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
						"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
						"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
						"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
						"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
						"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
						"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
						"bgfillcolor_type" : "gradient",
						"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
						"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
						"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
					}
,
					"patching_rect" : [ 598.400000000000091, 596.499991178512573, 401.0, 22.0 ],
					"saved_object_attributes" : 					{
						"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
						"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
						"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
						"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
						"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
						"tags" : "",
						"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
						"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ]
					}
,
					"text" : "p mod",
					"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(float) dry/wet (0 - 1)",
					"id" : "obj-54",
					"index" : 7,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1454.06669108072947, 186.285513639450073, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1379.06669108072947, 145.856558561325073, 57.0, 21.0 ],
					"text" : "early refl."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1275.0, 145.856558561325073, 58.0, 21.0 ],
					"text" : "diffusion"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1170.066660563151345, 145.856558561325073, 54.0, 21.0 ],
					"text" : "damping"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1064.166666666666742, 145.856558561325073, 39.0, 21.0 ],
					"text" : "decay"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 959.39996337890625, 145.856558561325073, 28.0, 21.0 ],
					"text" : "size"
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
					"patching_rect" : [ 560.39996337890625, 346.499991178512573, 133.000036621093841, 22.0 ],
					"text" : "routepass slide",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.029647035524249, 0.203914940357208, 0.56772392988205, 1.0 ],
					"color" : [ 0.624753654003143, 0.0, 0.23231253027916, 1.0 ],
					"data" : 					{
						"patcher" : 						{
							"fileversion" : 1,
							"appversion" : 							{
								"major" : 8,
								"minor" : 5,
								"revision" : 2,
								"architecture" : "x64",
								"modernui" : 1
							}
,
							"classnamespace" : "dsp.gen",
							"rect" : [ 59.0, 104.0, 600.0, 450.0 ],
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
							"assistshowspatchername" : 0,
							"boxes" : [ 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "early refl.",
										"linecount" : 2,
										"patching_rect" : [ 513.463963963964034, 321.7855224609375, 43.0, 33.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-30",
										"textjustification" : 1
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "diffusion",
										"patching_rect" : [ 393.5, 333.7855224609375, 53.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-32"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "damping",
										"patching_rect" : [ 281.5, 333.7855224609375, 55.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-33"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "decay",
										"patching_rect" : [ 168.500000000000028, 333.7855224609375, 41.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-34"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "size",
										"patching_rect" : [ 45.0, 333.7855224609375, 30.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-38"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "early refl.",
										"linecount" : 2,
										"patching_rect" : [ 513.463963963964034, 16.7855224609375, 43.0, 33.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-2",
										"textjustification" : 1
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "diffusion",
										"patching_rect" : [ 393.5, 28.7855224609375, 53.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-3"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "damping",
										"patching_rect" : [ 281.5, 28.7855224609375, 55.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-14"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "decay",
										"patching_rect" : [ 168.500000000000028, 28.7855224609375, 41.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-26"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "size",
										"patching_rect" : [ 45.0, 28.7855224609375, 30.0, 20.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"id" : "obj-39"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "slide",
										"patching_rect" : [ 45.0, 258.0, 40.0, 22.0 ],
										"numinlets" : 3,
										"bgcolor" : [ 0.144559, 0.235989, 0.253663, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
										"id" : "obj-31",
										"color" : [ 0.341845, 0.538996, 0.506871, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "slide",
										"patching_rect" : [ 175.0, 258.0, 40.0, 22.0 ],
										"numinlets" : 3,
										"bgcolor" : [ 0.144559, 0.235989, 0.253663, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
										"id" : "obj-27",
										"color" : [ 0.341845, 0.538996, 0.506871, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "slide",
										"patching_rect" : [ 295.0, 258.0, 40.0, 22.0 ],
										"numinlets" : 3,
										"bgcolor" : [ 0.144559, 0.235989, 0.253663, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
										"id" : "obj-21",
										"color" : [ 0.341845, 0.538996, 0.506871, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "slide",
										"patching_rect" : [ 400.0, 258.0, 40.0, 22.0 ],
										"numinlets" : 3,
										"bgcolor" : [ 0.144559, 0.235989, 0.253663, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
										"id" : "obj-13",
										"color" : [ 0.341845, 0.538996, 0.506871, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "slide",
										"patching_rect" : [ 520.0, 258.0, 40.0, 22.0 ],
										"numinlets" : 3,
										"bgcolor" : [ 0.144559, 0.235989, 0.253663, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.984314, 0.870588, 1.0 ],
										"id" : "obj-37",
										"color" : [ 0.341845, 0.538996, 0.506871, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "param slide 10",
										"patching_rect" : [ 541.0, 180.0, 87.0, 22.0 ],
										"numinlets" : 0,
										"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
										"id" : "obj-36",
										"color" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "mstosamps",
										"patching_rect" : [ 541.0, 210.0, 70.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
										"id" : "obj-35",
										"color" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "clip 0 1",
										"patching_rect" : [ 520.0, 120.0, 47.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ],
										"id" : "obj-29",
										"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "clip 0 1",
										"patching_rect" : [ 400.0, 120.0, 47.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ],
										"id" : "obj-28",
										"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "+ 100",
										"patching_rect" : [ 295.0, 210.0, 39.0, 22.0 ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"textcolor" : [ 0.392137, 0.95897, 0.351168, 1.0 ],
										"id" : "obj-25",
										"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "* 14900",
										"patching_rect" : [ 295.0, 180.0, 50.0, 22.0 ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ],
										"id" : "obj-24",
										"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "fastpow 4",
										"patching_rect" : [ 295.0, 150.0, 60.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
										"id" : "obj-23",
										"color" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "clip 0 1",
										"patching_rect" : [ 295.0, 120.0, 47.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ],
										"id" : "obj-22",
										"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "+ 0.05",
										"patching_rect" : [ 175.0, 180.0, 42.0, 22.0 ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"textcolor" : [ 0.392137, 0.95897, 0.351168, 1.0 ],
										"id" : "obj-20",
										"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "* 0.85",
										"patching_rect" : [ 175.0, 150.0, 40.0, 22.0 ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ],
										"id" : "obj-19",
										"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "maximum 0",
										"patching_rect" : [ 175.0, 120.0, 71.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 0.8, 0.839216, 0.709804, 1.0 ],
										"id" : "obj-18",
										"color" : [ 0.481539, 0.0, 0.0, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "+ 0.01",
										"patching_rect" : [ 45.0, 180.0, 42.0, 22.0 ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"textcolor" : [ 0.392137, 0.95897, 0.351168, 1.0 ],
										"id" : "obj-17",
										"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "* 1.59",
										"patching_rect" : [ 45.0, 150.0, 40.0, 22.0 ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"textcolor" : [ 0.275282, 0.960371, 0.999055, 1.0 ],
										"id" : "obj-16",
										"color" : [ 0.490196, 0.498039, 0.517647, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "maximum 0",
										"patching_rect" : [ 45.0, 120.0, 71.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.196078, 0.223529, 0.25098, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 0.8, 0.839216, 0.709804, 1.0 ],
										"id" : "obj-15",
										"color" : [ 0.481539, 0.0, 0.0, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 5",
										"patching_rect" : [ 520.0, 60.0, 28.0, 22.0 ],
										"numinlets" : 0,
										"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-11",
										"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 5",
										"patching_rect" : [ 520.0, 300.0, 35.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
										"numoutlets" : 0,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-12",
										"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 4",
										"patching_rect" : [ 400.0, 60.0, 28.0, 22.0 ],
										"numinlets" : 0,
										"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-9",
										"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 4",
										"patching_rect" : [ 400.0, 300.0, 35.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
										"numoutlets" : 0,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-10",
										"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 3",
										"patching_rect" : [ 295.0, 60.0, 28.0, 22.0 ],
										"numinlets" : 0,
										"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-7",
										"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 3",
										"patching_rect" : [ 295.0, 300.0, 35.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
										"numoutlets" : 0,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-8",
										"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 2",
										"patching_rect" : [ 175.0, 60.0, 28.0, 22.0 ],
										"numinlets" : 0,
										"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-5",
										"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 2",
										"patching_rect" : [ 175.0, 300.0, 35.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
										"numoutlets" : 0,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-6",
										"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1",
										"patching_rect" : [ 45.0, 60.0, 28.0, 22.0 ],
										"numinlets" : 0,
										"bgcolor" : [ 0.366979, 0.311894, 0.21171, 1.0 ],
										"numoutlets" : 1,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-1",
										"color" : [ 0.606682, 0.576976, 0.566022, 1.0 ],
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"patching_rect" : [ 45.0, 300.0, 35.0, 22.0 ],
										"numinlets" : 1,
										"bgcolor" : [ 0.131533, 0.389636, 0.42757, 1.0 ],
										"numoutlets" : 0,
										"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"id" : "obj-4",
										"color" : [ 0.55409, 0.560734, 0.583737, 1.0 ]
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "obj-1", 0 ],
										"destination" : [ "obj-15", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-11", 0 ],
										"destination" : [ "obj-29", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-13", 0 ],
										"destination" : [ "obj-10", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-15", 0 ],
										"destination" : [ "obj-16", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-16", 0 ],
										"destination" : [ "obj-17", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-17", 0 ],
										"destination" : [ "obj-31", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-18", 0 ],
										"destination" : [ "obj-19", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-19", 0 ],
										"destination" : [ "obj-20", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-20", 0 ],
										"destination" : [ "obj-27", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-21", 0 ],
										"destination" : [ "obj-8", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-22", 0 ],
										"destination" : [ "obj-23", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-23", 0 ],
										"destination" : [ "obj-24", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-24", 0 ],
										"destination" : [ "obj-25", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-25", 0 ],
										"destination" : [ "obj-21", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-27", 0 ],
										"destination" : [ "obj-6", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-28", 0 ],
										"destination" : [ "obj-13", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-29", 0 ],
										"destination" : [ "obj-37", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-31", 0 ],
										"destination" : [ "obj-4", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-13", 2 ],
										"midpoints" : [ 550.5, 244.5, 430.5, 244.5 ],
										"order" : 2
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-13", 1 ],
										"midpoints" : [ 550.5, 244.5, 420.0, 244.5 ],
										"order" : 3
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-21", 2 ],
										"midpoints" : [ 550.5, 244.5, 325.5, 244.5 ],
										"order" : 4
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-21", 1 ],
										"midpoints" : [ 550.5, 244.5, 315.0, 244.5 ],
										"order" : 5
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-27", 2 ],
										"midpoints" : [ 550.5, 244.5, 205.5, 244.5 ],
										"order" : 6
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-27", 1 ],
										"midpoints" : [ 550.5, 244.5, 195.0, 244.5 ],
										"order" : 7
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-31", 2 ],
										"midpoints" : [ 550.5, 244.5, 75.5, 244.5 ],
										"order" : 8
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-31", 1 ],
										"midpoints" : [ 550.5, 244.5, 65.0, 244.5 ],
										"order" : 9
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-37", 2 ],
										"midpoints" : [ 550.5, 244.5, 550.5, 244.5 ],
										"order" : 0
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-35", 0 ],
										"destination" : [ "obj-37", 1 ],
										"midpoints" : [ 550.5, 244.5, 540.0, 244.5 ],
										"order" : 1
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-36", 0 ],
										"destination" : [ "obj-35", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-37", 0 ],
										"destination" : [ "obj-12", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-5", 0 ],
										"destination" : [ "obj-18", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-7", 0 ],
										"destination" : [ "obj-22", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-9", 0 ],
										"destination" : [ "obj-28", 0 ]
									}

								}
 ],
							"styles" : [ 								{
									"name" : "AudioStatus_Menu",
									"default" : 									{
										"bgfillcolor" : 										{
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
, 								{
									"name" : "Audiomix",
									"default" : 									{
										"bgfillcolor" : 										{
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
, 								{
									"name" : "J-Patcher Color",
									"default" : 									{
										"accentcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
										"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
										"textcolor_inverse" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "JulStyle",
									"newobj" : 									{
										"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
									}
,
									"message" : 									{
										"bgfillcolor" : 										{
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
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"comment" : 									{
										"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "JulStyle2",
									"default" : 									{
										"accentcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"bgcolor" : [ 0.960784, 0.92549, 0.815686, 1.0 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "Loadbang class objects",
									"default" : 									{
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
, 								{
									"name" : "Luca",
									"default" : 									{
										"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "Matt",
									"default" : 									{
										"fontface" : [ 1 ],
										"fontsize" : [ 10.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "Solarized_01",
									"default" : 									{
										"accentcolor" : [ 0.27672, 0.35666, 0.382985, 1.0 ],
										"bgcolor" : [ 0.039381, 0.160116, 0.198333, 1.0 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "Solarized_02",
									"default" : 									{
										"accentcolor" : [ 0.505992, 0.564858, 0.563637, 0.7 ],
										"bgcolor" : [ 0.916111, 0.890012, 0.797811, 1.0 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "Teaching",
									"default" : 									{
										"elementcolor" : [ 0.375889, 0.380647, 0.363084, 1.0 ],
										"fontface" : [ 0 ],
										"fontsize" : [ 18.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "WTF",
									"default" : 									{
										"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
										"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "Xenorama",
									"default" : 									{
										"bgfillcolor" : 										{
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
, 								{
									"name" : "classic",
									"default" : 									{
										"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
										"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "classicButton",
									"default" : 									{
										"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicDial",
									"default" : 									{
										"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicGain~",
									"default" : 									{
										"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicGswitch",
									"default" : 									{
										"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicGswitch2",
									"default" : 									{
										"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicKslider",
									"default" : 									{
										"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
										"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicLed",
									"default" : 									{
										"color" : [ 1.0, 0.0, 0.0, 1.0 ],
										"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicMatrixctrl",
									"default" : 									{
										"color" : [ 1.0, 0.0, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicMeter~",
									"default" : 									{
										"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
										"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicNodes",
									"default" : 									{
										"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
										"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
										"fontsize" : [ 9.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicNslider",
									"default" : 									{
										"color" : [ 0.0, 0.0, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicNumber",
									"default" : 									{
										"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicPictslider",
									"default" : 									{
										"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicPreset",
									"default" : 									{
										"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicScope~",
									"default" : 									{
										"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
										"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicTab",
									"default" : 									{
										"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
										"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicTextbutton",
									"default" : 									{
										"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicToggle",
									"default" : 									{
										"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
										"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicUmenu",
									"default" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "classicWaveform~",
									"default" : 									{
										"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ],
										"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "dark-night-patch",
									"default" : 									{
										"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "jpatcher001",
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "jpatcher002",
									"default" : 									{
										"bgfillcolor" : 										{
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
, 								{
									"name" : "jpink",
									"default" : 									{
										"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
										"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"bgfillcolor" : 										{
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
, 								{
									"name" : "ksliderWhite",
									"default" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "lightbutton",
									"default" : 									{
										"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ],
										"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "livid_sysex",
									"default" : 									{
										"accentcolor" : [ 0.596078, 0.174761, 0.100412, 1.0 ],
										"textcolor_inverse" : [ 0.683327, 0.922818, 0.83347, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "multi_grey",
									"default" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"bgfillcolor" : 										{
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
									"number" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
										"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
									}
,
									"textbutton" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"button" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"dial" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"filtergraph~" : 									{
										"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"function" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"meter~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"multislider" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"scope~" : 									{
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color" : [ 1.0, 0.0, 0.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"spectroscope~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"toggle" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
									}
,
									"waveform~" : 									{
										"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
										"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
									}
,
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"tab" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "multi_grey-1",
									"default" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"bgfillcolor" : 										{
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
									"number" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"fontface" : [ 1 ],
										"fontname" : [ "Arial" ],
										"fontsize" : [ 10.0 ],
										"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
										"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
									}
,
									"textbutton" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"button" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"dial" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"filtergraph~" : 									{
										"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"function" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"meter~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"multislider" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"scope~" : 									{
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color" : [ 1.0, 0.0, 0.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"spectroscope~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"toggle" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
									}
,
									"waveform~" : 									{
										"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
										"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
									}
,
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"tab" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "multi_grey-1-1",
									"default" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"bgfillcolor" : 										{
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
									"number" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
										"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
									}
,
									"textbutton" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"button" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"dial" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"filtergraph~" : 									{
										"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"function" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"meter~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"multislider" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"scope~" : 									{
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color" : [ 1.0, 0.0, 0.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"spectroscope~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"toggle" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
									}
,
									"waveform~" : 									{
										"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
										"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
									}
,
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"tab" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "multi_grey-1-1-1",
									"default" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"bgfillcolor" : 										{
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
									"number" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"fontface" : [ 1 ],
										"fontname" : [ "Arial" ],
										"fontsize" : [ 10.0 ],
										"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
										"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
									}
,
									"textbutton" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"button" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"dial" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"filtergraph~" : 									{
										"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"function" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"meter~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"multislider" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"scope~" : 									{
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color" : [ 1.0, 0.0, 0.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"spectroscope~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"toggle" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
									}
,
									"waveform~" : 									{
										"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
										"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
									}
,
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"tab" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "multi_grey-2",
									"default" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"bgfillcolor" : 										{
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
									"number" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
										"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
									}
,
									"textbutton" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"button" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"dial" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"filtergraph~" : 									{
										"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"function" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"meter~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"multislider" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"scope~" : 									{
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color" : [ 1.0, 0.0, 0.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"spectroscope~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"toggle" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
									}
,
									"waveform~" : 									{
										"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
										"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
									}
,
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"tab" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "multi_grey-3",
									"default" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"bgfillcolor" : 										{
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
									"number" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"selectioncolor" : [ 0.94, 0.94, 0.94, 1.0 ],
										"textcolor_inverse" : [ 0.94, 0.94, 0.94, 1.0 ]
									}
,
									"textbutton" : 									{
										"accentcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"selectioncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"button" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"dial" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"filtergraph~" : 									{
										"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"selectioncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"function" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"meter~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"multislider" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"scope~" : 									{
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color" : [ 1.0, 0.0, 0.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"spectroscope~" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"toggle" : 									{
										"bgcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.38, 0.38, 0.38, 1.0 ]
									}
,
									"waveform~" : 									{
										"bgcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
										"color" : [ 0.3, 0.3, 0.3, 1.0 ],
										"elementcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
										"selectioncolor" : [ 0.0, 0.372549, 1.0, 0.5 ]
									}
,
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"tab" : 									{
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"elementcolor" : [ 0.3, 0.3, 0.3, 1.0 ],
										"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobj001",
									"default" : 									{
										"accentcolor" : [ 0.501961, 0.0, 1.0, 1.0 ],
										"fontname" : [ "Arial Bold" ],
										"fontsize" : [ 10.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjBlue-1",
									"default" : 									{
										"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjBlue-2",
									"default" : 									{
										"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjBrown-1",
									"default" : 									{
										"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjCyan-1",
									"default" : 									{
										"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjGreen-1",
									"default" : 									{
										"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjRed-1",
									"default" : 									{
										"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjYellow-1",
									"default" : 									{
										"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
										"fontsize" : [ 12.059008 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "newobjYellow-2",
									"default" : 									{
										"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
										"fontsize" : [ 12.059008 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "numberGold-1",
									"default" : 									{
										"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "oni",
									"button" : 									{
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
									}
,
									"umenu" : 									{
										"color" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
									}
,
									"parentstyle" : "oni_default-1",
									"multi" : 1
								}
, 								{
									"name" : "oni_default",
									"newobj" : 									{
										"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
										"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
										"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
									}
,
									"number" : 									{
										"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
										"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
									}
,
									"slider" : 									{
										"bgcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
									}
,
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"button" : 									{
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ]
									}
,
									"panel" : 									{
										"color" : [ 0.803922, 0.898039, 0.909804, 1.0 ]
									}
,
									"textbutton" : 									{
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"selectioncolor" : [ 1.0, 0.741176, 0.196078, 0.66 ]
									}
,
									"dial" : 									{
										"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 1
								}
, 								{
									"name" : "oni_default-1",
									"preset" : 									{
										"accentcolor" : [ 0.411765, 0.568627, 0.588235, 0.71 ],
										"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.431373, 0.431373, 0.431373, 0.46 ],
										"fontname" : [ "Futura Std Book" ],
										"textcolor" : [ 1.0, 0.995412, 0.945192, 1.0 ]
									}
,
									"textbutton" : 									{
										"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
										"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
									}
,
									"button" : 									{
										"bgcolor" : [ 0.25098, 0.25098, 0.25098, 0.0 ],
										"color" : [ 1.0, 0.101961, 0.305882, 1.0 ],
										"elementcolor" : [ 1.0, 0.101961, 0.305882, 1.0 ]
									}
,
									"dial" : 									{
										"bgcolor" : [ 0.875413, 0.933282, 0.915502, 0.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ]
									}
,
									"slider" : 									{
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ]
									}
,
									"panel" : 									{
										"bgfillcolor" : 										{
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
									"umenu" : 									{
										"bgfillcolor" : 										{
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
									"tab" : 									{
										"color" : [ 1.0, 0.741176, 0.196078, 0.84 ],
										"elementcolor" : [ 0.6, 0.6, 0.6, 0.15 ],
										"fontname" : [ "Futura Std Book" ],
										"textcolor_inverse" : [ 0.400043, 0.485168, 0.504775, 1.0 ]
									}
,
									"comment" : 									{
										"fontname" : [ "Futura Std Book" ],
										"fontsize" : [ 12.0 ],
										"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
										"textjustification" : [ 2 ]
									}
,
									"number" : 									{
										"fontname" : [ "Futura Std Book" ],
										"fontsize" : [ 12.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 1
								}
, 								{
									"name" : "oni_default-2",
									"textbutton" : 									{
										"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
										"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
									}
,
									"comment" : 									{
										"fontname" : [ "Futura Std Book" ],
										"fontsize" : [ 12.0 ],
										"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
										"textjustification" : [ 2 ]
									}
,
									"number" : 									{
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 1
								}
, 								{
									"name" : "oni_default-3",
									"textbutton" : 									{
										"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
										"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
									}
,
									"comment" : 									{
										"fontname" : [ "Futura Std Book" ],
										"fontsize" : [ 12.0 ],
										"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
										"textjustification" : [ 2 ]
									}
,
									"number" : 									{
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 1
								}
, 								{
									"name" : "oni_default-4",
									"textbutton" : 									{
										"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
										"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
									}
,
									"comment" : 									{
										"fontname" : [ "Futura Std Book" ],
										"fontsize" : [ 12.0 ],
										"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
										"textjustification" : [ 2 ]
									}
,
									"number" : 									{
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 1
								}
, 								{
									"name" : "oni_default-5",
									"textbutton" : 									{
										"accentcolor" : [ 0.4, 0.486275, 0.505882, 1.0 ],
										"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"color" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"elementcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 0.968627, 0.768627, 0.101961, 0.509804 ]
									}
,
									"comment" : 									{
										"fontname" : [ "Futura Std Book" ],
										"fontsize" : [ 12.0 ],
										"textcolor" : [ 1.0, 0.998287, 0.929809, 1.0 ],
										"textjustification" : [ 2 ]
									}
,
									"number" : 									{
										"fontname" : [ "Futura Std Book" ],
										"selectioncolor" : [ 1.0, 0.741176, 0.196078, 1.0 ],
										"textcolor_inverse" : [ 1.0, 0.984314, 0.870588, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 1
								}
, 								{
									"name" : "panelViolet",
									"default" : 									{
										"bgfillcolor" : 										{
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
, 								{
									"name" : "patcherargs",
									"default" : 									{
										"accentcolor" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
										"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
										"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "pattr001",
									"newobj" : 									{
										"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
										"bgcolor" : [ 0.937255, 0.898039, 0.0, 1.0 ],
										"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 1
								}
, 								{
									"name" : "pattr_inv",
									"default" : 									{
										"accentcolor" : [ 0.356495, 0.111353, 0.074435, 1.0 ],
										"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
										"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "purple",
									"default" : 									{
										"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
										"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "receives",
									"default" : 									{
										"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "rsliderGold",
									"default" : 									{
										"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
										"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "sends",
									"default" : 									{
										"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "tap",
									"default" : 									{
										"fontname" : [ "Lato Light" ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "tastefulltoggle",
									"default" : 									{
										"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
										"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "tastefultoggle",
									"default" : 									{
										"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
										"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
										"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "test",
									"default" : 									{
										"fontface" : [ 1 ],
										"fontsize" : [ 10.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "thisdevice",
									"default" : 									{
										"accentcolor" : [ 0.501961, 0.501961, 0.0, 1.0 ],
										"bgcolor" : [ 0.937255, 0.796078, 0.0, 1.0 ],
										"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
									}
,
									"parentstyle" : "",
									"multi" : 0
								}
, 								{
									"name" : "whitey",
									"default" : 									{
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

					}
,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 674.400000000000091, 547.499991178512573, 325.0, 22.0 ],
					"text" : "mc.gen~ @t param_scale",
					"textcolor" : [ 0.932326316833496, 0.86507248878479, 0.03703885897994, 1.0 ],
					"varname" : "param_scale",
					"wrapper_uniquekey" : "u366001542"
				}

			}
, 			{
				"box" : 				{
					"comment" : "(signal/float) early reflections (0 - 1)",
					"id" : "obj-30",
					"index" : 6,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1379.06669108072947, 186.285513639450073, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(signal/float) diffusion (0 - 1)",
					"id" : "obj-33",
					"index" : 5,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 1275.0, 186.285513639450073, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(signal/float) damping (0 - 1)",
					"id" : "obj-34",
					"index" : 4,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1170.066660563151345, 186.285513639450073, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(signal/float) decay (0 - 1)",
					"id" : "obj-36",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1064.16666666666697, 186.285513639450073, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(signal/float) roomsize (0 - 1)",
					"id" : "obj-37",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 959.39996337890625, 186.285513639450073, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"color" : [ 0.054902, 0.341176, 0.498039, 1.0 ],
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 716.500000000003638, 265.285513639450073, 174.0, 35.0 ],
					"text" : "patcherargs 0.8 0.9 0.6 1. 0.7 @slide 10 @wet 0.5",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.029647035524249, 0.203914940357208, 0.56772392988205, 1.0 ],
					"color" : [ 0.624753654003143, 0.0, 0.23231253027916, 1.0 ],
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 380.500000000000114, 739.499991178512573, 454.0, 22.0 ],
					"text" : "mc.gen~ @expr out1=mix(in1\\,in2\\,in3)",
					"textcolor" : [ 0.932326316833496, 0.86507248878479, 0.03703885897994, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.mc.yafr~: (multichannelsignal) processed signal out",
					"id" : "obj-18",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 381.39996337890625, 795.499991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "the.mc.yafr~: (multichannelsignal) signal to be processed; (attributes) in",
					"id" : "obj-16",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 381.39996337890625, 186.499991178512573, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.823529, 0.921569, 0.945098, 1.0 ],
					"coll_data" : 					{
						"count" : 20,
						"data" : [ 							{
								"key" : 0,
								"value" : [ 0.055556, 0.111111, 0.666667, 0.377778, 1.0 ]
							}
, 							{
								"key" : 1,
								"value" : [ 0.1, 0.2, 0.811111, 0.466667, 1.0 ]
							}
, 							{
								"key" : 2,
								"value" : [ 0.1, 0.366667, 0.744444, 0.611111, 1.0 ]
							}
, 							{
								"key" : 3,
								"value" : [ 0.188889, 0.322222, 0.744444, 0.622222, 1.0 ]
							}
, 							{
								"key" : 4,
								"value" : [ 0.244444, 0.355556, 0.755556, 0.466667, 1.0 ]
							}
, 							{
								"key" : 5,
								"value" : [ 0.244444, 0.522222, 0.666667, 0.555556, 1.0 ]
							}
, 							{
								"key" : 6,
								"value" : [ 0.266667, 0.522222, 0.811111, 0.7, 1.0 ]
							}
, 							{
								"key" : 7,
								"value" : [ 0.266667, 0.588889, 0.722222, 0.844444, 1.0 ]
							}
, 							{
								"key" : 8,
								"value" : [ 0.255556, 0.655556, 0.744444, 0.888889, 1.0 ]
							}
, 							{
								"key" : 9,
								"value" : [ 0.266667, 0.822222, 0.788889, 0.655556, 1.0 ]
							}
, 							{
								"key" : 10,
								"value" : [ 0.344444, 0.811111, 0.844444, 0.822222, 1.0 ]
							}
, 							{
								"key" : 11,
								"value" : [ 0.366667, 0.655556, 0.777778, 0.822222, 1.0 ]
							}
, 							{
								"key" : 12,
								"value" : [ 0.455556, 0.577778, 0.744444, 0.9, 1.0 ]
							}
, 							{
								"key" : 13,
								"value" : [ 0.444444, 0.755556, 0.833333, 0.9, 1.0 ]
							}
, 							{
								"key" : 14,
								"value" : [ 0.444444, 0.911111, 0.744444, 0.955556, 1.0 ]
							}
, 							{
								"key" : 15,
								"value" : [ 0.555556, 0.955556, 0.833333, 0.977778, 1.0 ]
							}
, 							{
								"key" : 16,
								"value" : [ 0.688889, 0.933333, 0.822222, 1.0, 1.0 ]
							}
, 							{
								"key" : 17,
								"value" : [ 0.877778, 0.977778, 0.822222, 1.0, 1.0 ]
							}
, 							{
								"key" : 18,
								"value" : [ 0.877778, 1.0, 0.933333, 1.0, 1.0 ]
							}
, 							{
								"key" : 19,
								"value" : [ 0.807107, 0.893401, 0.604061, 1.0, 0.654822 ]
							}
 ]
					}
,
					"color" : [ 0.333671, 0.378149, 0.42558, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1132.300000000000182, 596.499991178512573, 150.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"precision" : 6
					}
,
					"text" : "coll verbPreset @embed 1",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.988966, 0.981295, 0.977087, 1.0 ],
					"color" : [ 0.595111, 0.423863, 0.483823, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1131.900000000000318, 547.499991178512573, 54.0, 22.0 ],
					"text" : "clip 0 19",
					"textcolor" : [ 0.207843, 0.243137, 0.392157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"border" : 0,
					"embedstate" : [ [ "defaultfont", 0 ] ],
					"filename" : "the.patcher.js",
					"id" : "obj-32",
					"jsarguments" : [ "the.mcs.yafr~" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 5.523824896131373, 7.999991178512573, 503.0, 149.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bubbleusescolors" : 1,
					"fontname" : "Lato",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.523824896131373, 164.856558561325073, 372.0, 194.0 ],
					"text" : "arguments:\n\n#1 (0.-1.) = size\n#2 (0.-1.) = decaytime\n#3 (0.-1.) = damping\n#4 (0.-1.) = diffusion\n#5 (0.-1.) = early reflections\n\nattributes:\n\n@wet (amount dry/wet ratio, 0 is 100% dry, 1 is 100% wet)\n@preset (an initial preset to choose from 0 - 19)\nparams:  size, decaytime, damping, diffusion, early reflections"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"midpoints" : [ 1032.000000000004093, 480.999991178512573, 989.900000000000091, 480.999991178512573 ],
					"source" : [ "obj-1", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"midpoints" : [ 955.500000000003979, 480.999991178512573, 913.400000000000091, 480.999991178512573 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"midpoints" : [ 879.000000000003865, 480.999991178512573, 836.900000000000091, 480.999991178512573 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 802.500000000003752, 480.999991178512573, 760.400000000000091, 480.999991178512573 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 726.000000000003638, 480.999991178512573, 683.900000000000091, 480.999991178512573 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 1141.800000000000182, 636.0, 1321.807142857144754, 636.0, 1321.807142857144754, 335.499991178512573, 726.000000000003638, 335.499991178512573 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 881.000000000003638, 319.892752408981323, 569.89996337890625, 319.892752408981323 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 569.89996337890625, 436.499991178512573, 683.900000000000091, 436.499991178512573 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 1217.650000000000318, 438.999991178512573, 683.900000000000091, 438.999991178512573 ],
					"order" : 0,
					"source" : [ "obj-3", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"midpoints" : [ 988.900000000000205, 480.999991178512573, 989.900000000000091, 480.999991178512573 ],
					"source" : [ "obj-3", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"midpoints" : [ 912.650000000000205, 480.999991178512573, 913.400000000000091, 480.999991178512573 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"midpoints" : [ 836.400000000000091, 480.999991178512573, 836.900000000000091, 480.999991178512573 ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 760.150000000000091, 480.999991178512573, 760.400000000000091, 480.999991178512573 ],
					"source" : [ "obj-3", 1 ]
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
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 1217.650000000000318, 512.499991178512573, 607.900000000000091, 512.499991178512573 ],
					"order" : 1,
					"source" : [ "obj-3", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-3", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 1217.650000000000318, 456.999991178512573, 390.000000000000114, 456.999991178512573 ],
					"order" : 2,
					"source" : [ "obj-3", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 2 ],
					"midpoints" : [ 1065.150000000000091, 684.499991178512573, 825.000000000000114, 684.499991178512573 ],
					"source" : [ "obj-3", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"midpoints" : [ 1388.56669108072947, 480.892752408981323, 989.900000000000091, 480.892752408981323 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"midpoints" : [ 1284.5, 480.892752408981323, 913.400000000000091, 480.892752408981323 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"midpoints" : [ 1179.566660563151345, 480.892752408981323, 836.900000000000091, 480.892752408981323 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 1073.66666666666697, 480.892752408981323, 760.400000000000091, 480.892752408981323 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 968.89996337890625, 480.892752408981323, 683.900000000000091, 480.892752408981323 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 480.39996337890625, 509.999991178512573, 607.900000000000091, 509.999991178512573 ],
					"order" : 0,
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 390.89996337890625, 509.999991178512573, 607.900000000000091, 509.999991178512573 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 480.39996337890625, 536.392752408981323, 390.000000000000114, 536.392752408981323 ],
					"order" : 1,
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 390.89996337890625, 536.392752408981323, 390.000000000000114, 536.392752408981323 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 5 ],
					"source" : [ "obj-5", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 4 ],
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 3 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 2 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 2 ],
					"midpoints" : [ 1463.56669108072947, 684.499991178512573, 825.000000000000114, 684.499991178512573 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
 ],
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
		"color" : [ 1.0, 0.9843137264, 0.870588243, 1.0 ],
		"elementcolor" : [ 0.407843137254902, 0.380392156862745, 0.376470588235294, 1.0 ],
		"accentcolor" : [ 0.482352941176471, 0.454901960784314, 0.450980392156863, 1.0 ],
		"selectioncolor" : [ 0.929411764705882, 0.807843137254902, 0.352941176470588, 1.0 ],
		"textcolor" : [ 0.258823529411765, 0.235294117647059, 0.223529411764706, 1.0 ],
		"textcolor_inverse" : [ 1.0, 0.772549019607843, 0.454901960784314, 1.0 ],
		"patchlinecolor" : [ 0.298039215686275, 0.254901960784314, 0.196078431372549, 0.61 ],
		"bgcolor" : [ 0.560784, 0.662745, 0.662745, 0.97 ],
		"editing_bgcolor" : [ 0.560784, 0.662745, 0.662745, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
		"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
		"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ]
	}

}
