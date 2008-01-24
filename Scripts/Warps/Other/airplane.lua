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

--[[====================================================
Airplane
======================================================]]
warp("airplane","airplane_air_top_8767",87,67,1,1)
function airplane_air_top_8767()
	moveto("airplane",250,54)
end

warp("airplane","airplane_air_top2_25454",254,54,1,1)
function airplane_air_top2_25454()
	moveto("airplane",91,67)
end

warp("airplane","airplane_to_bridge_00_20853",208,53,1,1)
function airplane_to_bridge_00_20853()
	moveto("airplane",239,160)
end

warp("airplane","airplane_from_bridge_01_245160",245,160,1,1)
function airplane_from_bridge_01_245160()
	moveto("airplane",214,54)
end

warp("airplane","airplane_airwarp_einbroch1_24373",243,73,1,1)
function airplane_airwarp_einbroch1_24373()
	moveto("einbroch",92,278)
end

warp("airplane","airplane_airwarp_einbroch2_24329",243,29,1,1)
function airplane_airwarp_einbroch2_24329()
	moveto("einbroch",92,278)
end

warp("airplane","airplane_airwarp_yuno1_24373",243,73,1,1)
function airplane_airwarp_yuno1_24373()
	moveto("yuno",92,260)
end

warp("airplane","airplane_airwarp_yuno2_24329",243,29,1,1)
function airplane_airwarp_yuno2_24329()
	moveto("yuno",92,260)
end

warp("airplane","airplane_airwarp_lght1_24373",243,73,1,1)
function airplane_airwarp_lght1_24373()
	moveto("lighthalzen",302,75)
end

warp("airplane","airplane_airwarp_lght2_24329",243,29,1,1)
function airplane_airwarp_lght2_24329()
	moveto("lighthalzen",302,75)
end

--[[warp("airplane","airplane_airwarp_hugel1_24373",243,73,1,1)
function airplane_airwarp_hugel1_24373()
	moveto("hugel",181,146)
OnInit:()
	disablenpc "airwarp_hugel1"
	disablenpc "airwarp_hugel2"
end
end
]]

warp("airplane","airplane_airwarp_hugel2_24329",243,29,1,1)
function airplane_airwarp_hugel2_24329()
	moveto("hugel",181,146)
end

warp("airplane_01","airplane_01_airwarp_izlude1_24329",243,29,1,1)
function airplane_01_airwarp_izlude1_24329()
	moveto("izlude",200,56)
end

warp("airplane_01","airplane_01_airwarp_izlude2_24373",243,73,1,1)
function airplane_01_airwarp_izlude2_24373()
	moveto("izlude",200,56)
end

warp("airplane_01","airplane_01_airwarp_yuno01_24329",243,29,1,1)
function airplane_01_airwarp_yuno01_24329()
	moveto("yuno",12,261)
end

warp("airplane_01","airplane_01_airwarp_yuno02_24373",243,73,1,1)
function airplane_01_airwarp_yuno02_24373()
	moveto("yuno",12,261)
end

warp("airplane_01","airplane_01_airwarp_rachel1_24329",243,29,1,1)
function airplane_01_airwarp_rachel1_24329()
	moveto("ra_fild12",292,204)
end

warp("airplane_01","airplane_01_airwarp_rachel2_24373",243,73,1,1)
function airplane_01_airwarp_rachel2_24373()
	moveto("ra_fild12",292,204)
end

warp("airplane_01","airplane_01_air_top_01_8767",87,67,1,1)
function airplane_01_air_top_01_8767()
	moveto("airplane_01",250,54)
end

warp("airplane_01","airplane_01_air_top2_01_25454",254,54,1,1)
function airplane_01_air_top2_01_25454()
	moveto("airplane_01",91,67)
end

warp("airplane_01","airplane_01_to_bridge_01_20853",208,53,1,1)
function airplane_01_to_bridge_01_20853()
	moveto("airplane_01",239,160)
end

warp("airplane_01","airplane_01_from_bridge_01_245160",245,160,1,1)
function airplane_01_from_bridge_01_245160()
	moveto("airplane_01",214,54)
end

--[[====================================================
Einbroch Airport
======================================================]]

warp("einbroch","einbroch_airportGate_ariport_64207",64,207,1,1)
function einbroch_airportGate_ariport_64207()
		moveto("airport",143,17)
end

warp("einbroch","einbroch_airwarp_airport2_92281",92,281,1,1)
function einbroch_airwarp_airport2_92281()
	moveto("airplane",224,64)
end

warp("einbroch","einbroch_airwarp_airport3_64234",64,234,1,1)
function einbroch_airwarp_airport3_64234()
	moveto("airport",138,51)
end

warp("airport","airport_2FGateA_2FA_12413",124,13,1,1)
function airport_2FGateA_2FA_12413()
		moveto("airport",19,21)
end

warp("airport","airport_2FGateB_2FB_16113",161,13,1,1)
function airport_2FGateB_2FB_16113()
		moveto("airport",47,21)
end

warp("airport","airport_ariport_airportGate_14314",143,14,1,1)
function airport_ariport_airportGate_14314()
		moveto("einbroch",64,204)
end

warp("airport","airport_2FA_2FGateA_1918",19,18,1,1)
function airport_2FA_2FGateA_1918()
		moveto("airport",122,16)
end

warp("airport","airport_2FB_2FGateB_4718",47,18,1,1)
function airport_2FB_2FGateB_4718()
		moveto("airport",163,16)
