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
--| 07/01/2008                                      |--
--|   - First Version for Helios [RabidCh]          |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("jawaii","jawaii_cabaretGate_cabaret_192215",192,215,1,1)
function jawaii_cabaretGate_cabaret_192215()
	moveto("jawaii_in",27,94)
end

warp("jawaii_in","jawaii_in_room101_room101Gate_9078",90,78,1,1)
function jawaii_in_room101_room101Gate_9078()
	moveto("jawaii",117,175)
end

warp("jawaii_in","jawaii_in_room102_room102Gate_89117",89,117,1,1)
function jawaii_in_room102_room102Gate_89117()
	moveto("jawaii",111,186)
end

warp("jawaii_in","jawaii_in_room103_room103Gate_132107",132,107,1,1)
function jawaii_in_room103_room103Gate_132107()
	moveto("jawaii",114,196)
end

warp("jawaii_in","jawaii_in_room104_room104Gate_11361",113,61,1,1)
function jawaii_in_room104_room104Gate_11361()
	moveto("jawaii",136,203)
end

warp("jawaii_in","jawaii_in_cabaret_cabaretGate_2791",27,91,1,1)
function jawaii_in_cabaret_cabaretGate_2791()
	if getvar(VAR_ISMARRIED) == 1 then
		moveto("jawaii",192,218)
	else
		moveto("jawaii_in",27,94)
	end
end
