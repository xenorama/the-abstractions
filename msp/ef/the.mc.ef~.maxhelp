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
		"rect" : [ 100.0, 100.0, 900.0, 750.0 ],
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 19.0, 408.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 378.0, 199.0, 22.0 ],
					"text" : "loadmess setactivetab mc @defer 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 263.0, 65.0, 22.0 ],
					"text" : "the.mc.ef~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 323.0, 67.0, 22.0 ],
					"text" : "universal 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 293.0, 112.0, 22.0 ],
					"text" : "jsui jsarguments $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
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
						"rect" : [ 100.0, 126.0, 900.0, 724.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 373.5, 437.0, 61.0, 22.0 ],
									"text" : "1. 1. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 149.5, 400.0, 74.0, 22.0 ],
									"text" : "mc.unpack~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "live.scope~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 149.5, 522.0, 184.0, 68.0 ],
									"range" : [ 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 720.0, 237.0, 66.0, 22.0 ],
									"text" : "mode $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 720.0, 177.0, 122.0, 50.0 ],
									"tabs" : [ "slide", "rampsmooth" ],
									"varname" : "mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 259.100000000000023, 288.0, 113.0, 22.0 ],
									"text" : "deviate 5600 6000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 481.5, 173.0, 24.0, 24.0 ],
									"varname" : "setclip"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"id" : "obj-71",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 7.0, 85.0, 39.0 ],
									"text" : "default values"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
									"fontname" : "Arial Bold",
									"hint" : "",
									"id" : "obj-70",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 693.5, 16.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"text" : "4",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-69",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
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
										"rect" : [ 59.0, 104.0, 640.0, 655.0 ],
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
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 307.0, 489.0, 67.0, 22.0 ],
													"text" : "select 1 $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 29.0, 547.5, 158.0, 22.0 ],
													"text" : "mc.resize~ 2 @replicate 1 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 66.0, 296.0, 149.0, 22.0 ],
													"text" : "loadmess name #0_c74"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 307.0, 394.0, 118.0, 22.0 ],
													"text" : "getnamed #0_c74"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 307.0, 457.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "int", "int", "float", "float", "", "" ],
													"patching_rect" : [ 307.0, 425.0, 71.5, 22.0 ],
													"text" : "sfinfo~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"patching_rect" : [ 274.0, 363.0, 85.0, 22.0 ],
													"text" : "t 1 getnamed l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 28.0, 24.0, 96.0, 22.0 ],
													"text" : "loadmess loop 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
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
														"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 108.0, 323.0, 150.0, 20.0 ],
																	"text" : "fill the menu if it's a folder",
																	"textcolor" : [ 0.968627, 0.968627, 0.968627, 1.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "int" ],
																	"patching_rect" : [ 211.0, 100.0, 32.5, 20.0 ],
																	"text" : "t s 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 211.0, 166.0, 32.5, 20.0 ],
																	"text" : "2"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-18",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 205.0, 38.0, 20.0 ],
																	"text" : "gate 2"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 69.0, 238.0, 270.0, 22.0 ],
																	"text" : "prefix $1, insert 0 Browse..., insert 1 <separator>"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 211.0, 140.0, 42.0, 20.0 ],
																	"text" : "sel fold"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-23",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 69.0, 40.0, 25.0, 25.0 ],
																	"presentation" : 1,
																	"presentation_rect" : [ 300.0, 170.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-24",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 211.0, 40.0, 25.0, 25.0 ],
																	"presentation" : 1,
																	"presentation_rect" : [ 442.0, 170.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-25",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 316.0, 25.0, 25.0 ],
																	"presentation" : 1,
																	"presentation_rect" : [ 281.0, 446.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-26",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 69.0, 316.0, 25.0, 25.0 ],
																	"presentation" : 1,
																	"presentation_rect" : [ 300.0, 446.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-25", 0 ],
																	"source" : [ "obj-18", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-18", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-19", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 0 ],
																	"source" : [ "obj-20", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-18", 1 ],
																	"source" : [ "obj-23", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-24", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ],
														"bgcolor" : [ 1.0, 0.960784, 0.854902, 1.0 ],
														"editing_bgcolor" : [ 1.0, 0.960784, 0.854902, 1.0 ],
														"bgfillcolor_type" : "gradient",
														"bgfillcolor_color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
														"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
													}
,
													"patching_rect" : [ 48.0, 169.0, 100.0, 49.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"editing_bgcolor" : [ 1.0, 0.960784, 0.854902, 1.0 ],
														"globalpatchername" : "",
														"locked_bgcolor" : [ 1.0, 0.960784, 0.854902, 1.0 ],
														"tags" : ""
													}
,
													"text" : "p folderOrSoundFile"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 197.5, 243.0, 121.0, 35.0 ],
													"text" : "regexp .*(Browse...) @substitute open"
												}

											}
, 											{
												"box" : 												{
													"border" : 0.0,
													"id" : "obj-12",
													"ignoreclick" : 1,
													"maxclass" : "dropfile",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 48.0, 99.0, 100.0, 35.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -0.751632988452911, 4.0, 180.393463134765625, 62.542228698730469 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.0, 154.0, 354.0, 35.0 ],
													"text" : "prefix C74:/media/msp/, insert 0 Browse..., insert 1 <separator>, symbol $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "multichannelsignal", "bang" ],
													"patching_rect" : [ 29.0, 363.0, 132.0, 22.0 ],
													"text" : "mc.sfplay~ #0_c74 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 48.0, 99.0, 159.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 12.0, 27.0, 162.0, 20.0 ],
													"text" : "or Drag a Sound file Here."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 274.0, 320.0, 78.0, 35.0 ],
													"text" : "prepend open"
												}

											}