end

warp("airport","airport_airwarp_airport1_14261",142,61,1,1)
function airport_airwarp_airport1_14261()
	moveto("einbroch",62,246)
end


--[[====================================================
Lighthalzen Airport
======================================================]]
warp("lighthalzen","lighthalzen_LightzAirport_LhzAirpoI101_26775",267,75,1,1)
function lighthalzen_LightzAirport_LhzAirpoI101_26775()
	moveto("lhz_airport",142,17)
end

warp("lighthalzen","lighthalzen_toairplane_lght_30876",308,76,1,1)
function lighthalzen_toairplane_lght_30876()
	moveto("airplane",244,58)
end

warp("lighthalzen","lighthalzen_toairport_lght_29476",294,76,1,1)
function lighthalzen_toairport_lght_29476()
	moveto("lhz_airport",143,53)
end

warp("lhz_airport","lhz_airport_out_lght_14260",142,60,1,1)
function lhz_airport_out_lght_14260()
	moveto("lighthalzen",296,76)
end

warp("lhz_airport","lhz_airport_LhzAirpoI102_LhzAirpoI201_12513",125,13,1,1)
function lhz_airport_LhzAirpoI102_LhzAirpoI201_12513()
	moveto("lhz_airport",19,23)
end

warp("lhz_airport","lhz_airport_LhzAirpoI103_LhzAirpoI202_16013",160,13,1,1)
function lhz_airport_LhzAirpoI103_LhzAirpoI202_16013()
	moveto("lhz_airport",47,23)
end

warp("lhz_airport","lhz_airport_LhzAirpoI101_LightzAirport_14213",142,13,1,1)
function lhz_airport_LhzAirpoI101_LightzAirport_14213()
	moveto("lighthalzen",262,75)
end

warp("lhz_airport","lhz_airport_LhzAirpoI201_LhzAirpoI102_1918",19,18,1,1)
function lhz_airport_LhzAirpoI201_LhzAirpoI102_1918()
	moveto("lhz_airport",121,16)
end

warp("lhz_airport","lhz_airport_LhzAirpoI202_LhzAirpoI103_4718",47,18,1,1)
function lhz_airport_LhzAirpoI202_LhzAirpoI103_4718()
	moveto("lhz_airport",163,16)
end

--[[====================================================
Yuno Airport
======================================================]]
warp("yuno","yuno_toairport_yuno_53214",53,214,1,1)
function yuno_toairport_yuno_53214()
	moveto("y_airport",143,23)
end

warp("y_airport","y_airport_toyuno_yuno_14316",143,16,1,1)
function y_airport_toyuno_yuno_14316()
	moveto("yuno",52,207)
end

warp("yuno","yuno_toizu_yuno_96261",96,261,1,1)
function yuno_toizu_yuno_96261()
	moveto("airplane",244,58)
end

warp("yuno","yuno_tolght_yuno_6261",6,261,1,1)
function yuno_tolght_yuno_6261()
	moveto("airplane_01",244,58)
end

warp("yuno","yuno_toport1_yuno_47240",47,240,1,1)
function yuno_toport1_yuno_47240()
	moveto("y_airport",143,54)
end

warp("yuno","yuno_toport2_yuno_59240",59,240,1,1)
function yuno_toport2_yuno_59240()
	moveto("y_airport",143,54)
end


--[[====================================================
Izlude Airport
======================================================]]
warp("izlude","izlude_toizu_izlude_17656",176,56,1,1)
function izlude_toizu_izlude_17656()
	moveto("izlude",145,40)
end

warp("izlude","izlude_toplane_izlude_14939",149,39,1,1)
function izlude_toplane_izlude_14939()
	moveto("izlude",182,56)
end

--[[====================================================
Hugel Station
======================================================]]
--[[warp("hugel","hugel_toairplane_hugel_178142",178,142,1,1)
OnTouch2:()
	dialog "To use the airship, you are required to pay 1,200 zeny or a Free Airship Ticket."
	dialog "would you like to use the service?"
	wait()
	local mresulta = menu("Yes","No")
		if mresulta == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("airplane",244,58)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
				moveto("airplane",244,58)
					return
				else
					dialog "I am sorry, but you do not have enough money."
					dialog "Please remember, you are required to pay 1,200 zeny to use the service."
					close()
				end
			end
		elseif mresulta == 2 then
			dialog "Thank you, please come again."
			close()
	end
end
]]

--[[====================================================
Rachel Field Station
======================================================]]
--[[warp("ra_fild12","ra_fild12_toairplane_rachel_295208",295,208,1,1)
OnTouch2:()
	dialog "To use the airship, you are required to pay 1,200 zeny or a Free Airship Ticket."
	dialog "would you like to use the service?"
	wait()
	local mresulta = menu("Yes","No")
		if mresulta == 1 then
			if (getvar(Free_Flying_Ship_Ticket) > 0) then
				dropitem("Free_Flying_Ship_Ticket",1)
				moveto("airplane_01",245,60)
				return
			else
				if (getvar(VAR_MONEY) >= 1200) then
					dropgold(1200)
				moveto("airplane_01",245,60)
					return
				else
					dialog "I am sorry, but you do not have enough money."
					dialog "Please remember, you are required to pay 1,200 zeny to use the service."
					close()
				end
			end
		elseif mresulta == 2 then
			dialog "Thank you, please come again."
			close()
	end
end
]]
