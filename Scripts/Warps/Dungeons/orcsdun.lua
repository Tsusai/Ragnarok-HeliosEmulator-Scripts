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

warp("in_orcs01","in_orcs_g10",30,154,3,2)
function in_orcs_g10()
	moveto("gef_fild10",65,335)
end

warp("in_orcs01","in_orcs_g10",108,86,3,2)
function in_orcs_g10()
	moveto("gef_fild10",223,203)
end

warp("in_orcs01","orcs_dun01",30,182,2,1)
function orcs_dun01()
	moveto("orcsdun01",32,170)
end

warp("orcsdun01","dun01_orcs",32,172,3,1)
function dun01_orcs()
	moveto("in_orcs01",30,180)
end

warp("in_orcs01","orcs_dun02",108,114,2,1)
function orcs_dun02()
	moveto("orcsdun02",180,17)
end

warp("orcsdun02","dun02_orcs",180,15,2,1)
function dun02_orcs()
	moveto("in_orcs01",108,112)
end

warp("orcsdun02","dun02_01",21,188,8,2)
function dun02_01()
	moveto("orcsdun01",183,11)
end

warp("orcsdun01","dun01_02",183,8,4,2)
function dun01_02()
	moveto("orcsdun02",21,185)
end

warp("in_orcs01","orc_in_g10",124,171,1,3)
function orc_in_g10()
	moveto("gef_fild10",138,329)
end

warp("in_orcs01","orc_in_g10",29,116,4,1)
function orc_in_g10()
	moveto("gef_fild10",137,286)
end

warp("in_orcs01","orc_in_g10",162,55,4,1)
function orc_in_g10()
	moveto("gef_fild10",214,53)
end

