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

npc("prontera","Guide",SPRITE_8W_SOLDIER,154,187,4,0,0,"prontera_Guide_154187")
function prontera_Guide_154187()
	showimage("prt_soldier.bmp",2)
	dialog "[Prontera Guide]"
	dialog "Welcome to Prontera,"
	dialog "the beautiful capital of the"
	dialog "Rune-Midgarts Kingdom. If"
	dialog "you have questions or need^FFFFFF33333^000000 help finding something in the^FFFFFFco^000000 city, don't hesitate to ask."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Prontera Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
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
				wait()
				local mresultb = menu("Swordman Association","^0000FFSanctuary^000000","Prontera Chivalry","Weapon Shop","Tool Shop","Inn","Trading Post","Pub","Library","Job Agency","Prontera Castle","City Hall","Cancel")
				if mresultb == 1 then
					dialog "[Prontera Guide]"
					dialog "The Swordman Association,"
					dialog "which handles Job Changes"
					dialog "to the Swordman class, has"
					dialog "moved to Izlude. This facility"
					dialog "is just an empty building now."
					if compass_check == 1 then
						compass(4,237,41,1,"0xFF00FF00")
					else
						compass(4,237,41,0,"0xFF00FF00")
					end
				elseif mresultb == 2 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Sanctuary"
					dialog "handles Job Changes to"
					dialog "the Acolyte class, and can"
					dialog "be found in the northeast"
					dialog "corner of Prontera."
					if compass_check == 1 then
						compass(5,236,316,1,"0xFFFF0000")
					else
						compass(5,236,316,0,"0xFFFF0000")
					end
				elseif mresultb == 3 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Chivralry,"
					dialog "which is responsible for"
					dialog "the safety of our capital, is"
					dialog "in Prontera's northwest corner."
					if compass_check == 1 then
						compass(6,46,345,1,"0xFF00FF00")
					else
						compass(6,46,345,0,"0xFF00FF00")
					end
				elseif mresultb == 4 then
					dialog "[Prontera Guide]"
					dialog "The Weapon Shop"
					dialog "is located northeast"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(7,175,220,1,"0xFFFF00FF")
					else
						compass(7,175,220,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Prontera Guide]"
					dialog "The Tool Shop"
					dialog "is located northwest"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(8,134,221,1,"0xFFFF00FF")
					else
						compass(8,134,221,0,"0xFFFF00FF")
					end
				elseif mresultb == 6 then
					dialog "[Prontera Guide]"
					dialog "The Inns in Prontera are"
					dialog "located both to the east"
					dialog "and west of Prontera's"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(9,204,191,1,"0xFFFF00FF")
						compass(10,107,192,1,"0xFFFF00FF")
					else
						compass(9,204,191,0,"0xFFFF00FF")
						compass(10,107,192,0,"0xFFFF00FF")
					end
				elseif mresultb == 7 then
					dialog "[Prontera Guide]"
					dialog "The Trading Post"
					dialog "can be found southeast"
					dialog "from the central fountain."
					if compass_check == 1 then
						compass(11,179,184,1,"0xFF00FF00")
					else
						compass(11,179,184,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Prontera Guide]"
					dialog "The Pub is located"
					dialog "southeast of the fountain,"
					dialog "behind the Trading Post."
					if compass_check == 1 then
						compass(12,208,154,1,"0xFF00FF00")
					else
						compass(12,208,154,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Prontera Guide]"
					dialog "If you head north from"
					dialog "the central fountain, you'll"
					dialog "find an empty area in which"
					dialog "both branches of the Prontera"
					dialog "Library can be accessed if you"
					dialog "head towards the east or west."
					if compass_check == 1 then
						compass(13,120,267,1,"0xFF00FF00")
						compass(14,192,267,1,"0xFF00FF00")
					else
						compass(13,120,267,0,"0xFF00FF00")
						compass(14,192,267,0,"0xFF00FF00")
					end
				elseif mresultb == 10 then
					dialog "[Prontera Guide]"
					dialog "The Job Agency is"
					dialog "just southwest of the"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(15,133,183,1,"0xFF00FF00")
					else
						compass(15,133,183,0,"0xFF00FF00")
					end
				elseif mresultb == 11 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Castle is"
					dialog "located at the northern"
					dialog "sector of this city. You can"
					dialog "go to the fields that are north"
					dialog "of Prontera by going through"
					dialog "the castle's rear exit."
					if compass_check == 1 then
						compass(16,156,360,1,"0xFF00FF00")
					else
						compass(16,156,360,0,"0xFF00FF00")
					end
				elseif mresultb == 12 then
					dialog "[Prontera Guide]"
					dialog "The City Hall"
					dialog "is located in the"
					dialog "southwest corner"
					dialog "in our city of Prontera."
					if compass_check == 1 then
						compass(17,75,91,1,"0xFF01FF01")
					else
						compass(17,75,91,0,"0xFF00FF00")
					end
				elseif mresultb == 13 then
					--compass_check("=",1)
					dialog "[Prontera Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(4,237,41,2,"0xFF00FF00")
			compass(5,237,41,2,"0xFF0000FF")
			compass(6,46,345,2,"0xFF00FF00")
			compass(7,175,220,2,"0xFFFF0000")
			compass(8,134,221,2,"0xFFFF0000")
			compass(9,204,191,2,"0xFFFF0000")
			compass(10,107,192,2,"0xFFFF0000")
			compass(11,179,184,2,"0xFF00FF00")
			compass(12,208,154,2,"0xFF00FF00")
			compass(13,120,267,2,"0xFF00FF00")
			compass(14,192,267,2,"0xFF00FF00")
			compass(15,133,183,2,"0xFF00FF00")
			compass(16,156,360,2,"0xFF00FF00")
			compass(17,75,91,2,"0xFF00FF00")
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Prontera Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Prontera Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Prontera Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Prontera."
		elseif mresulta == 4 then
			dialog "[Prontera Guide]"
			dialog "Well, adventurer..."
			dialog "I hope your journeys"
			dialog "through Rune-Midgard"
			dialog "are both fun and safe."
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end

