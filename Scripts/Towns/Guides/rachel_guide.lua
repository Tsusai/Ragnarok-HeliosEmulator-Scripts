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
--| 05/01/2008                                      |--
--|   - First version for helios, Loads but does    |--
--|     not fully operate. [Spre]                   |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("rachel","Rachel Guide",SPRITE_4_M_RASWORD,138,146,5,0,0,"rachel_Rachel_Guide_138146")
function rachel_Rachel_Guide_138146()
	dialog "[Rachel Guide]"
	dialog "Welcome to the capital of"
	dialog "Arunafeltz, Rachel where a warm"
	dialog "breath of goddess Freya reaches."
	dialog "If this is the first time for you"
	dialog "to use the guide services, why"
	dialog "don't you check the Notice menu first?"
	while(1) do
		wait()
		local mresulta = menu("Village Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Rachel Guide]"
			dialog "I can tell you any building location as long as it is in Rachel."
			dialog "So where do you want to go?"
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					local compass_check = 1
				elseif mresultb == 2 then
					local compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk("=",1)
				else
					wait()
				end
				local mresultb = menu("Cheshrumnir","Inn","Weapon Shop","Tool Shop","Airport","Cancel")
				if mresultb == 1 then
					dialog "[Rachel Guide]"
					dialog "Cheshrumnir is a holy ground where pope, the incarnation of goddess Freya stays."
					dialog "Take the road to the north to find the building."
					if getvar(compass_check) == 1 then
						compass(2,150,249,1,"0xFFFF0000")
					else
						compass(2,150,249,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Rachel Guide]"
					dialog "You can rest your fatigue off the journey in the Inn."
					dialog "The left building next to me is the Inn of Rachel."
					if getvar(compass_check) == 1 then
						compass(3,115,149,1,"0xFFFF00FF")
					else
						compass(3,115,149,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Rachel Guide]"
					dialog "Do you want to check out the weapons that are sold in Rachel?"
					dialog "The weapon shop is located near the western gate."
					if getvar(compass_check) == 1 then
						compass(4,42,87,1,"0xFF99FFFF")
					else
						compass(4,42,87,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					dialog "[Rachel Guide]"
					dialog "Rachel tool shop sells the best quality potions."
					dialog "It's located near the western gate."
					if getvar(compass_check) == 1 then
						compass(5,83,78,1,"0xFF0000FF")
					else
						compass(5,83,78,0,"0xFF0000FF")
					end
				elseif mresultb == 5 then
					dialog "[Rachel Guide]"
					dialog "The Airport is located outside the eastern gate."
					if getvar(compass_check) == 1 then
						compass(6,273,125,1,"0xFF00FF00")
					else
						compass(6,273,125,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Rachel Guide]"
					dialog "If you like to get rid of all the location marks on your Mini-Map,"
					dialog "just ask me again, and choose Remove Marks from Mini-Map menu."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,150,249,2,"0xFFFF0000")
			compass(3,115,149,2,"0xFFFF00FF")
			compass(4,42,87,2,"0xFF99FFFF")
			compass(5,83,78,2,"0xFF0000FF")
			compass(6,273,125,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Rachel Guide]"
			dialog "Okay, they are gone now. If you have more locations to ask, just let me know."
		elseif mresulta == 3 then
			dialog "[Rachel Guide]"
						dialog "When you are using the  Village Guide menu "
			dialog "make sure that building locations will be marked on your mini-map at the upper right side of your screen."
			dialog "If you cannot see your mini-map, use the short cut key  ctrl+tab or press the Map button on your basic information windows okay?"
			dialog "And you can also zoom out your mini-map by using the  - button in case you cannot view the entire map of the village." 
		elseif mresulta == 4 then
			dialog "[Rachel Guide]"
			dialog "Hope you have a wonderfull journey"
			dialog "in Arunafeltz."
			close()
			break
		end
	end
end
