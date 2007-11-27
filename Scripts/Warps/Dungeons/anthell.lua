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
-- | 11/26/2007 : anthell Created. [RabidCh]                     |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes: Converted to Helios by RabidCh with Tsusai's         |
-- | Aegis Script Converter                                      |
-- |                                                             |
-- \____________________________________________________________/

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