npc("prontera","East GateGuide",SPRITE_8W_SOLDIER,282,208,2,0,0,"prontera_East_GateGuide_282208")
function prontera_East_GateGuide_282208()
	showimage("prt_soldier.bmp",2)
	dialog "[Prontera Guide]"
	dialog "Welcome to Prontera,"
	dialog "the beautiful capital of the"
	dialog "Rune-Midgarts Kingdom. If"
	dialog "you have questions or need^FFFFFF33333^000000 help finding something in the^FFFFFFco^000000 city, don't hesitate to ask."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Prontera Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
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
				wait()
				local mresultb = menu("Swordman Association","^0000FFSanctuary^000000","Prontera Chivalry","Weapon Shop","Tool Shop","Inn","Trading Post","Pub","Library","Job Agency","Prontera Castle","City Hall","Cancel")
				if mresultb == 1 then
					dialog "[Prontera Guide]"
					dialog "The Swordman Association,"
					dialog "which handles Job Changes"
					dialog "to the Swordman class, has"
					dialog "moved to Izlude. This facility"
					dialog "is just an empty building now."
					if compass_check == 1 then
						compass(4,237,41,1,"0xFF00FF00")
					else
						compass(4,237,41,0,"0xFF00FF00")
					end
				elseif mresultb == 2 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Sanctuary"
					dialog "handles Job Changes to"
					dialog "the Acolyte class, and can"
					dialog "be found in the northeast"
					dialog "corner of Prontera."
					if compass_check == 1 then
						compass(5,236,316,1,"0xFFFF0000")
					else
						compass(5,236,316,0,"0xFFFF0000")
					end
				elseif mresultb == 3 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Chivralry,"
					dialog "which is responsible for"
					dialog "the safety of our capital, is"
					dialog "in Prontera's northwest corner."
					if compass_check == 1 then
						compass(6,46,345,1,"0xFF00FF00")
					else
						compass(6,46,345,0,"0xFF00FF00")
					end
				elseif mresultb == 4 then
					dialog "[Prontera Guide]"
					dialog "The Weapon Shop"
					dialog "is located northeast"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(7,175,220,1,"0xFFFF00FF")
					else
						compass(7,175,220,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Prontera Guide]"
					dialog "The Tool Shop"
					dialog "is located northwest"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(8,134,221,1,"0xFFFF00FF")
					else
						compass(8,134,221,0,"0xFFFF00FF")
					end
				elseif mresultb == 6 then
					dialog "[Prontera Guide]"
					dialog "The Inns in Prontera are"
					dialog "located both to the east"
					dialog "and west of Prontera's"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(9,204,191,1,"0xFFFF00FF")
						compass(10,107,192,1,"0xFFFF00FF")
					else
						compass(9,204,191,0,"0xFFFF00FF")
						compass(10,107,192,0,"0xFFFF00FF")
					end
				elseif mresultb == 7 then
					dialog "[Prontera Guide]"
					dialog "The Trading Post"
					dialog "can be found southeast"
					dialog "from the central fountain."
					if compass_check == 1 then
						compass(11,179,184,1,"0xFF00FF00")
					else
						compass(11,179,184,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Prontera Guide]"
					dialog "The Pub is located"
					dialog "southeast of the fountain,"
					dialog "behind the Trading Post."
					if compass_check == 1 then
						compass(12,208,154,1,"0xFF00FF00")
					else
						compass(12,208,154,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Prontera Guide]"
					dialog "If you head north from"
					dialog "the central fountain, you'll"
					dialog "find an empty area in which"
					dialog "both branches of the Prontera"
					dialog "Library can be accessed if you"
					dialog "head towards the east or west."
					if compass_check == 1 then
						compass(13,120,267,1,"0xFF00FF00")
						compass(14,192,267,1,"0xFF00FF00")
					else
						compass(13,120,267,0,"0xFF00FF00")
						compass(14,192,267,0,"0xFF00FF00")
					end
				elseif mresultb == 10 then
					dialog "[Prontera Guide]"
					dialog "The Job Agency is"
					dialog "just southwest of the"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(15,133,183,1,"0xFF00FF00")
					else
						compass(15,133,183,0,"0xFF00FF00")
					end
				elseif mresultb == 11 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Castle is"
					dialog "located at the northern"
					dialog "sector of this city. You can"
					dialog "go to the fields that are north"
					dialog "of Prontera by going through"
					dialog "the castle's rear exit."
					if compass_check == 1 then
						compass(16,156,360,1,"0xFF00FF00")
					else
						compass(16,156,360,0,"0xFF00FF00")
					end
				elseif mresultb == 12 then
					dialog "[Prontera Guide]"
					dialog "The City Hall"
					dialog "is located in the"
					dialog "southwest corner"
					dialog "in our city of Prontera."
					if compass_check == 1 then
						compass(17,75,91,1,"0xFF01FF01")
					else
						compass(17,75,91,0,"0xFF00FF00")
					end
				elseif mresultb == 13 then
					--compass_check("=",1)
					dialog "[Prontera Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(4,237,41,2,"0xFF00FF00")
			compass(5,237,41,2,"0xFF0000FF")
			compass(6,46,345,2,"0xFF00FF00")
			compass(7,175,220,2,"0xFFFF0000")
			compass(8,134,221,2,"0xFFFF0000")
			compass(9,204,191,2,"0xFFFF0000")
			compass(10,107,192,2,"0xFFFF0000")
			compass(11,179,184,2,"0xFF00FF00")
			compass(12,208,154,2,"0xFF00FF00")
			compass(13,120,267,2,"0xFF00FF00")
			compass(14,192,267,2,"0xFF00FF00")
			compass(15,133,183,2,"0xFF00FF00")
			compass(16,156,360,2,"0xFF00FF00")
			compass(17,75,91,2,"0xFF00FF00")
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Prontera Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Prontera Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Prontera Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Prontera."
		elseif mresulta == 4 then
			dialog "[Prontera Guide]"
			dialog "Well, adventurer..."
			dialog "I hope your journeys"
			dialog "through Rune-Midgard"
			dialog "are both fun and safe."
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end