, 											{
												"box" : 												{
													"autopopulate" : 1,
													"id" : "obj-66",
													"items" : [ "anton.aif", ",", "brushes.aif", ",", "cello-f2.aif", ",", "cherokee.aif", ",", "drumLoop.aif", ",", "duduk.aif", ",", "jongly.aif", ",", "rainstick.aif", ",", "senita-8ch.wav", ",", "sho0630.aif", ",", "vibes-a1.aif" ],
													"maxclass" : "umenu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 157.0, 200.0, 100.0, 22.0 ],
													"prefix" : "C74:/media/msp/",
													"presentation" : 1,
													"presentation_rect" : [ 3.0, 3.0, 176.641830444335938, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-67",
													"maxclass" : "playbar",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"patching_rect" : [ 28.0, 64.0, 176.0, 23.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 3.0, 49.0, 176.641830146312714, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-68",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 29.0, 597.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 1 ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-13", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"midpoints" : [ 316.5, 528.75, 38.5, 528.75 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-67", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-5", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-60", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-66", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 63.0, 151.0, 188.0, 72.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.5, 620.89150083065033, 72.0, 22.0 ],
									"text" : "startwindow"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 502.0, 288.0, 88.0, 24.0 ],
									"text" : "reset peaks"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-55",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 398.0, 189.0, 50.0, 22.0 ],
									"varname" : "makeup"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 398.0, 221.0, 68.0, 22.0 ],
									"text" : "makeup $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 468.5, 288.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 415.5, 400.0, 72.0, 22.0 ],
									"text" : "mc.makelist"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 642.5, 205.0, 24.0, 24.0 ],
									"varname" : "postclip"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 642.5, 237.0, 66.0, 22.0 ],
									"text" : "postclip $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-31",
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 481.5, 205.0, 50.0, 22.0 ],
									"varname" : "clip"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 481.5, 237.0, 43.0, 22.0 ],
									"text" : "clip $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "number",
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 571.5, 205.0, 50.0, 22.0 ],
									"varname" : "interval"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 571.5, 237.0, 64.0, 22.0 ],
									"text" : "interval $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "number",
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 323.0, 155.0, 58.0, 22.0 ],
									"varname" : "down"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 323.0, 187.0, 54.0, 22.0 ],
									"text" : "down $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "number",
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 263.0, 155.0, 50.0, 22.0 ],
									"varname" : "up"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_color1" : [ 0.06274509804, 0.7254901961, 0.9254901961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 263.0, 187.0, 39.0, 22.0 ],
									"text" : "up $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "mc.ezdac~",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 63.0, 657.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"lastchannelcount" : 2,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 63.0, 486.0, 53.0, 154.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 63.0, 437.0, 75.5, 22.0 ],
									"text" : "mc.*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 630.0, 16.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 630.0, 98.5, 91.0, 22.0 ],
									"text" : "setname $1, $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 630.0, 131.5, 32.0, 22.0 ],
									"text" : "pvar"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 630.0, 48.5, 262.0, 35.0 ],
									"text" : "up 1, down 4000, makeup 15, interval 100, postclip 1, makeup_manual 4, setclip 1, mode 0"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
									"fontname" : "Arial Bold",
									"hint" : "",
									"id" : "obj-22",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 204.5, 624.89150083065033, 20.0, 20.0 ],
									"rounded" : 60.0,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
									"fontname" : "Arial Bold",
									"hint" : "",
									"id" : "obj-32",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 441.5, 155.0, 20.0, 20.0 ],
									"rounded" : 60.0,
									"text" : "3",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpdetails.js",
									"id" : "obj-8",
									"ignoreclick" : 1,
									"jsarguments" : [ "the.mc.ef~", 63 ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 538.0, 141.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "live.scope~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 149.5, 437.0, 184.0, 68.0 ],
									"range" : [ 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
									"fontname" : "Arial Bold",
									"hint" : "",
									"id" : "obj-5",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 507.0, 16.5, 20.0, 20.0 ],
									"rounded" : 60.0,
									"text" : "1",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 0.788235, 0.470588, 1.0 ],
									"fontname" : "Arial Bold",
									"hint" : "",
									"id" : "obj-6",
									"ignoreclick" : 1,
									"legacytextcolor" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 38.0, 177.0, 20.0, 20.0 ],
									"rounded" : 60.0,
									"text" : "2",
									"textcolor" : [ 0.34902, 0.34902, 0.34902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpargs.js",
									"id" : "obj-11",
									"ignoreclick" : 1,
									"jsarguments" : [ "the.mc.ef~" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 525.0, 337.0, 250.536514282226562, 114.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.71, 0.196, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "", "" ],
									"patching_rect" : [ 119.5, 337.0, 368.0, 22.0 ],
									"text" : "the.mc.ef~",
									"varname" : "cntrlr_in[2]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 272.5, 276.5, 129.0, 276.5 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 332.5, 276.5, 129.0, 276.5 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 729.5, 274.5, 129.0, 274.5 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 581.0, 276.5, 129.0, 276.5 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 491.0, 276.5, 129.0, 276.5 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-34", 0 ]
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
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 652.0, 276.5, 129.0, 276.5 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 5 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 407.5, 276.0, 129.0, 276.0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"order" : 1,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 72.5, 279.5, 129.0, 279.5 ],
									"order" : 0,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 129.0, 379.0, 159.0, 379.0 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 2 ],
									"midpoints" : [ 478.0, 365.0, 478.0, 365.0 ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"midpoints" : [ 303.5, 379.0, 451.5, 379.0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-73", 0 ]
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
								"name" : "Larry 5-9-2015",
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
								"name" : "afxyellow",
								"multislider" : 								{
									"bgcolor" : [ 0.204102, 0.125198, 0.002398, 1.0 ],
									"color" : [ 1.0, 0.818637, 0.0, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"name" : "clean",
								"default" : 								{
									"accentcolor" : [ 0.518893, 0.518878, 0.518887, 1.0 ],
									"bgcolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
								"attrui" : 								{
									"bgcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"button" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 1.0, 0.95051, 0.0, 1.0 ],
									"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ]
								}
,
								"ezadc~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"ezdac~" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
								}
,
								"function" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"multislider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"slider" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"toggle" : 								{
									"bgcolor" : [ 0.682032, 0.698052, 0.748716, 1.0 ],
									"color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"elementcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"message" : 								{
									"bgfillcolor" : 									{
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
								"umenu" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "messagegold",
								"default" : 								{
									"bgfillcolor" : 									{
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
, 							{
								"name" : "minimal",
								"default" : 								{
									"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
									"bgfillcolor" : 									{
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
								"radiogroup" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}
,
								"toggle" : 								{
									"color" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
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
										"angle" : 270.0,
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"proportion" : 0.39,
										"type" : "color"
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
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
										"angle" : 270.0,
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"proportion" : 0.39,
										"type" : "color"
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
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
										"angle" : 270.0,
										"color" : [ 0.647059, 0.666667, 0.658824, 1.0 ],
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"proportion" : 0.39,
										"type" : "color"
									}

								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
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
					"patching_rect" : [ 80.0, 93.0, 49.0, 22.0 ],
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
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 294.0, 142.0, 22.0 ],
					"text" : "loadmess resize 900 750"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
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
						"rect" : [ 0.0, 26.0, 900.0, 724.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 215.0, 182.0, 50.0, 22.0 ],
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
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 340.0, 183.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "helpstarter.js",
						"parameter_enable" : 0
					}
,
					"text" : "js helpstarter.js oni.streamfunnel"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpname.js",
					"id" : "obj-5",
					"ignoreclick" : 1,
					"jsarguments" : [ "the.mc.ef~" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 10.0, 229.087997436523438, 57.599853515625 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-6::obj-37" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
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
, 			{
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
				"name" : "the.ef.gendsp",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/msp/gen",
				"patcherrelativepath" : "../gen",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "the.helpattrs.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/appearance/rgb_patch",
				"patcherrelativepath" : "../../appearance/rgb_patch",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the.mc.ef~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/msp/ef",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "the.patcher.js",
				"bootpath" : "~/Documents/Max 8/Packages/the-abstractions/install_dependencies/info",
				"patcherrelativepath" : "../../install_dependencies/info",
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
