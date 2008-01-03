-- _________________________________________________ --
--/                                                 \--
--|    _    _          _   _                        |--
--|   | |  | |        | | (_)                       |--
--|   | |__| |   ___  | |  _    ___    ___          |--
--|   |  __  |  / _ \ | | | |  / _ \  / __|         |--
--|   | |  | | |  __/ | | | | | (_) | \__ \         |--
--|   |_|  |_|  \___| |_| |_|  \___/  |___/         |--
--|                                                 |--
--|-------------------------------------------------|--
--| 03/01/2008                                      |--
--|   - Updated all function names to fix           |--
--|     function name conflicts in Lua. [RabidCh]   |--
--| 31/12/2007                                      |--
--|   - Added New header [Spre]                     |--
--| 29/12/2007                                      |--
--|   - First Version for Helios [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("prt_sewb1","B1_Exit_135_2482",135,248,2,2)
function B1_Exit_135_2482()
	moveto("prt_fild05",274,208)
end

warp("prt_sewb1","B1_B2_188_2471",188,247,1,3)
function B1_B2_188_2471()
	moveto("prt_sewb2",19,19)
end

warp("prt_sewb2","B2_B1_19_122",19,12,2,2)
function B2_B1_19_122()
	moveto("prt_sewb1",192,247)
end

warp("prt_sewb2","CulvertB2a_19_1754",19,175,4,2)
function CulvertB2a_19_1754()
	moveto("prt_sewb2",60,28)
end

warp("prt_sewb2","CulvertB2a_60_244",60,24,4,2)
function CulvertB2a_60_244()
	moveto("prt_sewb2",19,171)
end

warp("prt_sewb2","CulvertB2b_100_1764",100,176,4,2)
function CulvertB2b_100_1764()
	moveto("prt_sewb2",140,28)
end

warp("prt_sewb2","CulvertB2b_140_244",140,24,4,2)
function CulvertB2b_140_244()
	moveto("prt_sewb2",100,172)
end

warp("prt_sewb2","B2__B3_180_244",180,24,4,2)
function B2__B3_180_244()
	moveto("prt_sewb3",180,169)
end

warp("prt_sewb3","B3__B2_180_1734",180,173,4,2)
function B3__B2_180_1734()
	moveto("prt_sewb2",180,28)
end

warp("prt_sewb3","B3__B4_20_1853",20,185,3,2)
function B3__B4_20_1853()
	moveto("prt_sewb4",100,92)
end

warp("prt_sewb4","B4__B3_100_963",100,96,3,2)
function B4__B3_100_963()
	moveto("prt_sewb3",19,180)
end