npc("prontera","West GateGuide",SPRITE_8W_SOLDIER,29,200,6,0,0,"prontera_West_GateGuide_29200")
function prontera_West_GateGuide_29200()
	showimage("prt_soldier.bmp",2)
	dialog "[Prontera Guide]"
	dialog "Welcome to Prontera,"
	dialog "the beautiful capital of the"
	dialog "Rune-Midgarts Kingdom. If"
	dialog "you have questions or need^FFFFFF33333^000000 help finding something in the^FFFFFFco^000000 city, don't hesitate to ask."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Prontera Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
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
				wait()
				local mresultb = menu("Swordman Association","^0000FFSanctuary^000000","Prontera Chivalry","Weapon Shop","Tool Shop","Inn","Trading Post","Pub","Library","Job Agency","Prontera Castle","City Hall","Cancel")
				if mresultb == 1 then
					dialog "[Prontera Guide]"
					dialog "The Swordman Association,"
					dialog "which handles Job Changes"
					dialog "to the Swordman class, has"
					dialog "moved to Izlude. This facility"
					dialog "is just an empty building now."
					if compass_check == 1 then
						compass(4,237,41,1,"0xFF00FF00")
					else
						compass(4,237,41,0,"0xFF00FF00")
					end
				elseif mresultb == 2 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Sanctuary"
					dialog "handles Job Changes to"
					dialog "the Acolyte class, and can"
					dialog "be found in the northeast"
					dialog "corner of Prontera."
					if compass_check == 1 then
						compass(5,236,316,1,"0xFFFF0000")
					else
						compass(5,236,316,0,"0xFFFF0000")
					end
				elseif mresultb == 3 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Chivralry,"
					dialog "which is responsible for"
					dialog "the safety of our capital, is"
					dialog "in Prontera's northwest corner."
					if compass_check == 1 then
						compass(6,46,345,1,"0xFF00FF00")
					else
						compass(6,46,345,0,"0xFF00FF00")
					end
				elseif mresultb == 4 then
					dialog "[Prontera Guide]"
					dialog "The Weapon Shop"
					dialog "is located northeast"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(7,175,220,1,"0xFFFF00FF")
					else
						compass(7,175,220,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Prontera Guide]"
					dialog "The Tool Shop"
					dialog "is located northwest"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(8,134,221,1,"0xFFFF00FF")
					else
						compass(8,134,221,0,"0xFFFF00FF")
					end
				elseif mresultb == 6 then
					dialog "[Prontera Guide]"
					dialog "The Inns in Prontera are"
					dialog "located both to the east"
					dialog "and west of Prontera's"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(9,204,191,1,"0xFFFF00FF")
						compass(10,107,192,1,"0xFFFF00FF")
					else
						compass(9,204,191,0,"0xFFFF00FF")
						compass(10,107,192,0,"0xFFFF00FF")
					end
				elseif mresultb == 7 then
					dialog "[Prontera Guide]"
					dialog "The Trading Post"
					dialog "can be found southeast"
					dialog "from the central fountain."
					if compass_check == 1 then
						compass(11,179,184,1,"0xFF00FF00")
					else
						compass(11,179,184,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Prontera Guide]"
					dialog "The Pub is located"
					dialog "southeast of the fountain,"
					dialog "behind the Trading Post."
					if compass_check == 1 then
						compass(12,208,154,1,"0xFF00FF00")
					else
						compass(12,208,154,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Prontera Guide]"
					dialog "If you head north from"
					dialog "the central fountain, you'll"
					dialog "find an empty area in which"
					dialog "both branches of the Prontera"
					dialog "Library can be accessed if you"
					dialog "head towards the east or west."
					if compass_check == 1 then
						compass(13,120,267,1,"0xFF00FF00")
						compass(14,192,267,1,"0xFF00FF00")
					else
						compass(13,120,267,0,"0xFF00FF00")
						compass(14,192,267,0,"0xFF00FF00")
					end
				elseif mresultb == 10 then
					dialog "[Prontera Guide]"
					dialog "The Job Agency is"
					dialog "just southwest of the"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(15,133,183,1,"0xFF00FF00")
					else
						compass(15,133,183,0,"0xFF00FF00")
					end
				elseif mresultb == 11 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Castle is"
					dialog "located at the northern"
					dialog "sector of this city. You can"
					dialog "go to the fields that are north"
					dialog "of Prontera by going through"
					dialog "the castle's rear exit."
					if compass_check == 1 then
						compass(16,156,360,1,"0xFF00FF00")
					else
						compass(16,156,360,0,"0xFF00FF00")
					end
				elseif mresultb == 12 then
					dialog "[Prontera Guide]"
					dialog "The City Hall"
					dialog "is located in the"
					dialog "southwest corner"
					dialog "in our city of Prontera."
					if compass_check == 1 then
						compass(17,75,91,1,"0xFF01FF01")
					else
						compass(17,75,91,0,"0xFF00FF00")
					end
				elseif mresultb == 13 then
					--compass_check("=",1)
					dialog "[Prontera Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(4,237,41,2,"0xFF00FF00")
			compass(5,237,41,2,"0xFF0000FF")
			compass(6,46,345,2,"0xFF00FF00")
			compass(7,175,220,2,"0xFFFF0000")
			compass(8,134,221,2,"0xFFFF0000")
			compass(9,204,191,2,"0xFFFF0000")
			compass(10,107,192,2,"0xFFFF0000")
			compass(11,179,184,2,"0xFF00FF00")
			compass(12,208,154,2,"0xFF00FF00")
			compass(13,120,267,2,"0xFF00FF00")
			compass(14,192,267,2,"0xFF00FF00")
			compass(15,133,183,2,"0xFF00FF00")
			compass(16,156,360,2,"0xFF00FF00")
			compass(17,75,91,2,"0xFF00FF00")
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Prontera Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Prontera Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Prontera Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Prontera."
		elseif mresulta == 4 then
			dialog "[Prontera Guide]"
			dialog "Well, adventurer..."
			dialog "I hope your journeys"
			dialog "through Rune-Midgard"
			dialog "are both fun and safe."
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end

