-- _________________________________________________ --
--/                                                 \--
--|     _    _          _   _                       |--
--|	   | |  | |        | | (_)                    |--
--|	   | |__| |   ___  | |  _    ___    ___       |--
--|	   |  __  |  / _ \ | | | |  / _ \  / __|      |--
--|	   | |  | | |  __/ | | | | | (_) | \__ \      |--
--|	   |_|  |_|  \___| |_| |_|  \___/  |___/      |--
--|				                            |--
--|-------------------------------------------------|--
--| 31/12/2007                             	    |--
--|  - First Version for Helios.  [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|			Muad_Dib                          |--
--|-------------------------------------------------|--
--| Notes:                                 	    |--
--|                                        	    |--
--|                                        	    |--
--\_________________________________________________/--

warp "um_dun02"	"ygGate_yg1" 126 162	1 1
function ()
	moveto("yggdrasil01","	39",63)
end

warp "niflheim"	"nif_nf02b" 19 154	1 1
function ()
	moveto("nif_fild02","	375",235)
end

warp "niflheim"	"witchGate_witch    " 255 194	1 1
function ()
	moveto("nif_in","	21",157)
end

warp "niflheim"	"waeponGate_waepon" 219 169	1 1
function ()
	moveto("nif_in","	14",88)
end

warp "niflheim"	"houseA1Gate_houseA1" 189 241	1 1
function ()
	moveto("nif_in","	81",77)
end

warp "niflheim"	"houseA2Gate_houseA2" 202 248	1 1
function ()
	moveto("nif_in","	95",102)
end

warp "niflheim"	"houseBGate_houseB" 166 162	1 1
function ()
	moveto("nif_in","	157",81)
end

warp "niflheim"	"pubGate_pub" 189 210	1 1
function ()
	moveto("nif_in","	23",14)
end

warp "niflheim"	"toolGate_tool" 219 198	1 1
function ()
	moveto("nif_in","	137",15)
end

warp("nif_in","	"witch",_witchGate",18,154	1,1)
function 	"witch()
	moveto("niflheim","	253",191)
end

warp "nif_in"	"witch1f_witch2f" 65 174	1 1
function 	"witch()
	moveto("nif_in","	140",174)
end

warp "nif_in"	"witch2f_witch1f" 140 171	1 1
function 	"witch()
	moveto("nif_in","	65",170)
end

warp "nif_in"	"waepon_waeponGate" 11 88	1 1
function 	"witch()
	moveto("niflheim","	216",171)
end

warp "nif_in"	"houseA1_houseA1Gate" 78 74	1 1
function 	"witch()
	moveto("niflheim","	186",241)
end

warp "nif_in"	"houseA2_houseA2Gate" 95 106	1 1
function 	"witch()
	moveto("niflheim","	202",254)
end

warp "nif_in"	"houseB_houseBGate" 154 78	1 1
function 	"witch()
	moveto("niflheim","	169",162)
end

warp "nif_in"	"houseB1f_houseB2f" 169 82	1 1
function 	"witch()
	moveto("nif_in","	189",106)
end

warp "nif_in"	"houseB2f_houseB1f" 186 106	1 1
function 	"witch()
	moveto("nif_in","	166",82)
end

warp("nif_in","	"pub_pubGate"",23,11,	1,1)
function 	"pub_pubGate"()
	moveto("niflheim","	189",207)
end

warp "nif_in"	"pub1f_inn" 34 34	1 1
function 	"pub_pubGate"()
	moveto("nif_in","	88",32)
end

warp "nif_in"	"inn_pub1f" 88 29	1 1
function 	"pub_pubGate"()
	moveto("nif_in","	34",30)
end

warp "nif_in"	"tool_toolGate" 135 13	1 1
function 	"pub_pubGate"()
	moveto("niflheim","	217",196)
end

warp "nif_fild01"	"nf01b_nf02a" 344 322	1 1
function 	"pub_pubGate"()
	moveto("nif_fild02","	26",311)
end

warp "nif_fild02"	"nf02a_nf01b" 22 311	1 1
function 	"pub_pubGate"()
	moveto("nif_fild01","	340",322)
end

warp "nif_fild02"	"nf02b_nif" 378 235	1 1
function 	"pub_pubGate"()
	moveto("niflheim","	23",154)
end

warp "yggdrasil01"	"yg2a_yg2b" 270 52	1 1
function 	"pub_pubGate"()
	moveto("yggdrasil01","	30",196)
end

warp "yggdrasil01"	"yg2b_yg2a" 27 195	1 1
function 	"pub_pubGate"()
	moveto("yggdrasil01","	267",56)
end

warp "yggdrasil01"	"yg3_nf01a" 248 259	1 1
function 	"pub_pubGate"()
	moveto("nif_fild01","	315",67)
end
