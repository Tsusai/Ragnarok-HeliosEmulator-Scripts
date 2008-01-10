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
--| 09/01/2008                                      |--
--|   - First Version for Helios [RabidCh]          |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("ra_san01","ra_san01_raSan01S_02N03N04M_13913",139,13,1,1)
function ra_san01_raSan01S_02N03N04M_13913()
	if (getvar(rachel_ma1) == 9) then
		moveto("que_san04",119,115)
		return
	end
	local rasan1_234 = math.random(1,3)
	if rasan1_234 == 1 then
		moveto("ra_san02",213,275)
	elseif rasan1_234 == 2 then
		moveto("ra_san03",119,283)
	else
		moveto("ra_san04",119,110)
	end
end

warp("ra_san02","ra_san02_raSan02N_raSan01S_213280",213,280,1,1)
function ra_san02_raSan02N_raSan01S_213280()
	moveto("ra_san01",140,19)
end

warp("ra_san03","ra_san03_raSan03N_raSan01S_123283",123,283,1,1)
function ra_san03_raSan03N_raSan01S_123283()
	moveto("ra_san01",140,19)
end

warp("ra_san04","ra_san04_raSan04N_raSan01S_119104",119,104,1,1)
function ra_san04_raSan04N_raSan01S_119104()
	moveto("ra_san01",140,19)
end

warp("ra_san03","ra_san03_raSan03S1_raSan05E_27921",279,21,1,1)
function ra_san03_raSan03S1_raSan05E_27921()
	moveto("ra_san05",282,149)
end

warp("ra_san03","ra_san03_raSan03S2_raSan04N2_8515",85,15,1,1)
function ra_san03_raSan03S2_raSan04N2_8515()
	moveto("ra_san04",203,216)
end

warp("ra_san04","ra_san04_raSan04N2_raSan03S2_203221",203,221,1,1)
function ra_san04_raSan04N2_raSan03S2_203221()
	moveto("ra_san03",85,20)
end

warp("ra_san04","ra_san04_raSan04S_raSan05N_12048",120,48,1,1)
function ra_san04_raSan04S_raSan05N_12048()
	moveto("ra_san05",150,282)
end

warp("ra_san05","ra_san05_raSan05S_raTemOut_1507",150,7,1,1)
function ra_san05_raSan05S_raTemOut_1507()
	moveto("ra_temple",119,153)
end

warp("ra_san02","ra_san02_raSan02E_raSan03W_289149",289,149,1,1)
function ra_san02_raSan02E_raSan03W_289149()
	moveto("ra_san03",10,149)
end

warp("ra_san03","ra_san03_raSan03W_raSan02E_5149",5,149,1,1)
function ra_san03_raSan03W_raSan02E_5149()
	moveto("ra_san02",284,149)
end

warp("ra_san02","ra_san02_raSan02S_raSan04N1_2134",213,4,1,1)
function ra_san02_raSan02S_raSan04N1_2134()
	moveto("ra_san04",35,216)
end

warp("ra_san04","ra_san04_raSan04N1_raSan02S_35221",35,221,1,1)
function ra_san04_raSan04N1_raSan02S_35221()
	moveto("ra_san02",213,9)
end

warp("ra_san02","ra_san02_raSan02W_raSan05W_3021",30,21,1,1)
function ra_san02_raSan02W_raSan05W_3021()
	moveto("ra_san05",14,149)
end
