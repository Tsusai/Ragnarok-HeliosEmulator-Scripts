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

warp("in_orcs01","in_orcs_g10_30_1543",30,154,3,2)
function in_orcs_g10_30_1543()
	moveto("gef_fild10",65,335)
end

warp("in_orcs01","in_orcs_g10_108_863",108,86,3,2)
function in_orcs_g10_108_863()
	moveto("gef_fild10",223,203)
end

warp("in_orcs01","orcs_dun01_30_1822",30,182,2,1)
function orcs_dun01_30_1822()
	moveto("orcsdun01",32,170)
end

warp("orcsdun01","dun01_orcs_32_1723",32,172,3,1)
function dun01_orcs_32_1723()
	moveto("in_orcs01",30,180)
end

warp("in_orcs01","orcs_dun02_108_1142",108,114,2,1)
function orcs_dun02_108_1142()
	moveto("orcsdun02",180,17)
end

warp("orcsdun02","dun02_orcs_180_152",180,15,2,1)
function dun02_orcs_180_152()
	moveto("in_orcs01",108,112)
end

warp("orcsdun02","dun02_01_21_1888",21,188,8,2)
function dun02_01_21_1888()
	moveto("orcsdun01",183,11)
end

warp("orcsdun01","dun01_02_183_84",183,8,4,2)
function dun01_02_183_84()
	moveto("orcsdun02",21,185)
end

warp("in_orcs01","orc_in_g10_124_1711",124,171,1,3)
function orc_in_g10_124_1711()
	moveto("gef_fild10",138,329)
end

warp("in_orcs01","orc_in_g10_29_1164",29,116,4,1)
function orc_in_g10_29_1164()
	moveto("gef_fild10",137,286)
end

warp("in_orcs01","orc_in_g10_162_554",162,55,4,1)
function orc_in_g10_162_554()
	moveto("gef_fild10",214,53)
end

