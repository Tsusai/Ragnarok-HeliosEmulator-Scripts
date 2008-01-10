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

warp("ice_dun01","ice_dun01_iceD01S_raF01N_15710",157,10,1,1)
function ice_dun01_iceD01S_raF01N_15710()
	moveto("ra_fild01",233,327)
end

warp("ice_dun01","ice_dun01_iceD01M_iceD02M_146161",146,161,1,1)
function ice_dun01_iceD01M_iceD02M_146161()
	moveto("ice_dun02",151,139)
end

warp("ice_dun02","ice_dun02_iceD02N_iceD03S_150285",150,285,1,1)
function ice_dun02_iceD02N_iceD03S_150285()
	moveto("ice_dun03",149,24,"return")
end
	
warp("ice_dun02","ice_dun02_iceD02M_iceD01M_151145",151,145,1,1)
function ice_dun02_iceD02M_iceD01M_151145()
	moveto("ice_dun01",146,157)
end

warp("ice_dun03","ice_dun03_iceD03S_iceD02N_14919",149,19,1,1)
function ice_dun03_iceD03S_iceD02N_14919()
	moveto("ice_dun02",150,280)
end

