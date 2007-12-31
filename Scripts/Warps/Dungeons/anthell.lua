-- _________________________________________________ --
--/                                                 \--
--| 	    _    _          _   _                     |--
--|	   | |  | |        | | (_)                    |--
--|	   | |__| |   ___  | |  _    ___    ___       |--
--|	   |  __  |  / _ \ | | | |  / _ \  / __|      |--
--|	   | |  | | |  __/ | | | | | (_) | \__ \      |--
--|	   |_|  |_|  \___| |_| |_|  \___/  |___/      |--
--|				                            |--
--|-------------------------------------------------|--
--| 29/12/2007                             	    |--
--|		   -First Version for Helios  [Spre]    |--
--|-------------------------------------------------|--
--| Credits: Gravity                       	    |--
--|		 Muad_Dib                      	    |--
--|-------------------------------------------------|--
--| Notes:                                 	    |--
--|                                        	    |--
--|                                        	    |--
--\_________________________________________________/--

warp("anthell01","Ant_Hell_Outside",35,267,1,1)
function Ant_Hell_Outside()
	if getvar(anthell) == 0 then
		moveto("moc_fild04",213,327)
	else
		moveto("moc_fild15",251,248)
	end
end

warp("anthell01","ant1_2",253,32,2,1)
function ant1_2()
	moveto("anthell02",34,263)
end

warp("anthell02","ant2_1",32,267,2,2)
function ant2_1()
	moveto("anthell01",253,35)
end

warp("anthell02","ant2_Outside",171,169,1,2)
function ant2_Outside()
	if getvar(anthell) == 0 then
		moveto("moc_fild15",251,248)
	else
		moveto("moc_fild04",213,327)
	end
end

