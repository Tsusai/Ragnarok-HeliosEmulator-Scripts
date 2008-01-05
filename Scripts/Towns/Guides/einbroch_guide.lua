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

npc("einbroch","Guide#ein",spr_4_M_EIN_SOLDIER,72,202,4,0,0,"einbroch_Guide#ein_72202")
function einbroch_Guide_ein_72202()
	showimage("ein_soldier.bmp",2)
	dialog "[Einbroch Guide]"
	dialog "Welcome"
	dialog "to Einbroch,"
	dialog "the City of Steel."
	dialog "Please ask me if you"
	dialog "have any questions."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map.","Notice.","Cancel.")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Einbroch Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes.","No.")
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
				local mresultb = menu("^FF0000Airport^000000","Train Station","Factory","Plaza","Hotel","Weapon Shop","Laboratory","Blacksmith Guild","Einbroch Tower","Cancel")
				if mresultb == 1 then
					dialog "[Einbroch Guide]"
					dialog "The ^FF0000Airport^000000 is located"
					dialog "in the northwestern part"
					dialog "of the city. There you can"
					dialog "see our city's pride and joy, the Airship. Remember that you must pay admission to board the Airship."
					if getvar(compass_check) == 1 then
						compass(2,63,228,1,"0xFFFF0000")
					else
						compass(2,63,228,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Einbroch Guide]"
					dialog "The Train Station is"
					dialog "located in the northeast"
					dialog "part of Einbroch. Trains"
					dialog "running between here"
					dialog "and Einbech run all day"
					dialog "long, everyday."
					if getvar(compass_check) == 1 then
						compass(3,236,279,1,"0xFFFF00FF")
					else
						compass(3,236,279,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Einbroch Guide]"
					dialog "The Factory, perhaps the"
					dialog "most important facility in"
					dialog "Einbroch, is located in the"
					dialog "southern part of the city."
					if getvar(compass_check) == 1 then
						compass(4,158,78,1,"0xFFFF00FF")
					else
						compass(4,158,78,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Einbroch Guide]"
					dialog "The Plaza, our biggest"
					dialog "shopping district, can be"
					dialog "found just east from the"
					dialog "center of Einbroch."
					if getvar(compass_check) == 1 then
						compass(5,232,190,1,"0xFFFF00FF")
					else
						compass(5,232,190,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Einbroch Guide]"
					dialog "The Hotel is east of"
					dialog "the Plaza and offers top"
					dialog "caliber accomodations."
					dialog "There, you can enjoy your"
					dialog "stay in Einbroch in comfort~"
					if getvar(compass_check) == 1 then
						compass(6,260,201,1,"0xFF00FF00")
					else
						compass(6,260,201,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Einbroch Guide]"
					dialog "The Weapon Shop is"
					dialog "located north from the"
					dialog "Plaza. There you can"
					dialog "purchase weapons for"
					dialog "your personal use."
					if getvar(compass_check) == 1 then
						compass(7,215,221,1,"0xFF00FF00")
					else
						compass(7,215,221,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Einbroch Guide]"
					dialog "The Laboratory is an"
					dialog "annex of the Factory and"
					dialog "is located in the southwest"
					dialog "sector of Einbroch."
					if getvar(compass_check) == 1 then
						compass(8,36,49,1,"0xFF00FF00")
					else
						compass(8,36,49,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Einbroch Guide]"
					dialog "The Blacksmith Guild is"
					dialog "located in the southeast"
					dialog "part of Einbroch. You can"
					dialog "upgrade your equipment"
					dialog "by using their services."
					if getvar(compass_check) == 1 then
						compass(9,244,90,1,"0xFF00FF00")
					else
						compass(9,244,90,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Einbroch Guide]"
					dialog "The Einbroch Tower is"
					dialog "located in the center of"
					dialog "the city. From the top of"
					dialog "the tower, you can view"
					dialog "all of Einbroch."
					if getvar(compass_check) == 1 then
						compass(10,174,195,1,"0xFFFFFF00")
					else
						compass(10,174,195,0,"0xFFFFFF00")
					end
				elseif mresultb == 10 then
					compass_check("=",1)
					dialog "[Einbroch Guide]"
					dialog("Please ask me to ","Remove")
					dialog("Marks from Mini-Map","if","you")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,63,228,2,"0xFF00FF00")
			compass(3,236,279,2,"0xFF00FF00")
			compass(4,158,78,2,"0xFF00FF00")
			compass(5,232,190,2,"0xFF00FF00")
			compass(6,260,201,2,"0xFF00FF00")
			compass(7,215,221,2,"0xFF00FF00")
			compass(8,36,49,2,"0xFF00FF00")
			compass(9,244,90,2,"0xFF00FF00")
			compass(10,174,195,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Einbroch Guide]"
			dialog "Okay, the marks from"
			dialog "your Mini-Map have been"
			dialog "removed. If you need any"
			dialog "guidance around Einbroch,"
			dialog "please let me or one of the"
			dialog "other Einbroch Guides know."
		elseif mresulta == 3 then
			dialog "[Einbroch Guide]"
			dialog "Through the technology of"
			dialog "the Schwaltzvalt Republic,"
			dialog "we've upgraded to a digital"
			dialog "information system that allows"
			dialog "us to mark locations on your"
			dialog "Mini-Map for easier navigation."
			wait()
			dialog "[Einbroch Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the Map button in your Basic Info Window.")
			wait()
			dialog "[Einbroch Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the  + and -")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Einbroch, adventurer."
		elseif mresulta == 4 then
			dialog "[Einbroch Guide]"
			dialog "We hope that you"
			dialog "enjoy your travels"
			dialog "here in Einbroch."
			dialog "Oh, and please be"
			dialog "aware of the Smog Alerts."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end

