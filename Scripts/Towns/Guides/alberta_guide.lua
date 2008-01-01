npc("alberta","Guide",spr_8W_SOLDIER,23,238,4,0,0,"alberta_Guide_23238")
function alberta_Guide_23238()
	showimage("prt_soldier.bmp",2)
	dialog "[Alberta Guide]"
	dialog "Welcome to Alberta,"
	dialog "the Port City. Feel free"
	dialog "to ask me if you're having"
	dialog "trouble finding anything in"
	dialog "town, or if you just need"
	dialog "guidance around the city."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Alberta Guide]"
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
				local mresultb = menu("^FF0000Merchant Guild^000000","Weapon Shop","Tool Shop","Inn","Forge","Cancel")
				if mresultb == 1 then
					dialog "[Alberta Guide]"
					dialog "The Merchant Guild"
					dialog "handles Job Changes"
					dialog "to the Merchant Class,"
					dialog "and is located in the"
					dialog "southwest corner"
					dialog "of Alberta."
					if getvar(compass_check) == 1 then
						compass(2,33,41,1,0xFFFF0000)
					else
						compass(2,33,41,0,0xFFFF0000)
					end
				elseif mresultb == 2 then
					dialog "[Alberta Guide]"
					dialog "The Weapon Shop"
					dialog "can be found in the"
					dialog "southern end of Alberta."
					if getvar(compass_check) == 1 then
						compass(3,117,37,1,0xFFFF00FF)
					else
						compass(3,117,37,0,0xFFFF00FF)
					end
				elseif mresultb == 3 then
					dialog "[Alberta Guide]"
					dialog "The Tool Shop"
					dialog "is kind of close"
					dialog "to the center of"
					dialog "Alberta. It shouldn't"
					dialog "be too hard to find."
					if getvar(compass_check) == 1 then
						compass(4,98,154,1,0xFFFF00FF)
					else
						compass(4,98,154,0,0xFFFF00FF)
					end
				elseif mresultb == 4 then
					dialog "[Alberta Guide]"
					dialog "There's an Inn"
					dialog "at the northern"
					dialog "end of Alberta"
					dialog "where you can rest."
					if getvar(compass_check) == 1 then
						compass(5,65,233,1,0xFFFF00FF)
					else
						compass(5,65,233,0,0xFFFF00FF)
					end
				elseif mresultb == 5 then
					dialog "[Alberta Guide]"
					dialog "The Forge in Alberta"
					dialog "is in the same building"
					dialog "as the Merchant Guild."
					dialog "It's to the southwest."
					if getvar(compass_check) == 1 then
						compass(6,35,41,1,0xFFFF00FF)
					else
						compass(6,35,41,0,0xFFFF00FF)
					end
				elseif mresultb == 6 then
					compass_check("=",1)
					dialog "[Alberta Guide]"
					--dialog("Please ask me to ","Remove"")
					--dialog("Marks from Mini-Map","if","you"")
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
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Alberta Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Alberta Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the Map  button in your Basic Info Window."
			wait()
			dialog "[Alberta Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Alberta."
		elseif mresulta == 4 then
			dialog "[Alberta Guide]"
			dialog "Be safe when you"
			dialog "travel and don't hesitate"
			dialog "to ask me if you have any"
			dialog "questions about Alberta."
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end

npc("alberta","Guide",spr_8W_SOLDIER,120,60,3,0,0,"alberta_Guide_12060")
function alberta_Guide_12060()
	showimage("prt_soldier.bmp",2)
	dialog "[Alberta Guide]"
	dialog "Welcome to Alberta,"
	dialog "the Port City. Feel free"
	dialog "to ask me if you're having"
	dialog "trouble finding anything in"
	dialog "town, or if you just need"
	dialog "guidance around the city."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Alberta Guide]"
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
				local mresultb = menu("^FF0000Merchant Guild^000000","Weapon Shop","Tool Shop","Inn","Forge","Cancel")
				if mresultb == 1 then
					dialog "[Alberta Guide]"
					dialog "The Merchant Guild"
					dialog "handles Job Changes"
					dialog "to the Merchant Class,"
					dialog "and is located in the"
					dialog "southwest corner"
					dialog "of Alberta."
					if getvar(compass_check) == 1 then
						compass(2,33,41,1,0xFFFF0000)
					else
						compass(2,33,41,0,0xFFFF0000)
					end
				elseif mresultb == 2 then
					dialog "[Alberta Guide]"
					dialog "The Weapon Shop"
					dialog "can be found in the"
					dialog "southern end of Alberta."
					if getvar(compass_check) == 1 then
						compass(3,117,37,1,0xFFFF00FF)
					else
						compass(3,117,37,0,0xFFFF00FF)
					end
				elseif mresultb == 3 then
					dialog "[Alberta Guide]"
					dialog "The Tool Shop"
					dialog "is kind of close"
					dialog "to the center of"
					dialog "Alberta. It shouldn't"
					dialog "be too hard to find."
					if getvar(compass_check) == 1 then
						compass(4,98,154,1,0xFFFF00FF)
					else
						compass(4,98,154,0,0xFFFF00FF)
					end
				elseif mresultb == 4 then
					dialog "[Alberta Guide]"
					dialog "There's an Inn"
					dialog "at the northern"
					dialog "end of Alberta"
					dialog "where you can rest."
					if getvar(compass_check) == 1 then
						compass(5,65,233,1,0xFFFF00FF)
					else
						compass(5,65,233,0,0xFFFF00FF)
					end
				elseif mresultb == 5 then
					dialog "[Alberta Guide]"
					dialog "The Forge in Alberta"
					dialog "is in the same building"
					dialog "as the Merchant Guild."
					dialog "It's to the southwest."
					if getvar(compass_check) == 1 then
						compass(6,35,41,1,0xFFFF00FF)
					else
						compass(6,35,41,0,0xFFFF00FF)
					end
				elseif mresultb == 6 then
					compass_check("=",1)
					dialog "[Alberta Guide]"
					--dialog("Please ask me to ","Remove"")
					--dialog("Marks from Mini-Map","if","you"")
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
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Alberta Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Alberta Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the Map button in your Basic Info Window."
			wait()
			dialog "[Alberta Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Alberta."
		elseif mresulta == 4 then
			dialog "[Alberta Guide]"
			dialog "Be safe when you"
			dialog "travel and don't hesitate"
			dialog "to ask me if you have any"
			dialog "questions about Alberta."
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end
