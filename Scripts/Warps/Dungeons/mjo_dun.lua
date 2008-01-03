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

warp("mjo_dun01","mdun_m02_52_144",52,14,4,2)
function mdun_m02_52_144()
	moveto("mjolnir_02",79,363)
end

warp("mjo_dun01","mdun01_02_14_2832",14,283,2,4)
function mdun01_02_14_2832()
	moveto("mjo_dun02",381,343)
end

warp("mjo_dun02","mdun02_01_384_3432",384,343,2,4)
function mdun02_01_384_3432()
	moveto("mjo_dun01",17,283)
end

warp("mjo_dun02","mdun02_03_31_211",31,21,1,1)
function mdun02_03_31_211()
	moveto("mjo_dun03",302,262)
end

warp("mjo_dun03","mdun03_02_302_2641",302,264,1,1)
function mdun03_02_302_2641()
	moveto("mjo_dun02",31,23)
end

warp("mjo_dun02","mdun02_03_39_211",39,21,1,1)
function mdun02_03_39_211()
	moveto("mjo_dun03",308,262)
end

warp("mjo_dun03","mdun03_02_308_2641",308,264,1,1)
function mdun03_02_308_2641()
	moveto("mjo_dun02",39,23)
end

