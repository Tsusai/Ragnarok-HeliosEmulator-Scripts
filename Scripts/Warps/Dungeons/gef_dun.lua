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

warp("gef_dun01","Geffen_Dungeon2_3_197_382",197,38,2,1)
function Geffen_Dungeon2_3_197_382()
	moveto("gef_dun02",106,132)
end

warp("gef_dun02","Geffen_Dungeon3_2_106_1342",106,134,2,1)
function Geffen_Dungeon3_2_106_1342()
	moveto("gef_dun01",197,40)
end

warp("gef_dun00","UndergroundC_104_1033",104,103,3,3)
function UndergroundC_104_1033()
	moveto("gef_tower",153,31)
end

warp("gef_dun00","gef_1F_2F_107_1692",107,169,2,1)
function gef_1F_2F_107_1692()
	moveto("gef_dun01",115,236)
end

warp("gef_dun01","_2F_1F_115_2402",115,240,2,2)
function _2F_1F_115_2402()
	moveto("gef_dun00",107,165)
end
