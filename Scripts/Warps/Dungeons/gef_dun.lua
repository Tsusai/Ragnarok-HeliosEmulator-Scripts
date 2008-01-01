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

warp("gef_dun01","Geffen_Dungeon2_3",197,38,2,1)
function Geffen_Dungeon2_3()
	moveto("gef_dun02",106,132)
end

warp("gef_dun02","Geffen_Dungeon3_2",106,134,2,1)
function Geffen_Dungeon3_2()
	moveto("gef_dun01",197,40)
end

warp("gef_dun00","UndergroundC_",104,103,3,3)
function UndergroundC_()
	moveto("gef_tower",153,31)
end

warp("gef_dun00","gef_1F_2F",107,169,2,1)
function gef_1F_2F()
	moveto("gef_dun01",115,236)
end

warp("gef_dun01","2F-1F",115,240,2,2)
function gef_2F_1F()
	moveto("gef_dun00",107,165)
end
