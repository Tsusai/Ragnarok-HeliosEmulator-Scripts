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

warp("louyang","louyang_gate_Fild01_21819",218,19,1,1)
function louyang_gate_Fild01_21819()
	moveto("lou_fild01",233,353)
end

warp("louyang","louyang_palaceGate_palace_218255",218,255,1,1)
function louyang_palaceGate_palace_218255()
	moveto("lou_in01",101,122)
end

warp("louyang","louyang_pubGate_pub_280167",280,167,1,1)
function louyang_pubGate_pub_280167()
	moveto("lou_in02",58,173)
end

warp("louyang","louyang_weaponGate_weapon_145174",145,174,1,1)
function louyang_weaponGate_weapon_145174()
	moveto("lou_in02",126,168)
end

warp("louyang","louyang_toolGate_tool_13697",136,97,1,1)
function louyang_toolGate_tool_13697()
	moveto("lou_in02",247,171)
end

warp("louyang","louyang_hospitalGate_hospital_26393",263,93,1,1)
function louyang_hospitalGate_hospital_26393()
	moveto("lou_in02",245,59)
end

warp("louyang","louyang_officeGate_office_30980",309,80,1,1)
function louyang_officeGate_office_30980()
	moveto("lou_in02",189,77)
end

warp("louyang","louyang_house1Gate_house1_13063",130,63,1,1)
function louyang_house1Gate_house1_13063()
	moveto("lou_in02",72,31)
end

warp("louyang","louyang_house2Gate_house2_317176",317,176,1,1)
function louyang_house2Gate_house2_317176()
	moveto("lou_in02",121,31)
end

warp("louyang","louyang_dunGate_Dun01toTown_37271",37,271,1,1)
function louyang_dunGate_Dun01toTown_37271()
	moveto("lou_dun01",218,195)
end

warp("louyang","louyang_towerGate_tower_133245",133,245,1,1)
function louyang_towerGate_tower_133245()
	moveto("lou_in01",25,19)
end

warp("lou_in01","lou_in01_palace_palaceGate_101119",101,119,1,1)
function lou_in01_palace_palaceGate_101119()
	moveto("louyang",218,252)
end

warp("lou_in01","lou_in01_pRight_rRight_125141",125,141,1,1)
function lou_in01_pRight_rRight_125141()
	moveto("lou_in01",156,141)
end

warp ("lou_in01","lou_in01_pLeft_rLeft_79141",79,141,1,1) --재료체크
function lou_in01_pLeft_rLeft_79141()
	if ((getvar(Burn_Tree) > 0) or (getvar(Cold_Magma) > 0) or (getvar(Mud_Lump) > 0)) then
		moveto("lou_in01",83,141)
	else
		moveto("lou_in01",47,141)
	end
end

warp("lou_in01","lou_in01_rRight_pRight_153141",153,141,1,1)
function lou_in01_rRight_pRight_153141()
	moveto("lou_in01",122,141)
end

warp ("lou_in01","lou_in01_rLeft_pLeft_50141",50,141,1,1) --화약체크
function lou_in01_rLeft_pLeft_50141()
	if getvar(Gunpowder) > 0 then
		moveto("lou_in01",46,141)
	else
		moveto("lou_in01",82,141)
	end
end

warp("lou_in01","lou_in01_tower_towerGate_2819",28,19,1,1)
function lou_in01_tower_towerGate_2819()
	moveto("louyang",136,245)
end

warp("lou_in02","lou_in02_pub_pubGate_58170",58,170,1,1)
function lou_in02_pub_pubGate_58170()
	moveto("louyang",280,164)
end

warp("lou_in02","lou_in02_PubLeft_innLeft_35190",35,190,1,1)
function lou_in02_PubLeft_innLeft_35190()
	moveto("lou_in02",41,138)
end

warp("lou_in02","lou_in02_PubRight_innRight_80190",80,190,1,1)
function lou_in02_PubRight_innRight_80190()
	moveto("lou_in02",73,140)
end

warp("lou_in02","lou_in02_innLeft_PubLeft_44138",44,138,1,1)
function lou_in02_innLeft_PubLeft_44138()
	moveto("lou_in02",37,190)
end

warp("lou_in02","lou_in02_innRight_PubRight_71140",71,140,1,1)
function lou_in02_innRight_PubRight_71140()
	moveto("lou_in02",77,190)
end

warp("lou_in02","lou_in02_weapon_weaponGate_126165",126,165,1,1)
function lou_in02_weapon_weaponGate_126165()
	moveto("louyang",145,171)
end

warp("lou_in02","lou_in02_tool_toolGate_249173",249,173,1,1)
function lou_in02_tool_toolGate_249173()
	moveto("louyang",136,99)
end

warp("lou_in02","lou_in02_hospital_hospitalGate_24259",242,59,1,1)
function lou_in02_hospital_hospitalGate_24259()
	moveto("louyang",260,93)
end

warp("lou_in02","lou_in02_office_officeGate_18974",189,74,1,1)
function lou_in02_office_officeGate_18974()
	moveto("louyang",309,77)
end

warp("lou_in02","lou_in02_office1F_office2F_20194",201,94,1,1)
function lou_in02_office1F_office2F_20194()
	moveto("lou_in02",173,46)
end

warp("lou_in02","lou_in02_office2F_office1F_17646",176,46,1,1)
function lou_in02_office2F_office1F_17646()
	moveto("lou_in02",203,94)
end

warp("lou_in02","lou_in02_house1_house1Gate_7228",72,28,1,1)
function lou_in02_house1_house1Gate_7228()
	moveto("louyang",130,60)
end

warp("lou_in02","lou_in02_house2_house2Gate_12128",121,28,1,1)
function lou_in02_house2_house2Gate_12128()
	moveto("louyang",317,173)
end
