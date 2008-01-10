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

warp("lhz_dun01","lhz_dun01_LhzD01R_LhzD02R_281150",281,150,1,1)
function lhz_dun01_LhzD01R_LhzD02R_281150()
	moveto("lhz_dun02",282,153)
end

warp("lhz_dun01","lhz_dun01_LhzD01Dn_LhzD02Dn_1499",149,9,1,1)
function lhz_dun01_LhzD01Dn_LhzD02Dn_1499()
	moveto("lhz_dun02",153,19)
end

warp("lhz_dun01","lhz_dun01_LhzD01L_LhzD02L_18145",18,145,1,1)
function lhz_dun01_LhzD01L_LhzD02L_18145()
	moveto("lhz_dun02",17,150)
end

warp("lhz_dun02","lhz_dun02_LhzD02M_LhzD03M_149149",149,149,1,1)
function lhz_dun02_LhzD02M_LhzD03M_149149()
	if (getvar(job_karma) ~= 0) then
		if getvar(VAR_CLEVEL) > 89 then
			moveto("lhz_dun03",140,133)
		else
			moveto("lhz_dun02",145,149)
		end
	else
		if getvar(VAR_CLEVEL) > 94 then
			moveto("lhz_dun03",140,133)
		else
			moveto("lhz_dun02",145,149)
		end
	end
end

--[[npc("lhz_dun02","Warning#lhz_east",spr_2_BULLETIN_BOARD,177,150,0,0,0,"lhz_dun02_Warning#lhz_east_177150")
function lhz_dun02_Warning#lhz_east_177150()
	dialog "^FF0000Warning^000000"
	dialog "Unauthorized personnel"
	dialog "are prohibited from entering."
	close()
end

npc("lhz_dun02","Warning#lhz_south",spr_2_BULLETIN_BOARD,150,122,0,0,0,"lhz_dun02_Warning#lhz_south_150122")
function lhz_dun02_Warning#lhz_south_150122()
	dialog "^FF0000Warning^000000"
	dialog "Unauthorized personnel"
	dialog "are prohibited from entering."
	close()
end

npc("lhz_dun02","Warning#lhz_west",spr_2_BULLETIN_BOARD,122,149,0,0,0,"lhz_dun02_Warning#lhz_west_122149")
function lhz_dun02_Warning#lhz_west_122149()
	dialog "^FF0000Warning^000000"
	dialog "Unauthorized personnel"
	dialog "are prohibited from entering."
	close()
end

npc("lhz_dun02","Warning#lhz_north",spr_2_BULLETIN_BOARD,149,178,0,0,0,"lhz_dun02_Warning#lhz_north_149178")
function lhz_dun02_Warning#lhz_north_149178()
	dialog "^FF0000Warning^000000"
	dialog "Unauthorized personnel"
	dialog "are prohibited from entering."
	close()
end

]]--

warp("lhz_dun02","lhz_dun02_LhzD02R_LhzD01R_282161",282,161,1,1)
function lhz_dun02_LhzD02R_LhzD01R_282161()
	moveto("lhz_dun01",281,154)
end

warp("lhz_dun02","lhz_dun02_LhzD02Dn_LhzD01Dn_14619",146,19,1,1)
function lhz_dun02_LhzD02Dn_LhzD01Dn_14619()
	moveto("lhz_dun01",144,9)
end

warp("lhz_dun02","lhz_dun02_LhzD02L_LhzD01L_17156",17,156,1,1)
function lhz_dun02_LhzD02L_LhzD01L_17156()
	moveto("lhz_dun01",18,150)
end

warp("lhz_dun03","lhz_dun03_LhzD03M_LhzD02M_139137",139,137,1,1)
function lhz_dun03_LhzD03M_LhzD02M_139137()
	moveto("lhz_dun02",149,142)
end

warp("lhz_dun01","lhz_dun01_LhzD01Up_RekI201_149291",149,291,1,1)
function lhz_dun01_LhzD01Up_RekI201_149291()
	moveto("lhz_in01",19,129)
end