npc("einbroch","Guide",spr_4_M_EIN_SOLDIER,155,43,4,0,0,"einbroch_Guide_15543")
function einbroch_Guide_15543()
	showimage("ein_soldier.bmp",2)
	dialog "[Einbroch Guide]"
	dialog "Welcome"
	dialog "to Einbroch,"
	dialog "the City of Steel."
	dialog "Please ask me if you"
	dialog "have any questions."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map.","Notice.","Cancel.")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Einbroch Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes.","No.")
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
				local mresultb = menu("^FF0000Airport^000000","Train Station","Factory","Plaza","Hotel","Weapon Shop","Laboratory","Blacksmith Guild","Einbroch Tower","Cancel")
				if mresultb == 1 then
					dialog "[Einbroch Guide]"
					dialog "The ^FF0000Airport^000000 is located"
					dialog "in the northwestern part"
					dialog "of the city. There you can"
					dialog "see our city's pride and joy, the Airship. Remember that you must pay admission to board the Airship."
					if getvar(compass_check) == 1 then
						compass(2,63,228,1,"0xFFFF0000")
					else
						compass(2,63,228,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Einbroch Guide]"
					dialog "The Train Station is"
					dialog "located in the northeast"
					dialog "part of Einbroch. Trains"
					dialog "running between here"
					dialog "and Einbech run all day"
					dialog "long, everyday."
					if getvar(compass_check) == 1 then
						compass(3,236,279,1,"0xFFFF00FF")
					else
						compass(3,236,279,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Einbroch Guide]"
					dialog "The Factory, perhaps the"
					dialog "most important facility in"
					dialog "Einbroch, is located in the"
					dialog "southern part of the city."
					if getvar(compass_check) == 1 then
						compass(4,158,78,1,"0xFFFF00FF")
					else
						compass(4,158,78,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Einbroch Guide]"
					dialog "The Plaza, our biggest"
					dialog "shopping district, can be"
					dialog "found just east from the"
					dialog "center of Einbroch."
					if getvar(compass_check) == 1 then
						compass(5,232,190,1,"0xFFFF00FF")
					else
						compass(5,232,190,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Einbroch Guide]"
					dialog "The Hotel is east of"
					dialog "the Plaza and offers top"
					dialog "caliber accomodations."
					dialog "There, you can enjoy your"
					dialog "stay in Einbroch in comfort~"
					if getvar(compass_check) == 1 then
						compass(6,260,201,1,"0xFF00FF00")
					else
						compass(6,260,201,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Einbroch Guide]"
					dialog "The Weapon Shop is"
					dialog "located north from the"
					dialog "Plaza. There you can"
					dialog "purchase weapons for"
					dialog "your personal use."
					if getvar(compass_check) == 1 then
						compass(7,215,221,1,"0xFF00FF00")
					else
						compass(7,215,221,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Einbroch Guide]"
					dialog "The Laboratory is an"
					dialog "annex of the Factory and"
					dialog "is located in the southwest"
					dialog "sector of Einbroch."
					if getvar(compass_check) == 1 then
						compass(8,36,49,1,"0xFF00FF00")
					else
						compass(8,36,49,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Einbroch Guide]"
					dialog "The Blacksmith Guild is"
					dialog "located in the southeast"
					dialog "part of Einbroch. You can"
					dialog "upgrade your equipment"
					dialog "by using their services."
					if getvar(compass_check) == 1 then
						compass(9,244,90,1,"0xFF00FF00")
					else
						compass(9,244,90,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Einbroch Guide]"
					dialog "The Einbroch Tower is"
					dialog "located in the center of"
					dialog "the city. From the top of"
					dialog "the tower, you can view"
					dialog "all of Einbroch."
					if getvar(compass_check) == 1 then
						compass(10,174,195,1,"0xFFFFFF00")
					else
						compass(10,174,195,0,"0xFFFFFF00")
					end
				elseif mresultb == 10 then
					compass_check("=",1)
					dialog "[Einbroch Guide]"
					dialog("Please ask me to  Remove")
					dialog("Marks from Mini-Map","if","you")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,63,228,2,"0xFF00FF00")
			compass(3,236,279,2,"0xFF00FF00")
			compass(4,158,78,2,"0xFF00FF00")
			compass(5,232,190,2,"0xFF00FF00")
			compass(6,260,201,2,"0xFF00FF00")
			compass(7,215,221,2,"0xFF00FF00")
			compass(8,36,49,2,"0xFF00FF00")
			compass(9,244,90,2,"0xFF00FF00")
			compass(10,174,195,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Einbroch Guide]"
			dialog "Okay, the marks from"
			dialog "your Mini-Map have been"
			dialog "removed. If you need any"
			dialog "guidance around Einbroch,"
			dialog "please let me or one of the"
			dialog "other Einbroch Guides know."
		elseif mresulta == 3 then
			dialog "[Einbroch Guide]"
			dialog "Through the technology of"
			dialog "the Schwaltzvalt Republic,"
			dialog "we've upgraded to a digital"
			dialog "information system that allows"
			dialog "us to mark locations on your"
			dialog "Mini-Map for easier navigation."
			wait()
			dialog "[Einbroch Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the Map button in your Basic Info Window.")
			wait()
			dialog "[Einbroch Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the  + and -")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Einbroch, adventurer."
		elseif mresulta == 4 then
			dialog "[Einbroch Guide]"
			dialog "We hope that you"
			dialog "enjoy your travels"
			dialog "here in Einbroch."
			dialog "Oh, and please be"
			dialog "aware of the Smog Alerts."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end

