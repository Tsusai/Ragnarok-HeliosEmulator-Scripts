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

warp("pay_dun00","Dungeon_Fronto_21_1862",21,186,2,2)
function Dungeon_Fronto_21_1862()
	moveto("pay_arche",39,131)
end

warp("pay_dun00","d0_d1_184_332",184,33,2,7)
function d0_d1_184_332()
	moveto("pay_dun01",19,33)
end

warp("pay_dun01","d1_d0_15_332",15,33,2,6)
function d1_d0_15_332()
	moveto("pay_dun00",181,33)
end

warp("pay_dun01","d1_d2_286_252",286,25,2,7)
function d1_d2_286_252()
	moveto("pay_dun02",19,63)
end

warp("pay_dun02","d2_d1_16_632",16,63,2,7)
function d2_d1_16_632()
	moveto("pay_dun01",283,28)
end

warp("pay_dun02","Payon3_4F_137_1284",137,128,4,1)
function Payon3_4F_137_1284()
	moveto("pay_dun03",155,159)
end

warp("pay_dun03","Payon4_3F_155_1612",155,161,2,1)
function Payon4_3F_155_1612()
	moveto("pay_dun02",137,126)
end

warp("pay_dun03","Payon4_5F_127_621",127,62,1,2)
function Payon4_5F_127_621()
	local gil = math.random(1,4)
	if gil == 1 then
		moveto("pay_dun04",43,40)
	elseif gil == 2 then
		moveto("pay_dun04",34,202)
	elseif gil == 3 then
		moveto("pay_dun04",201,204)
	else
		moveto("pay_dun04",189,43)
	end
end

warp("pay_dun04","Payon5_4Fa_40_372",40,37,2,2)
function Payon5_4Fa_40_372()
	moveto("pay_dun03",125,62)
end

warp("pay_dun04","Payon5_4Fb_32_2042",32,204,2,1)
function Payon5_4Fb_32_2042()
	moveto("pay_dun03",125,62)
end

warp("pay_dun04","Payon5_4Fc_202_2061",202,206,1,1)
function Payon5_4Fc_202_2061()
	moveto("pay_dun03",125,62)
end

warp("pay_dun04","Payon_5_4Fd_191_411",191,41,1,1)
function Payon_5_4Fd_191_411()
	moveto("pay_dun03",125,62)
end

