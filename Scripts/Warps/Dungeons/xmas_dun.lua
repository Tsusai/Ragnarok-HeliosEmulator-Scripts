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

warp("xmas_dun01","xmas_24_205_131",205,13,1,1)
function xmas_24_205_131()
	moveto("xmas",143,311)
end

warp("xmas_dun01","xmas_25_129_1301",129,130,1,1)
function xmas_25_129_1301()
	moveto("xmas_dun02",131,130)
end

warp("xmas_dun02","xmas_26_129_1301",129,130,1,1)
function xmas_26_129_1301()
	moveto("xmas_dun01",132,130)
end