npc("prontera","South GateGuide",SPRITE_8W_SOLDIER,160,29,0,0,0,"prontera_South_GateGuide_16029")
function prontera_South_GateGuide_16029()
	showimage("prt_soldier.bmp",2)
	dialog "[Prontera Guide]"
	dialog "Welcome to Prontera,"
	dialog "the beautiful capital of the"
	dialog "Rune-Midgarts Kingdom. If"
	dialog "you have questions or need^FFFFFF33333^000000 help finding something in the^FFFFFFco^000000 city, don't hesitate to ask."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Prontera Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
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
				wait()
				local mresultb = menu("Swordman Association","^0000FFSanctuary^000000","Prontera Chivalry","Weapon Shop","Tool Shop","Inn","Trading Post","Pub","Library","Job Agency","Prontera Castle","City Hall","Cancel")
				if mresultb == 1 then
					dialog "[Prontera Guide]"
					dialog "The Swordman Association,"
					dialog "which handles Job Changes"
					dialog "to the Swordman class, has"
					dialog "moved to Izlude. This facility"
					dialog "is just an empty building now."
					if compass_check == 1 then
						compass(4,237,41,1,"0xFF00FF00")
					else
						compass(4,237,41,0,"0xFF00FF00")
					end
				elseif mresultb == 2 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Sanctuary"
					dialog "handles Job Changes to"
					dialog "the Acolyte class, and can"
					dialog "be found in the northeast"
					dialog "corner of Prontera."
					if compass_check == 1 then
						compass(5,236,316,1,"0xFFFF0000")
					else
						compass(5,236,316,0,"0xFFFF0000")
					end
				elseif mresultb == 3 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Chivralry,"
					dialog "which is responsible for"
					dialog "the safety of our capital, is"
					dialog "in Prontera's northwest corner."
					if compass_check == 1 then
						compass(6,46,345,1,"0xFF00FF00")
					else
						compass(6,46,345,0,"0xFF00FF00")
					end
				elseif mresultb == 4 then
					dialog "[Prontera Guide]"
					dialog "The Weapon Shop"
					dialog "is located northeast"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(7,175,220,1,"0xFFFF00FF")
					else
						compass(7,175,220,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Prontera Guide]"
					dialog "The Tool Shop"
					dialog "is located northwest"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(8,134,221,1,"0xFFFF00FF")
					else
						compass(8,134,221,0,"0xFFFF00FF")
					end
				elseif mresultb == 6 then
					dialog "[Prontera Guide]"
					dialog "The Inns in Prontera are"
					dialog "located both to the east"
					dialog "and west of Prontera's"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(9,204,191,1,"0xFFFF00FF")
						compass(10,107,192,1,"0xFFFF00FF")
					else
						compass(9,204,191,0,"0xFFFF00FF")
						compass(10,107,192,0,"0xFFFF00FF")
					end
				elseif mresultb == 7 then
					dialog "[Prontera Guide]"
					dialog "The Trading Post"
					dialog "can be found southeast"
					dialog "from the central fountain."
					if compass_check == 1 then
						compass(11,179,184,1,"0xFF00FF00")
					else
						compass(11,179,184,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Prontera Guide]"
					dialog "The Pub is located"
					dialog "southeast of the fountain,"
					dialog "behind the Trading Post."
					if compass_check == 1 then
						compass(12,208,154,1,"0xFF00FF00")
					else
						compass(12,208,154,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Prontera Guide]"
					dialog "If you head north from"
					dialog "the central fountain, you'll"
					dialog "find an empty area in which"
					dialog "both branches of the Prontera"
					dialog "Library can be accessed if you"
					dialog "head towards the east or west."
					if compass_check == 1 then
						compass(13,120,267,1,"0xFF00FF00")
						compass(14,192,267,1,"0xFF00FF00")
					else
						compass(13,120,267,0,"0xFF00FF00")
						compass(14,192,267,0,"0xFF00FF00")
					end
				elseif mresultb == 10 then
					dialog "[Prontera Guide]"
					dialog "The Job Agency is"
					dialog "just southwest of the"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(15,133,183,1,"0xFF00FF00")
					else
						compass(15,133,183,0,"0xFF00FF00")
					end
				elseif mresultb == 11 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Castle is"
					dialog "located at the northern"
					dialog "sector of this city. You can"
					dialog "go to the fields that are north"
					dialog "of Prontera by going through"
					dialog "the castle's rear exit."
					if compass_check == 1 then
						compass(16,156,360,1,"0xFF00FF00")
					else
						compass(16,156,360,0,"0xFF00FF00")
					end
				elseif mresultb == 12 then
					dialog "[Prontera Guide]"
					dialog "The City Hall"
					dialog "is located in the"
					dialog "southwest corner"
					dialog "in our city of Prontera."
					if compass_check == 1 then
						compass(17,75,91,1,"0xFF01FF01")
					else
						compass(17,75,91,0,"0xFF00FF00")
					end
				elseif mresultb == 13 then
					--compass_check("=",1)
					dialog "[Prontera Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(4,237,41,2,"0xFF00FF00")
			compass(5,237,41,2,"0xFF0000FF")
			compass(6,46,345,2,"0xFF00FF00")
			compass(7,175,220,2,"0xFFFF0000")
			compass(8,134,221,2,"0xFFFF0000")
			compass(9,204,191,2,"0xFFFF0000")
			compass(10,107,192,2,"0xFFFF0000")
			compass(11,179,184,2,"0xFF00FF00")
			compass(12,208,154,2,"0xFF00FF00")
			compass(13,120,267,2,"0xFF00FF00")
			compass(14,192,267,2,"0xFF00FF00")
			compass(15,133,183,2,"0xFF00FF00")
			compass(16,156,360,2,"0xFF00FF00")
			compass(17,75,91,2,"0xFF00FF00")
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Prontera Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Prontera Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Prontera Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Prontera."
		elseif mresulta == 4 then
			dialog "[Prontera Guide]"
			dialog "Well, adventurer..."
			dialog "I hope your journeys"
			dialog "through Rune-Midgard"
			dialog "are both fun and safe."
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end

