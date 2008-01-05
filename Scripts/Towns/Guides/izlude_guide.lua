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

npc("izlude","Guide",SPRITE_8W_SOLDIER,121,87,6,0,0,"izlude_Guide_12187")
function izlude_Guide_12187()
	showimage("prt_soldier.bmp",2)
	dialog "[Izlude Guide]"
	dialog "Welcome to Izlude,"
	dialog "Prontera's satellite city."
	dialog "If you need any guidance"
	dialog "around Izlude, feel free"
	dialog "to ask me at anytime."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			local compass_check
			dialog "[Izlude Guide]"
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
				local mresultb = menu("^FF0000Swordman Association^000000","Swordman Hall","Arena","Izlude Marina","Weapon Shop","Tool Shop","Cancel")
				if mresultb == 1 then
					dialog "[Izlude Guide]"
					dialog "The Swordman Association"
					dialog "is located on an island that is"
					dialog "in west Izlude. If you're thinking of changing jobs to Swordman,"
					dialog "you should check it out."
					if getvar(compass_check) == 1 then
						compass(0,52,140,1,0xFFFF0000)
					else
						compass(0,52,140,0,0xFFFF0000)
					end
				elseif mresultb == 2 then
					dialog "[Izlude Guide]"
					dialog "The Swordman Hall"
					dialog "is located in the eastern"
					dialog "island connected to Izlude."
					if getvar(compass_check) == 1 then
						compass(1,214,130,1,0xFF00FF00)
					else
						compass(1,214,130,0,0xFF00FF00)
					end
				elseif mresultb == 3 then
					dialog "[Izlude Guide]"
					dialog "Izlude's famous"
					dialog "Arena is located at the"
					dialog "northern end of Izlude."
					if getvar(compass_check) == 1 then
						compass(2,128,225,1,0xFF00FF00)
					else
						compass(2,128,225,0,0xFF00FF00)
					end
				elseif mresultb == 4 then
					dialog "[Izlude Guide]"
					dialog "You can find the"
					dialog "Marina in the northeast"
					dialog "part of Izlude. There, you can"
					dialog "ride a ship which will take you"
					dialog "to Alberta or Byalan Island."
					if getvar(compass_check) == 1 then
						compass(3,200,180,1,0xFFFF0000)
					else
						compass(3,200,180,0,0xFFFF0000)
					end
				elseif mresultb == 5 then
					dialog "[Izlude Guide]"
					dialog "You can easily"
					dialog "find the Weapon Shop"
					dialog "in northwest Izlude."
					if getvar(compass_check) == 1 then
						compass(4,111,149,1,0xFFFF00FF)
					else
						compass(4,111,149,0,0xFFFF00FF)
					end
				elseif mresultb == 6 then
					dialog "[Izlude Guide]"
					dialog "The Tool Shop shouldn't"
					dialog "be too hard to find in the"
					dialog "northeast part of Izlude."
					if getvar(compass_check) == 1 then
						compass(5,148,148,1,0xFFFF00FF)
					else
						compass(5,148,148,0,0xFFFF00FF)
					end
				elseif mresultb == 7 then
					compass_check("=",1)
					dialog "[Izlude Guide]"
					dialog("Please ask me to ","Remove"")
					dialog("Marks from Mini-Map","if","you"")
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(0,237,41,2,0xFF00FF00)
			compass(1,237,41,2,0xFF0000FF)
			compass(2,46,345,2,0xFF00FF00)
			compass(3,175,220,2,0xFFFF0000)
			compass(4,134,221,2,0xFFFF0000)
			compass(5,204,214,2,0xFFFF0000)
			compass_check("=",0)
		elseif mresulta == 3 then
			dialog "[Izlude Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Izlude Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog("keys or click the ","Map"","button","in","your","Basic","Info","Window."")
			wait()
			dialog "[Izlude Guide]"
			dialog "On your Mini-Map,"
			dialog("click on the ","+"","and","-")
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Izlude."
		elseif mresulta == 4 then
			dialog "[Izlude Guide]"
			dialog "Okay then, feel"
			dialog "free to come to me"
			dialog "if you ever feel lost"
			dialog "around Izlude, alright?"
			close()
			break
		end
	end
	showimage("prt_soldier.bmp",255)
end
