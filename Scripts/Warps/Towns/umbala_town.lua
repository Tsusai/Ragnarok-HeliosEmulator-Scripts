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

warp("umbala","umbala_umbala_f04a_13079",130,79,1,1)
function umbala_umbala_f04a_13079()
	moveto("um_fild04",215,336)
end

warp("umbala","umbala_dunGate_d01b_106285",106,285,1,1)
function umbala_dunGate_d01b_106285()
	moveto("um_dun01",42,30)
end

warp("umbala","umbala_chiefGate_chief_68253",68,253,1,1)
function umbala_chiefGate_chief_68253()
	moveto("um_in",38,113)
end

warp("umbala","umbala_shamanGate_shaman_220189",220,189,1,1)
function umbala_shamanGate_shaman_220189()
	if getvar(um_shaman) == 4 then
		moveto("um_in",32,71)
	else
	end
end

warp("umbala","umbala_toolGate_tool_138129",138,129,1,1)
function umbala_toolGate_tool_138129()
	moveto("um_in",99,114)
end

warp("umbala","umbala_waeponGate_waepon_125157",125,157,1,1)
function umbala_waeponGate_waepon_125157()
	moveto("um_in",155,114)
end

warp("umbala","umbala_houseA1Gate_houseA1_94186",94,186,1,1)
function umbala_houseA1Gate_houseA1_94186()
	moveto("um_in",141,42)
end

warp("umbala","umbala_houseA2Gate_houseA2_100203",100,203,1,1)
function umbala_houseA2Gate_houseA2_100203()
	moveto("um_in",163,69)
end

warp("umbala","umbala_houseBGate_houseB_107130",107,130,1,1)
function umbala_houseBGate_houseB_107130()
	moveto("um_in",99,66)
end

warp("um_in","um_in_chief_chiefGate_38110",38,110,1,1)
function um_in_chief_chiefGate_38110()
	moveto("umbala",66,250)
end

warp("um_in","um_in_shaman_shamanGate_2971",29,71,1,1)
function um_in_shaman_shamanGate_2971()
	moveto("umbala",217,186)
end

warp("um_in","um_in_tool_toolGate_99111",99,111,1,1)
function um_in_tool_toolGate_99111()
	moveto("umbala",136,127)
end

warp("um_in","um_in_waepon_waeponGate_155111",155,111,1,1)
function um_in_waepon_waeponGate_155111()
	moveto("umbala",126,154)
end

warp("um_in","um_in_houseA1_houseA1Gate_14139",141,39,1,1)
function um_in_houseA1_houseA1Gate_14139()
	moveto("umbala",94,183)
end

warp("um_in","um_in_houseA2_houseA2Gate_16669",166,69,1,1)
function um_in_houseA2_houseA2Gate_16669()
	moveto("umbala",102,205)
end

warp("um_in","um_in_houseB_houseBGate_9963",99,63,1,1)
function um_in_houseB_houseBGate_9963()
	moveto("umbala",108,127)
end
