--  ____________________________________________________________
-- /                                                            \
-- |  ##       ##  ########  #########     ##########   ######   |
-- |   ##     ##  ##    ##  ##     ##     ##      ##   ##    ##  |
-- |    ##   ##  ##    ##  ##     ##     ##      ##   ##         |
-- |     ## ##  ##    ##  ##     ##     ##      ##   ##          |
-- |      ###  ########  #########     ##      ##   #######      |
-- |      ##  ##    ##  ##    ##      ##      ##        ##       |
-- |     ##  ##    ##  ##      ##    ##      ##  ##    ##        |
-- |    ##  ##    ##  ##        ##  ##########    ######         |
-- |   Yaros Package                                             |
-- |-------------------------------------------------------------|
-- | Current Version: 1.1      | Episode 10.3 File.              |
-- |-------------------------------------------------------------|
-- | 01/05/2007 : Added 1st Version. [Muad_Dib]                  |
-- | 22/08/2007 : Corrected some typo's. [Muad_Dib]              |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |                                                             |
-- |                                                             |
-- \____________________________________________________________/

npc("morocc","Guide",spr_4_M_MOC_SOLDIER,153,286,6,0,0,"morocc_Guide_153286")
function morocc_Guide_153286()
	showimage("moc_soldier.bmp",2)
	dialog "[Morroc Guide]"
	dialog "Welcome to Morroc,"
	dialog "the frontier town of the"
	dialog "Rune-Midgarts Kingdom."
	dialog "Please ask me for help if"
	dialog "you're having any trouble"
	dialog "finding anything in town."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Morroc Guide]"
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
				local mresultb = menu("^FF0000Thief Guild^000000","Weapon Shop","Inn","Pub","Mercenary Guild","Forge","Cancel")
				if mresultb == 1 then
					dialog "[Morroc Guide]"
					dialog "The Thief Guild is"
					dialog "in charge of all Job"
					dialog "Changes to the Thief"
					dialog "Class. From what I hear,"
					dialog "you can find them inside"
					dialog "the Pyramids nearby..."
					if getvar(compass_check) == 1 then
						compass(2,24,297,1,0xFFFF0000)
					else
						compass(2,24,297,0,0xFFFF0000)
					end
				elseif mresultb == 2 then
					dialog "[Morroc Guide]"
					dialog "The Weapon Shop"
					dialog "is in the southeast"
					dialog "end of Morroc."
					if getvar(compass_check) == 1 then
						compass(3,253,56,1,0xFFFF00FF)
					else
						compass(3,253,56,0,0xFFFF00FF)
					end
				elseif mresultb == 3 then
					dialog "[Morroc Guide]"
					dialog "There are Inns"
					dialog "where you can rest"
					dialog "at the southeast and"
					dialog "northeast ends of Morroc."
					if getvar(compass_check) == 1 then
						compass(4,197,66,1,0xFFFF00FF)
						compass(5,273,269,1,0xFFFF00FF)
					else
						compass(4,197,66,0,0xFFFF00FF)
						compass(5,273,269,0,0xFFFF00FF)
					end
				elseif mresultb == 4 then
					dialog "[Morroc Guide]"
					dialog "You can find the"
					dialog "Pub in northeast Morroc."
					if getvar(compass_check) == 1 then
						compass(6,52,259,1,0xFFFF00FF)
					else
						compass(6,52,259,0,0xFFFF00FF)
					end
				elseif mresultb == 5 then
					dialog "[Morroc Guide]"
					dialog "The Mercenary"
					dialog "Guild is located"
					dialog "in East Morroc."
					if getvar(compass_check) == 1 then
						compass(7,284,171,1,0xFF00FF00)
					else
						compass(7,284,171,0,0xFF00FF00)
					end
				elseif mresultb == 6 then
					dialog "[Morroc Guide]"
					dialog "The Forge is"
					dialog "located just"
					dialog "southwest from"
					dialog "the center of Morroc."
					if getvar(compass_check) == 1 then
						compass(7,47,47,1,0xFFFF00FF)
					else
						compass(7,47,47,0,0xFFFF00FF)
					end
				elseif mresultb == 7 then
					compass_check("=",1)
					dialog "[Morroc Guide]"
					dialog("Please ask me to ","Remove"")
					dialog("Marks from Mini-Map","if","you"")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,237,41,2,0xFF00FF00)
			compass(3,237,41,2,0xFF0000FF)
			compass(4,46,345,2,0xFF00FF00)
			compass(5,175,220,2,0xFFFF0000)
			compass(6,175,220,2,0xFFFF0000)
			compass(7,175,220,2,0xFFFF0000)
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Morroc Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Morroc Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the ","Map"","button","in","your","Basic","Info","Window."")
			wait()
			dialog "[Morroc Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the ","+"","and","-")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Morroc."
		elseif mresulta == 4 then
			dialog "[Morroc Guide]"
			dialog "Alright then,"
			dialog "try to stay out of"
			dialog "too much trouble"
			dialog "out there, adventurer."
			close()
			break
		end
	end
	showimage("moc_soldier.bmp",255)
end

npc("morocc","Guide",spr_4_M_MOC_SOLDIER,54,97,0,0,0,"morocc_Guide_5497")
function morocc_Guide_5497()
	showimage("moc_soldier.bmp",2)
	dialog "[Morroc Guide]"
	dialog "Welcome to Morroc,"
	dialog "the frontier town of the"
	dialog "Rune-Midgarts Kingdom."
	dialog "Please ask me for help if"
	dialog "you're having any trouble"
	dialog "finding anything in town."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Morroc Guide]"
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
				local mresultb = menu("^FF0000Thief Guild^000000","Weapon Shop","Inn","Pub","Mercenary Guild","Forge","Cancel")
				if mresultb == 1 then
					dialog "[Morroc Guide]"
					dialog "The Thief Guild is"
					dialog "in charge of all Job"
					dialog "Changes to the Thief"
					dialog "Class. From what I hear,"
					dialog "you can find them inside"
					dialog "the Pyramids nearby..."
					if getvar(compass_check) == 1 then
						compass(2,24,297,1,0xFFFF0000)
					else
						compass(2,24,297,0,0xFFFF0000)
					end
				elseif mresultb == 2 then
					dialog "[Morroc Guide]"
					dialog "The Weapon Shop"
					dialog "is in the southeast"
					dialog "end of Morroc."
					if getvar(compass_check) == 1 then
						compass(3,253,56,1,0xFFFF00FF)
					else
						compass(3,253,56,0,0xFFFF00FF)
					end
				elseif mresultb == 3 then
					dialog "[Morroc Guide]"
					dialog "There are Inns"
					dialog "where you can rest"
					dialog "at the southeast and"
					dialog "northeast ends of Morroc."
					if getvar(compass_check) == 1 then
						compass(4,197,66,1,0xFFFF00FF)
						compass(5,273,269,1,0xFFFF00FF)
					else
						compass(4,197,66,0,0xFFFF00FF)
						compass(5,273,269,0,0xFFFF00FF)
					end
				elseif mresultb == 4 then
					dialog "[Morroc Guide]"
					dialog "You can find the"
					dialog "Pub in northeast Morroc."
					if getvar(compass_check) == 1 then
						compass(6,52,259,1,0xFFFF00FF)
					else
						compass(6,52,259,0,0xFFFF00FF)
					end
				elseif mresultb == 5 then
					dialog "[Morroc Guide]"
					dialog "The Mercenary"
					dialog "Guild is located"
					dialog "in East Morroc."
					if getvar(compass_check) == 1 then
						compass(7,284,171,1,0xFF00FF00)
					else
						compass(7,284,171,0,0xFF00FF00)
					end
				elseif mresultb == 6 then
					dialog "[Morroc Guide]"
					dialog "The Forge is"
					dialog "located just"
					dialog "southwest from"
					dialog "the center of Morroc."
					if getvar(compass_check) == 1 then
						compass(7,47,47,1,0xFFFF00FF)
					else
						compass(7,47,47,0,0xFFFF00FF)
					end
				elseif mresultb == 7 then
					compass_check("=",1)
					dialog "[Morroc Guide]"
					dialog("Please ask me to ","Remove"")
					dialog("Marks from Mini-Map","if","you"")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,237,41,2,0xFF00FF00)
			compass(3,237,41,2,0xFF0000FF)
			compass(4,46,345,2,0xFF00FF00)
			compass(5,175,220,2,0xFFFF0000)
			compass(6,175,220,2,0xFFFF0000)
			compass(7,175,220,2,0xFFFF0000)
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Morroc Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Morroc Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the ","Map"","button","in","your","Basic","Info","Window."")
			wait()
			dialog "[Morroc Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the ","+"","and","-")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Morroc."
		elseif mresulta == 4 then
			dialog "[Morroc Guide]"
			dialog "Alright then,"
			dialog "try to stay out of"
			dialog "too much trouble"
			dialog "out there, adventurer."
			close()
			break
		end
	end
	showimage("moc_soldier.bmp",255)
end