npc("einbroch","Guide",spr_4_M_EIN_SOLDIER,162,317,4,0,0,"einbroch_Guide_162317")
function einbroch_Guide_162317()
	showimage("ein_soldier.bmp",2)
	dialog "[Einbroch Guide]"
	dialog "Welcome"
	dialog "to Einbroch,"
	dialog "the City of Steel."
	dialog "Please ask me if you"
	dialog "have any questions."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map.","Notice.","Cancel.")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Einbroch Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes.","No.")
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
				local mresultb = menu("^FF0000Airport^000000","Train Station","Factory","Plaza","Hotel","Weapon Shop","Laboratory","Blacksmith Guild","Einbroch Tower","Cancel")
				if mresultb == 1 then
					dialog "[Einbroch Guide]"
					dialog "The ^FF0000Airport^000000 is located"
					dialog "in the northwestern part"
					dialog "of the city. There you can"
					dialog "see our city's pride and joy, the Airship. Remember that you must pay admission to board the Airship."
					if getvar(compass_check) == 1 then
						compass(2,63,228,1,"0xFFFF0000")
					else
						compass(2,63,228,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Einbroch Guide]"
					dialog "The Train Station is"
					dialog "located in the northeast"
					dialog "part of Einbroch. Trains"
					dialog "running between here"
					dialog "and Einbech run all day"
					dialog "long, everyday."
					if getvar(compass_check) == 1 then
						compass(3,236,279,1,"0xFFFF00FF")
					else
						compass(3,236,279,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Einbroch Guide]"
					dialog "The Factory, perhaps the"
					dialog "most important facility in"
					dialog "Einbroch, is located in the"
					dialog "southern part of the city."
					if getvar(compass_check) == 1 then
						compass(4,158,78,1,"0xFFFF00FF")
					else
						compass(4,158,78,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Einbroch Guide]"
					dialog "The Plaza, our biggest"
					dialog "shopping district, can be"
					dialog "found just east from the"
					dialog "center of Einbroch."
					if getvar(compass_check) == 1 then
						compass(5,232,190,1,"0xFFFF00FF")
					else
						compass(5,232,190,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Einbroch Guide]"
					dialog "The Hotel is east of"
					dialog "the Plaza and offers top"
					dialog "caliber accomodations."
					dialog "There, you can enjoy your"
					dialog "stay in Einbroch in comfort~"
					if getvar(compass_check) == 1 then
						compass(6,260,201,1,"0xFF00FF00")
					else
						compass(6,260,201,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Einbroch Guide]"
					dialog "The Weapon Shop is"
					dialog "located north from the"
					dialog "Plaza. There you can"
					dialog "purchase weapons for"
					dialog "your personal use."
					if getvar(compass_check) == 1 then
						compass(7,215,221,1,"0xFF00FF00")
					else
						compass(7,215,221,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Einbroch Guide]"
					dialog "The Laboratory is an"
					dialog "annex of the Factory and"
					dialog "is located in the southwest"
					dialog "sector of Einbroch."
					if getvar(compass_check) == 1 then
						compass(8,36,49,1,"0xFF00FF00")
					else
						compass(8,36,49,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Einbroch Guide]"
					dialog "The Blacksmith Guild is"
					dialog "located in the southeast"
					dialog "part of Einbroch. You can"
					dialog "upgrade your equipment"
					dialog "by using their services."
					if getvar(compass_check) == 1 then
						compass(9,244,90,1,"0xFF00FF00")
					else
						compass(9,244,90,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Einbroch Guide]"
					dialog "The Einbroch Tower is"
					dialog "located in the center of"
					dialog "the city. From the top of"
					dialog "the tower, you can view"
					dialog "all of Einbroch."
					if getvar(compass_check) == 1 then
						compass(10,174,195,1,"0xFFFFFF00")
					else
						compass(10,174,195,0,"0xFFFFFF00")
					end
				elseif mresultb == 10 then
					compass_check("=",1)
					dialog "[Einbroch Guide]"
					dialog("Please ask me to Remove")
					dialog("Marks from Mini-Map if you")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,63,228,2,"0xFF00FF00")
			compass(3,236,279,2,"0xFF00FF00")
			compass(4,158,78,2,"0xFF00FF00")
			compass(5,232,190,2,"0xFF00FF00")
			compass(6,260,201,2,"0xFF00FF00")
			compass(7,215,221,2,"0xFF00FF00")
			compass(8,36,49,2,"0xFF00FF00")
			compass(9,244,90,2,"0xFF00FF00")
			compass(10,174,195,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Einbroch Guide]"
			dialog "Okay, the marks from"
			dialog "your Mini-Map have been"
			dialog "removed. If you need any"
			dialog "guidance around Einbroch,"
			dialog "please let me or one of the"
			dialog "other Einbroch Guides know."
		elseif mresulta == 3 then
			dialog "[Einbroch Guide]"
			dialog "Through the technology of"
			dialog "the Schwaltzvalt Republic,"
			dialog "we've upgraded to a digital"
			dialog "information system that allows"
			dialog "us to mark locations on your"
			dialog "Mini-Map for easier navigation."
			wait()
			dialog "[Einbroch Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the  Map button in your Basic Info Window.")
			wait()
			dialog "[Einbroch Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the + and -")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Einbroch, adventurer."
		elseif mresulta == 4 then
			dialog "[Einbroch Guide]"
			dialog "We hope that you"
			dialog "enjoy your travels"
			dialog "here in Einbroch."
			dialog "Oh, and please be"
			dialog "aware of the Smog Alerts."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end

