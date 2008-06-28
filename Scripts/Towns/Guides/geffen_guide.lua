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

npc("geffen","Guide",SPRITE_4_M_GEF_SOLDIER,203,116,0,0,0,"geffen_Guide_203116")
function geffen_Guide_203116()
	local compass_check = 0
	local wait_button_chk = 0
	showimage("gef_soldier.bmp",2)
	dialog "[Geffen Guide]"
	dialog "Welcome to Geffen,"
	dialog "the City of Magic. If you"
	dialog "need any guidance around"
	dialog "the city, feel free to ask me"
	dialog "and I'll do my best to assist you. ^FFFFFFcobo^000000"
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Geffen Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					local compass_check = 2
				end
			end
			while(1) do
				wait()
				local mresultb = menu("^FF0000Magic Acedemy^000000","Forge Shop","Weapon Shop","Tool Shop","Pub","Inn","Geffen Tower","Cancel")
				if mresultb == 1 then
					dialog "[Geffen Guide]"
					dialog "The Magic Academy in"
					dialog "northwest Geffen handles"
					dialog "Job Changes to the Mage class."
					if compass_check == 1 then
						compass(2,61,180,1,"0xFFFF0000")
					else
						compass(2,61,180,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Geffen Guide]"
					dialog "The Forge Shop is"
					dialog "located just southeast"
					dialog "from the center of Geffen."
					if compass_check == 1 then
						compass(3,182,59,1,"0xFF00FF00")
					else
						compass(3,182,59,0,"0xFF00FF00")
					end
				elseif mresultb == 3 then
					dialog "[Geffen Guide]"
					dialog "The Weapon Shop"
					dialog "can be found northwest"
					dialog "from the center of Geffen."
					if compass_check == 1 then
						compass(4,99,140,1,"0xFFFF00FF")
					else
						compass(4,99,140,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Geffen Guide]"
					dialog "You can find the"
					dialog "Tool Shop by heading"
					dialog "southwest from the"
					dialog "center of Geffen."
					if compass_check == 1 then
						compass(5,44,86,1,"0xFFFF00FF")
					else
						compass(5,44,86,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Geffen Guide]"
					dialog "The Pub can be"
					dialog "found northeast"
					dialog "from the Geffen Tower."
					if compass_check == 1 then
						compass(6,138,138,1,"0xFFFF00FF")
					else
						compass(6,138,138,0,"0xFFFF00FF")
					end
				elseif mresultb == 6 then
					dialog "[Geffen Guide]"
					dialog "The Inn can be"
					dialog "found by traveling"
					dialog "northeast from the"
					dialog "center of Geffen."
					if compass_check == 1 then
						compass(7,172,174,1,"0xFFFF00FF")
					else
						compass(7,172,174,0,"0xFFFF00FF")
					end
				elseif mresultb == 7 then
					dialog "[Geffen Guide]"
					dialog "Geffen Tower is found"
					dialog "in the center of the city."
					dialog "The Wizard Guild is at the"
					dialog "top, and there's even a dungeon"
					dialog "underneath it. There's many a"
					dialog "mystery surrounding that tower..."
					if compass_check == 1 then
						compass(8,120,114,1,"0xFF00FF00")
					else
						compass(8,120,114,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					--compass_check("=",1)
					dialog "[Geffen Guide]"
					dialog "Please ask me to  Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,237,41,2,"0xFF00FF00")
			compass(3,237,41,2,"0xFF0000FF")
			compass(4,46,345,2,"0xFF00FF00")
			compass(5,175,220,2,"0xFFFF0000")
			compass(6,134,221,2,"0xFFFF0000")
			compass(7,204,214,2,"0xFFFF0000")
			compass(8,204,214,2,"0xFF00FF00")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Geffen Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Geffen Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Geffen Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Geffen."
		elseif mresulta == 4 then
			dialog "[Geffen Guide]"
			dialog "Alright, adventurer."
			dialog "I wish you safety on"
			dialog "your journeys through"
			dialog "the lands you may travel..."
			close()
			break
		end
	end
	showimage("gef_soldier.bmp",255)
end

npc("geffen","Guide",SPRITE_4_M_GEF_SOLDIER,118,62,0,0,0,"geffen_Guide_11862")
function geffen_Guide_11862()
	showimage("gef_soldier.bmp",2)
	dialog "[Geffen Guide]"
	dialog "Welcome to Geffen,"
	dialog "the City of Magic. If you"
	dialog "need any guidance around"
	dialog "the city, feel free to ask me"
	dialog "and I'll do my best to assist you. ^FFFFFFcobo^000000"
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Geffen Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					local compass_check = 2
				end
			end
			while(1) do
				wait()
				local mresultb = menu("^FF0000Magic Acedemy^000000","Forge Shop","Weapon Shop","Tool Shop","Pub","Inn","Geffen Tower","Cancel")
				if mresultb == 1 then
					dialog "[Geffen Guide]"
					dialog "The Magic Academy in"
					dialog "northwest Geffen handles"
					dialog "Job Changes to the Mage class."
					if compass_check == 1 then
						compass(2,61,180,1,"0xFFFF0000")
					else
						compass(2,61,180,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Geffen Guide]"
					dialog "The Forge Shop is"
					dialog "located just southeast"
					dialog "from the center of Geffen."
					if compass_check == 1 then
						compass(3,182,59,1,"0xFF00FF00")
					else
						compass(3,182,59,0,"0xFF00FF00")
					end
				elseif mresultb == 3 then
					dialog "[Geffen Guide]"
					dialog "The Weapon Shop"
					dialog "can be found northwest"
					dialog "from the center of Geffen."
					if compass_check == 1 then
						compass(4,99,140,1,"0xFFFF00FF")
					else
						compass(4,99,140,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Geffen Guide]"
					dialog "You can find the"
					dialog "Tool Shop by heading"
					dialog "southwest from the"
					dialog "center of Geffen."
					if compass_check == 1 then
						compass(5,44,86,1,"0xFFFF00FF")
					else
						compass(5,44,86,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Geffen Guide]"
					dialog "The Pub can be"
					dialog "found northeast"
					dialog "from the Geffen Tower."
					if compass_check == 1 then
						compass(6,138,138,1,"0xFFFF00FF")
					else
						compass(6,138,138,0,"0xFFFF00FF")
					end
				elseif mresultb == 6 then
					dialog "[Geffen Guide]"
					dialog "The Inn can be"
					dialog "found by traveling"
					dialog "northeast from the"
					dialog "center of Geffen."
					if compass_check == 1 then
						compass(7,172,174,1,"0xFFFF00FF")
					else
						compass(7,172,174,0,"0xFFFF00FF")
					end
				elseif mresultb == 7 then
					dialog "[Geffen Guide]"
					dialog "Geffen Tower is found"
					dialog "in the center of the city."
					dialog "The Wizard Guild is at the"
					dialog "top, and there's even a dungeon"
					dialog "underneath it. There's many a"
					dialog "mystery surrounding that tower..."
					if compass_check == 1 then
						compass(8,120,114,1,"0xFF00FF00")
					else
						compass(8,120,114,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					--compass_check("=",1)
					dialog "[Geffen Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,237,41,2,"0xFF00FF00")
			compass(3,237,41,2,"0xFF0000FF")
			compass(4,46,345,2,"0xFF00FF00")
			compass(5,175,220,2,"0xFFFF0000")
			compass(6,134,221,2,"0xFFFF0000")
			compass(7,204,214,2,"0xFFFF0000")
			compass(8,204,214,2,"0xFF00FF00")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Geffen Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Geffen Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog"keys or click the Map button in your Basic Info Window."
			wait()
			dialog "[Geffen Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Geffen."
		elseif mresulta == 4 then
			dialog "[Geffen Guide]"
			dialog "Alright, adventurer."
			dialog "I wish you safety on"
			dialog "your journeys through"
			dialog "the lands you may travel..."
			close()
			break
		end
	end
	showimage("gef_soldier.bmp",255)
end
