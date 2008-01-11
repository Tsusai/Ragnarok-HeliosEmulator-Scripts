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

npc("veins","Veins Guide",SPRITE_4_M_RASWORD,210,345,5,0,0,"veins_Veins_Guide_210345")
function veins_Veins_Guide_210345()
	dialog "[Veins Guide]"
	dialog "Thank you for comming through the harsh sandstorms."
	dialog "Welcome to Veins, the Canyon Village."
	dialog "If this is the first time for you"
	dialog "to use the guide services, why"
	dialog "don't you check the Notice menu first?"
	while(1) do
	wait()
	local mresulta = menu("Village Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Veins Guide]"
			dialog "I can tell you any building location as long as it is in Veins."
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
			local mresultb = menu("Temple","Inn","Weapon Shop","Tool Shop","Airship","Tavern","Geological Research Institute","Cancel")
				if mresultb == 1 then
					dialog "[Veins Guide]"
					dialog "Our Temple is located North,"
					dialog "and always crowded with sincere followers of Goddess Freya."
					if getvar(compass_check) == 1 then
						compass(2,196,274,1,"0xFFFF0000")
					else
						compass(2,196,274,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Veins Guide]"
					dialog "You can rest your fatigue of the journey in the Inn."
					dialog "The Inn is located in the North-West side of Veins."
					if getvar(compass_check) == 1 then
						compass(3,131,280,1,"0xFFFF00FF")
					else
						compass(3,131,280,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Veins Guide]"
					dialog "Yes, you should protect yourself from danger on your own."
					dialog "Purchase high quality weapons at affordable prices."
					dialog "The Veins Weapon Shop is located to the West side of Veins."
					if getvar(compass_check) == 1 then
						compass(4,149,184,1,"0xFF99FFFF")
					else
						compass(4,149,184,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					dialog "[Veins Guide]"
					dialog "Have you packed enough necessities  for your adventure?"
					dialog "If not, I suggest you check what the Veins Tool Shop in the Center can offer you."
					if getvar(compass_check) == 1 then
						compass(5,230,172,1,"0xFF0000FF")
					else
						compass(5,230,172,0,"0xFF0000FF")
					end
				elseif mresultb == 5 then
					dialog "[Veins Guide]"
					dialog "Please be aware that Veins only operates cargoships."
					if getvar(compass_check) == 1 then
						compass(6,272,292,1,"0xFFCE9CFF")
					else
						compass(6,272,292,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Veins Guide]"
					dialog "If you'd like to make friends with"
					dialog "the townspeople, I suggest you"
					dialog "go have a drink at the Tavern."
					dialog "The Tavern is located on the West side"
					dialog "of Veins."
					if getvar(compass_check) == 1 then
						compass(7,140,227,1,"0xFFCECE31")
					else
						compass(7,140,227,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Veins Guide]"
					dialog "Are you interested in studying Geology?"
					dialog "Then you'd better go check out the"
					dialog "Geological Research Institute on"
					dialog "the 2nd floor of the Weapon Shop."
					if getvar(compass_check) == 1 then
						compass(8,149,184,1,"0xFFFF9C00")
					else
						compass(8,149,184,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Veins Guide]"
					dialog "If you like to get rid of all the location marks on your Mini-Map,"
					dialog "just ask me again, and choose  Remove Marks from Mini-Map menu."
					break
			end
			end
		elseif mresulta == 2 then
			compass(2,196,274,2,"0xFF00FF00")
			compass(3,131,280,2,"0xFF00FF00")
			compass(4,149,184,2,"0xFF00FF00")
			compass(5,230,172,2,"0xFF00FF00")
			compass(6,272,292,2,"0xFF00FF00")
			compass(7,140,227,2,"0xFF00FF00")
			compass(8,149,184,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Veins Guide]"
			dialog "Okay, they are gone now. If you have more locations to ask, just let me know."
		elseif mresulta == 3 then
			dialog "[Veins Guide]"
			dialog "When you are using the  Village Guide menu "
			dialog "make sure that building locations will be marked on your mini-map at the upper right side of your screen."
			dialog "If you cannot see your mini-map, use the short cut key  ctrl+tab or press the Map button on your basic information windows okay?"
			dialog "And you can also zoom out your mini-map by using the  - button in case you cannot view the entire map of the village." 
		elseif mresulta == 4 then
			dialog "[Veins Guide]"
			dialog "Enjoy your stay in Veins."
			close()
			break
	end
	end
end

npc("veins","Veins Guide",SPRITE_4_M_RASWORD,189,101,5,0,0,"veins_Veins_Guide_189101")
function veins_Veins_Guide_189101()
	dialog "[Veins Guide]"
	dialog "Thank you for comming through the harsh sandstorms."
	dialog "Welcome to Veins, the Canyon Village."
	dialog "If this is the first time for you"
	dialog "to use the guide services, why"
	dialog "don't you check the Notice menu first?"
	while(1) do
	wait()
	local mresulta = menu("Village Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Veins Guide]"
			dialog "I can tell you any building location as long as it is in Veins."
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
			local mresultb = menu("Temple","Inn","Weapon Shop","Tool Shop","Airship","Tavern","Geological Research Institute","Public Security Office","Cancel")
				if mresultb == 1 then
					dialog "[Veins Guide]"
					dialog "Our Temple is located North,"
					dialog "and always crowded with sincere followers of Goddess Freya."
					if getvar(compass_check) == 1 then
						compass(2,196,274,1,"0xFFFF0000")
					else
						compass(2,196,274,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Veins Guide]"
					dialog "You can rest your fatigue of the journey in the Inn."
					dialog "The Inn is located in the North-West side of Veins."
					if getvar(compass_check) == 1 then
						compass(3,131,280,1,"0xFFFF00FF")
					else
						compass(3,131,280,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Veins Guide]"
					dialog "Yes, you should protect yourself from danger on your own."
					dialog "Purchase high quality weapons at affordable prices."
					dialog "The Veins Weapon Shop is located to the West side of Veins."
					if getvar(compass_check) == 1 then
						compass(4,149,184,1,"0xFF99FFFF")
					else
						compass(4,149,184,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					dialog "[Veins Guide]"
					dialog "Have you packed enough necessities  for your adventure?"
					dialog "If not, I suggest you check what the Veins Tool Shop in the Center can offer you."
					if getvar(compass_check) == 1 then
						compass(5,230,172,1,"0xFF0000FF")
					else
						compass(5,230,172,0,"0xFF0000FF")
					end
				elseif mresultb == 5 then
					dialog "[Veins Guide]"
					dialog "Please be aware that Veins only operates cargoships."
					if getvar(compass_check) == 1 then
						compass(6,272,292,1,"0xFFCE9CFF")
					else
						compass(6,272,292,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Veins Guide]"
					dialog "If you'd like to make friends with"
					dialog "the townspeople, I suggest you"
					dialog "go have a drink at the Tavern."
					dialog "The Tavern is located on the West side"
					dialog "of Veins."
					if getvar(compass_check) == 1 then
						compass(7,140,227,1,"0xFFCECE31")
					else
						compass(7,140,227,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Veins Guide]"
					dialog "Are you interested in studying Geology?"
					dialog "Then you'd better go check out the"
					dialog "Geological Research Institute on"
					dialog "the 2nd floor of the Weapon Shop."
					if getvar(compass_check) == 1 then
						compass(8,149,184,1,"0xFFFF9C00")
					else
						compass(8,149,184,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Veins Guide]"
					dialog "We have a Public Security Office here in Veins."
					dialog "If you are in trouble, run tot he Public Security Office."
					if getvar(compass_check) == 1 then
						compass(9,87,170,1,"0xFFFF9C00")
					else
						compass(9,87,170,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Veins Guide]"
					dialog "If you like to get rid of all the location marks on your Mini-Map,"
					dialog "just ask me again, and choose  Remove Marks from Mini-Map menu."
					break
			end
			end
		elseif mresulta == 2 then
			compass(2,196,274,2,"0xFF00FF00")
			compass(3,131,280,2,"0xFF00FF00")
			compass(4,149,184,2,"0xFF00FF00")
			compass(5,230,172,2,"0xFF00FF00")
			compass(6,272,292,2,"0xFF00FF00")
			compass(7,140,227,2,"0xFF00FF00")
			compass(8,149,184,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Veins Guide]"
			dialog "Okay, they are gone now. If you have more locations to ask, just let me know."
		elseif mresulta == 3 then
			dialog "[Veins Guide]"
						dialog "When you are using the  Village Guide menu "
			dialog "make sure that building locations will be marked on your mini-map at the upper right side of your screen."
			dialog "If you cannot see your mini-map, use the short cut key  ctrl+tab or press the Map button on your basic information windows okay?"
			dialog "And you can also zoom out your mini-map by using the  - button in case you cannot view the entire map of the village." 
		elseif mresulta == 4 then
			dialog "[Veins Guide]"
			dialog "Enjoy your stay in Veins."
			close()
			break
	end
	end
end
