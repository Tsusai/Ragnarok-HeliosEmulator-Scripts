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
-- | 11/26/2007 : pay_dun Created. [RabidChocobo]                |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidChocobo with Tsusai's    |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

warp("pay_dun02","Payon3_4F",137,128,4,1)
function Payon3_4F()
	moveto("pay_dun03",155,159)
end

warp("pay_dun03","Payon4_3F",155,161,2,1)
function Payon4_3F()
	moveto("pay_dun02",137,126)
end

warp("pay_dun03","Payon4_5F",127,62,1,2)
function Payon4_5F()
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

warp("pay_dun04","Payon5_4Fa",40,37,2,2)
function Payon5_4Fa()
	moveto("pay_dun03",125,62)
end

warp("pay_dun04","Payon5_4Fb",32,204,2,1)
function Payon5_4Fb()
	moveto("pay_dun03",125,62)
end

warp("pay_dun04","Payon5_4Fc",202,206,1,1)
function Payon5_4Fc()
	moveto("pay_dun03",125,62)
end

warp("pay_dun04","Payon_5_4Fd",191,41,1,1)
function Payon_5_4Fd()
	moveto("pay_dun03",125,62)
end