npc("einbech","Guide",spr_4_M_EIN_SOLDIER,67,37,4,0,0,"einbech_Guide_6737")
function einbech_Guide_6737()
	showimage("ein_soldier.bmp",2)
	dialog "[Einbech Guide]"
	dialog "Welcome to Einbech,"
	dialog "the Mining Town. We're"
	dialog "here to assist tourists,"
	dialog "so if you have any questions,"
	dialog "please feel free to ask us."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map.","Notice.","Cancel.")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Einbech Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes.","No.")
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
				local mresultb = menu("Train Station","Tavern","Tool Shop","Swordman Guild","Mine","Cancel")
				if mresultb == 1 then
					dialog "[Einbech Guide]"
					dialog "The Train Stations are"
					dialog "located in the northwest"
					dialog "and northeast parts of"
					dialog "Einbech. There, you can"
					dialog "take a train to Einbroch."
					if getvar(compass_check) == 1 then
						compass(2,43,213,1,"0xFFFF0000")
					else
						compass(2,43,213,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Einbech Guide]"
					dialog "The Tavern is located"
					dialog "in the southern part of"
					dialog "Einbech. It's a nice place"
					dialog "to relax after a long day."
					if getvar(compass_check) == 1 then
						compass(3,142,112,1,"0xFFFF00FF")
					else
						compass(3,142,112,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Einbech Guide]"
					dialog "You can find the Tool"
					dialog "Shop in the center of"
					dialog "Einbech. There, you can"
					dialog "purchase any tools you"
					dialog "might need for your travels."
					if getvar(compass_check) == 1 then
						compass(4,176,136,1,"0xFFFF00FF")
					else
						compass(4,176,136,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Einbech Guide]"
					dialog "The Swordman Guild"
					dialog "is located in the eastern"
					dialog "outskirts of Einbech. It's"
					dialog "under construction and they"
					dialog "haven't started accepting"
					dialog "applications."
					if getvar(compass_check) == 1 then
						compass(5,250,110,1,"0xFFFF00FF")
					else
						compass(5,250,110,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Einbech Guide]"
					dialog "The Mine, which is"
					dialog "Einbech's major industry,"
					dialog "is located in the northern"
					dialog "part of this town. It's where"
					dialog "we get all our ores, although monsters get in the miners' way."
					if getvar(compass_check) == 1 then
						compass(6,138,251,1,"0xFF00FF00")
					else
						compass(6,138,251,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					compass_check("=",1)
					dialog "[Einbech Guide]"
					dialog("Please ask me to  Remove")
					dialog("Marks from Mini-Map if you")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,43,213,2,"0xFF00FF00")
			compass(3,142,112,2,"0xFF00FF00")
			compass(4,176,136,2,"0xFF00FF00")
			compass(5,250,110,2,"0xFF00FF00")
			compass(6,138,251,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Einbech Guide]"
			dialog "Okay, the marks from"
			dialog "your Mini-Map have been"
			dialog "removed. If you need any"
			dialog "guidance around Einbech,"
			dialog "please let me or one of the"
			dialog "other Einbech Guides know."
		elseif mresulta == 3 then
			dialog "[Einbech Guide]"
			dialog "Through the technology of"
			dialog "the Schwaltzvalt Republic,"
			dialog "we've upgraded to a digital"
			dialog "information system that allows"
			dialog "us to mark locations on your"
			dialog "Mini-Map for easier navigation."
			wait()
			dialog "[Einbech Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the Map button in your Basic Info Window.")
			wait()
			dialog "[Einbech Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the + and -")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Einbech, adventurer."
		elseif mresulta == 4 then
			dialog "[Einbech Guide]"
			dialog "We hope that you"
			dialog "enjoy your travels"
			dialog "here in Einbech."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end