npc("prontera","North GateGuide",SPRITE_8W_SOLDIER,151,330,4,0,0,"prontera_North_GateGuide_151330")
function prontera_North_GateGuide_151330()
	showimage("prt_soldier.bmp",2)
	dialog "[Prontera Guide]"
	dialog "Welcome to Prontera,"
	dialog "the beautiful capital of the"
	dialog "Rune-Midgarts Kingdom. If"
	dialog "you have questions or need^FFFFFF33333^000000 help finding something in the^FFFFFFco^000000 city, don't hesitate to ask."
	while(1) do
		wait()
		local mresulta = menu("City Guide.","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Prontera Guide]"
			dialog "Please select"
			dialog "a location from"
			dialog "the following menu."
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
				wait()
				local mresultb = menu("Swordman Association","^0000FFSanctuary^000000","Prontera Chivalry","Weapon Shop","Tool Shop","Inn","Trading Post","Pub","Library","Job Agency","Prontera Castle","City Hall","Cancel")
				if mresultb == 1 then
					dialog "[Prontera Guide]"
					dialog "The Swordman Association,"
					dialog "which handles Job Changes"
					dialog "to the Swordman class, has"
					dialog "moved to Izlude. This facility"
					dialog "is just an empty building now."
					if compass_check == 1 then
						compass(4,237,41,1,"0xFF00FF00")
					else
						compass(4,237,41,0,"0xFF00FF00")
					end
				elseif mresultb == 2 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Sanctuary"
					dialog "handles Job Changes to"
					dialog "the Acolyte class, and can"
					dialog "be found in the northeast"
					dialog "corner of Prontera."
					if compass_check == 1 then
						compass(5,236,316,1,"0xFFFF0000")
					else
						compass(5,236,316,0,"0xFFFF0000")
					end
				elseif mresultb == 3 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Chivralry,"
					dialog "which is responsible for"
					dialog "the safety of our capital, is"
					dialog "in Prontera's northwest corner."
					if compass_check == 1 then
						compass(6,46,345,1,"0xFF00FF00")
					else
						compass(6,46,345,0,"0xFF00FF00")
					end
				elseif mresultb == 4 then
					dialog "[Prontera Guide]"
					dialog "The Weapon Shop"
					dialog "is located northeast"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(7,175,220,1,"0xFFFF00FF")
					else
						compass(7,175,220,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Prontera Guide]"
					dialog "The Tool Shop"
					dialog "is located northwest"
					dialog "of the central fountain."
					if compass_check == 1 then
						compass(8,134,221,1,"0xFFFF00FF")
					else
						compass(8,134,221,0,"0xFFFF00FF")
					end
				elseif mresultb == 6 then
					dialog "[Prontera Guide]"
					dialog "The Inns in Prontera are"
					dialog "located both to the east"
					dialog "and west of Prontera's"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(9,204,191,1,"0xFFFF00FF")
						compass(10,107,192,1,"0xFFFF00FF")
					else
						compass(9,204,191,0,"0xFFFF00FF")
						compass(10,107,192,0,"0xFFFF00FF")
					end
				elseif mresultb == 7 then
					dialog "[Prontera Guide]"
					dialog "The Trading Post"
					dialog "can be found southeast"
					dialog "from the central fountain."
					if compass_check == 1 then
						compass(11,179,184,1,"0xFF00FF00")
					else
						compass(11,179,184,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Prontera Guide]"
					dialog "The Pub is located"
					dialog "southeast of the fountain,"
					dialog "behind the Trading Post."
					if compass_check == 1 then
						compass(12,208,154,1,"0xFF00FF00")
					else
						compass(12,208,154,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Prontera Guide]"
					dialog "If you head north from"
					dialog "the central fountain, you'll"
					dialog "find an empty area in which"
					dialog "both branches of the Prontera"
					dialog "Library can be accessed if you"
					dialog "head towards the east or west."
					if compass_check == 1 then
						compass(13,120,267,1,"0xFF00FF00")
						compass(14,192,267,1,"0xFF00FF00")
					else
						compass(13,120,267,0,"0xFF00FF00")
						compass(14,192,267,0,"0xFF00FF00")
					end
				elseif mresultb == 10 then
					dialog "[Prontera Guide]"
					dialog "The Job Agency is"
					dialog "just southwest of the"
					dialog "central fountain area."
					if compass_check == 1 then
						compass(15,133,183,1,"0xFF00FF00")
					else
						compass(15,133,183,0,"0xFF00FF00")
					end
				elseif mresultb == 11 then
					dialog "[Prontera Guide]"
					dialog "The Prontera Castle is"
					dialog "located at the northern"
					dialog "sector of this city. You can"
					dialog "go to the fields that are north"
					dialog "of Prontera by going through"
					dialog "the castle's rear exit."
					if compass_check == 1 then
						compass(16,156,360,1,"0xFF00FF00")
					else
						compass(16,156,360,0,"0xFF00FF00")
					end
				elseif mresultb == 12 then
					dialog "[Prontera Guide]"
					dialog "The City Hall"
					dialog "is located in the"
					dialog "southwest corner"
					dialog "in our city of Prontera."
					if compass_check == 1 then
						compass(17,75,91,1,"0xFF01FF01")
					else
						compass(17,75,91,0,"0xFF00FF00")
					end
				elseif mresultb == 13 then
					--compass_check("=",1)
					dialog "[Prontera Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(4,237,41,2,"0xFF00FF00")
			compass(5,237,41,2,"0xFF0000FF")
			compass(6,46,345,2,"0xFF00FF00")
			compass(7,175,220,2,"0xFFFF0000")
			compass(8,134,221,2,"0xFFFF0000")
			compass(9,204,191,2,"0xFFFF0000")
			compass(10,107,192,2,"0xFFFF0000")
			compass(11,179,184,2,"0xFF00FF00")
			compass(12,208,154,2,"0xFF00FF00")
			compass(13,120,267,2,"0xFF00FF00")
			compass(14,192,267,2,"0xFF00FF00")
			compass(15,133,183,2,"0xFF00FF00")
			compass(16,156,360,2,"0xFF00FF00")
			compass(17,75,91,2,"0xFF00FF00")
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Prontera Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Prontera Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Prontera Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Prontera."
		elseif mresulta == 4 then
			dialog "[Prontera Guide]"
			dialog "Well, adventurer..."
			dialog "I hope your journeys"
			dialog "through Rune-Midgard"
			dialog "are both fun and safe."
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end
