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

warp("anthell01","Ant_Hell_Outside_35_2671",35,267,1,1)
function Ant_Hell_Outside_35_2671()
	if getvar(anthell) == 0 then
		moveto("moc_fild04",213,327)
	else
		moveto("moc_fild15",251,248)
	end
end

warp("anthell01","ant1_2_253_322",253,32,2,1)
function ant1_2_253_322()
	moveto("anthell02",34,263)
end

warp("anthell02","ant2_1_32_2672",32,267,2,2)
function ant2_1_32_2672()
	moveto("anthell01",253,35)
end

warp("anthell02","ant2_Outside_171_1691",171,169,1,2)
function ant2_Outside_171_1691()
	if getvar(anthell) == 0 then
		moveto("moc_fild15",251,248)
	else
		moveto("moc_fild04",213,327)
	end
end

