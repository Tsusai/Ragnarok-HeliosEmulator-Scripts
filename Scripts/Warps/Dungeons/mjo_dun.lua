--  ____________________________________________________________
-- /                                                            \
-- |  ##       ##  ########  #########     ##########   ######   |
-- |   ##     ##  ##    ##  ##     ##     ##      ##   ##    ##  |
-- |    ##   ##  ##    ##  ##     ##     ##      ##   ##         |
-- |     ## ##  ##    ##  ##     ##     ##      ##   ##          |
-- |      ###  ########  #########     ##      ##   #######      |
-- |      ##  ##    ##  ##    ##      ##      ##        ##       |
-- |     ##  ##    ##  ##      ##    ##      ##  ##    ##        |
-- |    ##  ##    ##  ##        ##  ##########    ######         |
-- |   Yaros Package                                             |
-- |-------------------------------------------------------------|
-- | Current Version: 1.0      | Episode 10.3 File.              |
-- |-------------------------------------------------------------|
-- | 26/11/2007 : mjo_dun Created. [RabidChocobo]                |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidChocobo with Tsusai's    |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

warp("mjo_dun01","mdun_m02",52,14,4,2)
function mdun_m02()
	moveto("mjolnir_02",79,363)
end

warp("mjo_dun01","mdun01_02",14,283,2,4)
function mdun01_02()
	moveto("mjo_dun02",381,343)
end

warp("mjo_dun02","mdun02_01",384,343,2,4)
function mdun02_01()
	moveto("mjo_dun01",17,283)
end

warp("mjo_dun02","mdun02_03",31,21,1,1)
function mdun02_03()
	moveto("mjo_dun03",302,262)
end

warp("mjo_dun03","mdun03_02",302,264,1,1)
function mdun03_02()
	moveto("mjo_dun02",31,23)
end

warp("mjo_dun02","mdun02_03",39,21,1,1)
function mdun02_03()
	moveto("mjo_dun03",308,262)
end

warp("mjo_dun03","mdun03_02",308,264,1,1)
function mdun03_02()
	moveto("mjo_dun02",39,23)
end

