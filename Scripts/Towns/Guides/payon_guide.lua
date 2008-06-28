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

npc("payon","Guide",SPRITE_4_M_PAY_SOLDIER,162,67,4,0,0,"payon_Guide_16267")
function payon_Guide_16267()
	local compass_check = 0
	local wait_button_chk = 0
	showimage("pay_soldier.bmp",2)
	dialog "[Payon Guide]"
	dialog "Welcome to the"
	dialog "mountain city of Payon."
	dialog "If you're unfamiliar with this"
	dialog "area, I can help you find what"
	dialog "you're looking for around here."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Payon Guide]"
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
					compass_check = 1
				elseif mresultb == 2 then
					local compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk = 1
				else
					wait()
				end
				local mresultb = menu("^FF0000Archer Guild^000000","Weapon Shop","Tool Shop","Pub","Central Palace","The Empress","Palace Annex","Royal Kitchen","Forge","Cancel")
				if mresultb == 1 then
					dialog "[Payon Guide]"
					dialog "The Archer Guild handles"
					dialog "Job Changes to the Archer"
					dialog "Class. You'll need to enter"
					dialog "the Archer Village which is"
					dialog "to the northeast of Payon."
					if compass_check == 1 then
						compass(2,227,328,1,"0xFFFF0000")
					else
						compass(2,227,328,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Payon Guide]"
					dialog "The Weapon Shop"
					dialog "can be found in the"
					dialog "northwest corner of"
					dialog "the city of Payon."
					if compass_check == 1 then
						compass(3,139,159,1,"0xFFFF00FF")
					else
						compass(3,139,159,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Payon Guide]"
					dialog "The Tool Shop"
					dialog "is located near"
					dialog "the northwest"
					dialog "corner of Payon."
					if compass_check == 1 then
						compass(4,144,85,1,"0xFFFF00FF")
					else
						compass(4,144,85,0,"0xFFFF00FF")
					end
				elseif mresultb == 4 then
					dialog "[Payon Guide]"
					dialog "The Pub can be"
					dialog "found in the northeast"
					dialog "part of Payon. It's the"
					dialog "best place to relax after"
					dialog "a long day of hunting."
					if compass_check == 1 then
						compass(5,220,117,1,"0xFFFF00FF")
					else
						compass(5,220,117,0,"0xFFFF00FF")
					end
				elseif mresultb == 5 then
					dialog "[Payon Guide]"
					dialog "The Central Palace"
					dialog "is located to the north"
					dialog "within the city of Payon."
					if compass_check == 1 then
						compass(6,155,245,1,"0xFF00FF00")
					else
						compass(6,155,245,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Payon Guide]"
					dialog "The Empress"
					dialog "can be found to the"
					dialog "northwest in Payon."
					if compass_check == 1 then
						compass(7,107,324,1,"0xFF00FF00")
					else
						compass(7,107,324,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Payon Guide]"
					dialog "The Palace Annex"
					dialog "can be found in the"
					dialog "western part of Payon."
					if compass_check == 1 then
						compass(8,130,204,1,"0xFF00FF00")
					else
						compass(8,130,204,0,"0xFF00FF00")
					end
				elseif mresultb == 8 then
					dialog "[Payon Guide]"
					dialog "The Royal Kitchen"
					dialog "is located near the"
					dialog "northern end of Payon."
					if compass_check == 1 then
						compass(9,154,325,1,"0xFF00FF00")
					else
						compass(9,154,325,0,"0xFF00FF00")
					end
				elseif mresultb == 9 then
					dialog "[Payon Guide]"
					dialog "The Forge is"
					dialog "situated near"
					dialog "the center of Payon."
					if compass_check == 1 then
						compass(10,126,169,1,"0xFFFFFF00")
					else
						compass(10,126,169,0,"0xFFFFFF00")
					end
				elseif mresultb == 10 then
					--compass_check("=",1)
					dialog "[Payon Guide]"
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
			compass(6,175,220,2,"0xFFFF0000")
			compass(7,175,220,2,"0xFFFF0000")
			compass(8,237,41,2,"0xFF0000FF")
			compass(9,46,345,2,"0xFF00FF00")
			compass(10,175,220,2,"0xFFFF0000")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Payon Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Payon Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Payon Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Payon."
		elseif mresulta == 4 then
			dialog "[Payon Guide]"
			dialog "Be safe in"
			dialog "your travels,"
			dialog "brave adventurer."
			close()
			break
		end
	end
	showimage("pay_soldier.bmp",255)
end

npc("pay_arche","Guide",SPRITE_4_M_PAY_SOLDIER,85,30,2,0,0,"pay_arche_Guide_8530")
function pay_arche_Guide_8530()
	showimage("pay_soldier.bmp",2)
	dialog "[Payon Guide]"
	dialog "Welcome to the"
	dialog "mountain city of Payon."
	dialog "If you're unfamiliar with this"
	dialog "area, I can help you find what"
	dialog "you're looking for around here."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice","Cancel")
		if mresulta == 1 then
			local compass_check
			local wait_button_chk
			dialog "[Payon Guide]"
			dialog "Please, select a menu."
			if compass_check == 0 then
				dialog "Would you like to leave indicators on the mini-map?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					local compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk = 1
				else
					wait()
				end
				local mresultb = menu("^FF0000Archer Guild^000000","Tool Shop","Payon Dungeon","Cancel")
				if mresultb == 1 then
					dialog "[Payon Guide]"
					dialog "The Archer Guild,"
					dialog "found northeast in"
					dialog "the Archer Village,"
					dialog "handles Job Changes"
					dialog "to the Archer Class."
					if compass_check == 1 then
						compass(0,144,164,1,"0xFFFF0000")
					else
						compass(0,144,164,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Payon Guide]"
					dialog "You can find"
					dialog "a Tool Shop in"
					dialog "the northeast corner"
					dialog "of the Archer Village."
					if compass_check == 1 then
						compass(1,71,156,1,"0xFFFF00FF")
					else
						compass(1,71,156,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Payon Guide]"
					dialog "The entrance to"
					dialog "the Payon Dungeon"
					dialog "is located at the west"
					dialog "end of the village."
					if compass_check == 1 then
						compass(2,34,132,1,"0xFFFFFFFF")
					else
						compass(2,34,132,0,"0xFFFFFFFF")
					end
				elseif mresultb == 4 then
					--compass_check("=",1)
					dialog "[Payon Guide]"
					dialog "If you'd like to erase the marks on the mini-map, select menu, 'Wipe all indicators on the mini-map'."
					break
				end
			end
		elseif mresulta == 2 then
			compass(0,237,41,2,"0xFF00FF00")
			compass(1,237,41,2,"0xFF0000FF")
			compass(2,46,345,2,"0xFF00FF00")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Payon Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Payon Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Payon Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in the city of Payon."
		elseif mresulta == 4 then
			dialog "[Payon Guide]"
			dialog "Be safe in"
			dialog "your travels,"
			dialog "brave adventurer."
			close()
			break
		end
	end
	showimage("pay_soldier.bmp",255)
end
