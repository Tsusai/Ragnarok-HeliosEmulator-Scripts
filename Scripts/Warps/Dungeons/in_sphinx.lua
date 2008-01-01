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
--| 31/12/2007                                      |--
--|   -Added New header [Spre]                      |--
--|                                                 |--
--|                                                 |--
--| 29/12/2007                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

warp("in_sphinx1","sphinx1_m19",288,6,5,1)
function sphinx1_m19()
	moveto("moc_fild19",100,99)
end

warp("in_sphinx1","sph1_sph2",80,191,2,1)
function sph1_sph2()
	moveto("in_sphinx2",149,81)
end

warp("in_sphinx2","sph2_sph1",149,77,3,2)
function sph2_sph1()
	moveto("in_sphinx1",80,189)
end

warp("in_sphinx2","sph2_3",276,272,1,3)
function sph2_3()
	moveto("in_sphinx3",210,54)
end

warp("in_sphinx3","sph3_2",210,57,4,1)
function sph3_2()
	moveto("in_sphinx2",274,272)
end

warp("in_sphinx3","sph3a_b",70,83,4,1)
function sph3a_b()
	moveto("in_sphinx3",70,113)
end

warp("in_sphinx3","sph3b_a",70,111,1,1)
function sph3b_a()
	moveto("in_sphinx3",70,81)
end

warp("in_sphinx3","sph3c_d",60,227,1,4)
function sph3c_d()
	moveto("in_sphinx3",32,227)
end

warp("in_sphinx3","sph3d_c",35,227,2,4)
function sph3d_c()
	moveto("in_sphinx3",62,227)
end

warp("in_sphinx3","sph3_sph4",12,69,4,1)
function sph3_sph4()
	moveto("in_sphinx4",10,222)
end

warp("in_sphinx4","sph4_3",10,224,2,1)
function sph4_3()
	moveto("in_sphinx3",12,71)
end

warp("in_sphinx4","sph4_5",120,113,4,2)
function sph4_5()
	moveto("in_sphinx5",100,99)
end

warp("in_sphinx5","sph5_4",100,96,4,2)
function sph5_4()
	moveto("in_sphinx4",120,116)
end

warp("in_sphinx5","sph5",11,183,3,1)
function sph5()
	moveto("in_sphinx5",11,18)
end

warp("in_sphinx5","sph5",11,16,3,1)
function sph5()
	moveto("in_sphinx5",189,181)
end

warp("in_sphinx5","sph5",189,183,3,1)
function sph5()
	moveto("in_sphinx5",189,18)
end

warp("in_sphinx5","sph5",189,16,3,1)
function sph5()
	moveto("in_sphinx5",11,181)
end

warp("in_sphinx5","sph5",16,188,1,3)
function sph5()
	moveto("in_sphinx5",181,188)
end

warp("in_sphinx5","sph5",183,188,1,3)
function sph5()
	moveto("in_sphinx5",18,10)
end

warp("in_sphinx5","sph5",16,10,1,3)
function sph5()
	moveto("in_sphinx5",181,10)
end

warp("in_sphinx5","sph5",183,10,1,3)
function sph5()
	moveto("in_sphinx5",18,188)
end

