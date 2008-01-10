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

warp("ve_fild01","VeF01E_VeF02W_366_2671",366,267,1,1)
function VeF01E_VeF02W_366_2671()
	moveto("ve_fild02",36,263)
end

warp("ve_fild01","VeF01S_VeF04N_184_201",184,20,1,1)
function VeF01S_VeF04N_184_201()
	moveto("ve_fild04",174,334)
end

warp("ve_fild01","VeF01N_RaF11S_243_3681",243,368,1,1)
function VeF01N_RaF11S_243_3681()
	moveto("ra_fild11",232,32)
end

warp("ve_fild02","VeF02E_RaF13W_385_3081",385,308,1,1)
function VeF02E_RaF13W_385_3081()
	moveto("ra_fild13",34,308)
end

warp("ve_fild02","VeF02N_raSGate_195_3821",195,382,1,1)
function VeF02N_raSGate_195_3821()
	moveto("rachel",130,25)
end

warp("ve_fild03","VeF03E_VeF04W_355_2231",355,223,1,1)
function VeF03E_VeF04W_355_2231()
	moveto("ve_fild04",49,249)
end

warp("ve_fild03","VeF03S_VeF05N_222_431",222,43,1,1)
function VeF03S_VeF05N_222_431()
	moveto("ve_fild05",200,325)
end

warp("ve_fild03","VeF03M_thorV01WIn_168_2401",168,240,1,1)
function VeF03M_thorV01WIn_168_2401()
	moveto("thor_v01",21,229)
end

warp("ve_fild06","VeF06W_veNGate_153_2201",153,220,1,1)
function VeF06W_veNGate_153_2201()
	moveto("veins",218,355)
end

warp("ve_fild01","VeF01E2_VeF02W2_350_921",350,92,1,1)
function VeF01E2_VeF02W2_350_921()
	moveto("ve_fild02",78,133)
end

warp("ve_fild07","VeF07N_veSGate_147_3711",147,371,1,1)
function VeF07N_veSGate_147_3711()
	moveto("veins",146,28)
end

warp("ve_fild06","VeF06W_veNGate_153_2201",153,220,1,1)
function VeF06W_veNGate_153_2201()
	moveto("veins",218,355)
end

warp("ve_fild02","VeF02W_VeF01E_31_2631",31,263,1,1)
function VeF02W_VeF01E_31_2631()
	moveto("ve_fild01",361,267)
end

warp("ve_fild04","VeF04N_VeF01S_174_3391",174,339,1,1)
function VeF04N_VeF01S_174_3391()
	moveto("ve_fild01",184,25)
end

warp("ve_fild04","VeF04W_VeF03E_44_2491",44,249,1,1)
function VeF04W_VeF03E_44_2491()
	moveto("ve_fild03",350,220)
end

warp("ve_fild05","VeF05N_VeF03S_200_3301",200,330,1,1)
function VeF05N_VeF03S_200_3301()
	moveto("ve_fild03",222,48)
end

warp("ve_fild02","VeF02W2_VeF01E2_73_1331",73,133,1,1)
function VeF02W2_VeF01E2_73_1331()
	moveto("ve_fild01",345,92)
end

warp("ve_fild06","VeF06S_VeF04S05E_81_1771",81,177,1,1)
function VeF06S_VeF04S05E_81_1771()
	local vef6_45 = math.random(1,2)
	if vef6_45 == 1 then
		moveto("ve_fild04",115,55)
	else
		moveto("ve_fild05",354,191)
	end
end

warp("ve_fild04","VeF04S_VeF06S_115_501",115,50,1,1)
function VeF04S_VeF06S_115_501()
	moveto("ve_fild06",80,183)
end

warp("ve_fild05","VeF05E_VeF06S_359_1921",359,192,1,1)
function VeF05E_VeF06S_359_1921()
	moveto("ve_fild06",80,183)
end