npc("einbech","Guide",spr_4_M_EIN_SOLDIER,48,214,4,0,0,"einbech_Guide_48214")
function einbech_Guide_48214()
	showimage("ein_soldier.bmp",2)
	dialog "[Einbech Guide]"
	dialog "Welcome to Einbech,"
	dialog "the Mining Town. We're"
	dialog "here to assist tourists,"
	dialog "so if you have any questions,"
	dialog "please feel free to ask us."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map.","Notice.","Cancel.")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Einbech Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
			if compass_check == 0 then
				dialog "Would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes.","No.")
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
				local mresultb = menu("Train Station","Tavern","Tool Shop","Swordman Guild","Mine","Cancel")
				if mresultb == 1 then
					dialog "[Einbech Guide]"
					dialog "The Train Stations are"
					dialog "located in the northwest"
					dialog "and northeast parts of"
					dialog "Einbech. There, you can"
					dialog "take a train to Einbroch."
					if getvar(compass_check) == 1 then
						compass(2,43,213,1,"0xFFFF0000")
					else
						compass(2,43,213,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Einbech Guide]"
					dialog "The Tavern is located"
					dialog "in the southern part of"
					dialog "Einbech. It's a nice place"
					dialog "to relax after a long day."
					if getvar(compass_check) == 1 then
						compass(3,142,112,1,"0xFFFF00FF")
					else
						compass(3,142,112,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Einbech Guide]"
					dialog "You can find the Tool"
					dialog "Shop in the center of"
					dialog "Einbech. There, you can"
					dialog "purchase any tools you"
					dialog "might need for your travels."
					if getvar(compass_check) == 1 then
						compass(4,176,136,1,"0xFFFF00FF")
					else
						compass(4,176,136,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Einbech Guide]"
					dialog "The Swordman Guild"
					dialog "is located in the eastern"
					dialog "outskirts of Einbech. It's"
					dialog "under construction and they"
					dialog "haven't started accepting"
					dialog "applications."
					if getvar(compass_check) == 1 then
						compass(5,250,110,1,"0xFFFF00FF")
					else
						compass(5,250,110,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Einbech Guide]"
					dialog "The Mine, which is"
					dialog "Einbech's major industry,"
					dialog "is located in the northern"
					dialog "part of this town. It's where"
					dialog "we get all our ores, although monsters get in the miners' way."
					if getvar(compass_check) == 1 then
						compass(6,138,251,1,"0xFF00FF00")
					else
						compass(6,138,251,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					compass_check("=",1)
					dialog "[Einbech Guide]"
					dialog("Please ask me to ","Remove")
					dialog("Marks from Mini-Map","if","you")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,43,213,2,"0xFF00FF00")
			compass(3,142,112,2,"0xFF00FF00")
			compass(4,176,136,2,"0xFF00FF00")
			compass(5,250,110,2,"0xFF00FF00")
			compass(6,138,251,2,"0xFF00FF00")
			compass_check("=",0)
			dialog "[Einbech Guide]"
			dialog "Okay, the marks from"
			dialog "your Mini-Map have been"
			dialog "removed. If you need any"
			dialog "guidance around Einbech,"
			dialog "please let me or one of the"
			dialog "other Einbech Guides know."
		elseif mresulta == 3 then
			dialog "[Einbech Guide]"
			dialog "Through the technology of"
			dialog "the Schwaltzvalt Republic,"
			dialog "we've upgraded to a digital"
			dialog "information system that allows"
			dialog "us to mark locations on your"
			dialog "Mini-Map for easier navigation."
			wait()
			dialog "[Einbech Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the  Map button in your Basic Info Window.")
			wait()
			dialog "[Einbech Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the + and -")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Einbech, adventurer."
		elseif mresulta == 4 then
			dialog "[Einbech Guide]"
			dialog "We hope that you"
			dialog "enjoy your travels"
			dialog "here in Einbech."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end
