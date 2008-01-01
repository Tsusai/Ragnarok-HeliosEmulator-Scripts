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

warp("izlu2dun","Field_Dungeon",108,83,3,2)
function Field_Dungeon()
	moveto("iz_dun00",168,168)
end

warp("iz_dun00","Dungeon_Field",168,173,3,3)
function Dungeon_Field()
	moveto("izlu2dun",108,88)
end

warp("iz_dun00","Iz_Dungeon1_2",39,41,5,2)
function Iz_Dungeon1_2()
	moveto("iz_dun01",41,37)
end

warp("iz_dun01","Iz_Dungeon2_1",41,32,2,2)
function Iz_Dungeon2_1()
	moveto("iz_dun00",39,46)
end

warp("iz_dun00","Iz_Dungeon1_2_",352,342,5,2)
function Iz_Dungeon1_2_()
	moveto("iz_dun01",253,252)
end

warp("iz_dun01","Iz_Dungeon2_1_",253,258,2,2)
function Iz_Dungeon2_1_()
	moveto("iz_dun00",352,337)
end

warp("iz_dun01","Iz_Dungeon2_3",118,170,5,2)
function Iz_Dungeon2_3()
	moveto("iz_dun02",236,204)
end

warp("iz_dun02","Iz_Dungeon3_2",236,198,5,3)
function Iz_Dungeon3_2()
	moveto("iz_dun01",118,165)
end

warp("iz_dun02","Iz_Dungeon3_4",339,331,2,2)
function Iz_Dungeon3_4()
	moveto("iz_dun03",32,63)
end

warp("iz_dun03","Iz_Dungeon4_3",29,63,2,2)
function Iz_Dungeon4_3()
	moveto("iz_dun02",339,328)
end

warp("iz_dun03","Iz_Dungeon4_5",264,245,1,2)
function Iz_Dungeon4_5()
	moveto("iz_dun04",26,27)
end

warp("iz_dun04","Iz_Dungeon5_4",26,24,2,2)
function Iz_Dungeon5_4()
	moveto("iz_dun03",261,245)
end

