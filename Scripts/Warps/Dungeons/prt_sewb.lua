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
--| 31/12/2007                                      |--
--|   -Added New header [Spre]                      |--
--|                                                 |--
--|                                                 |--
--| 29/12/2007                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("prt_sewb1","B1_Exit",135,248,2,2)
function B1_Exit()
	moveto("prt_fild05",274,208)
end

warp("prt_sewb1","B1_B2",188,247,1,3)
function B1_B2()
	moveto("prt_sewb2",19,19)
end

warp("prt_sewb2","B2_B1",19,12,2,2)
function B2_B1()
	moveto("prt_sewb1",192,247)
end

warp("prt_sewb2","CulvertB2a",19,175,4,2)
function CulvertB2a()
	moveto("prt_sewb2",60,28)
end

warp("prt_sewb2","CulvertB2a_",60,24,4,2)
function CulvertB2a_()
	moveto("prt_sewb2",19,171)
end

warp("prt_sewb2","CulvertB2b",100,176,4,2)
function CulvertB2b()
	moveto("prt_sewb2",140,28)
end

warp("prt_sewb2","CulvertB2b_",140,24,4,2)
function CulvertB2b_()
	moveto("prt_sewb2",100,172)
end

warp("prt_sewb2","B2___B3",180,24,4,2)
function B2___B3()
	moveto("prt_sewb3",180,169)
end

warp("prt_sewb3","B3___B2",180,173,4,2)
function B3___B2()
	moveto("prt_sewb2",180,28)
end

warp("prt_sewb3","B3___B4",20,185,3,2)
function B3___B4()
	moveto("prt_sewb4",100,92)
end

warp("prt_sewb4","B4___B3",100,96,3,2)
function B4___B3()
	moveto("prt_sewb3",19,180)
end

