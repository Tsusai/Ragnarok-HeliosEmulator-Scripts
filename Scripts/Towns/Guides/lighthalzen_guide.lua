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

npc("lighthalzen","Guide",SPRITE_4_M_EIN_SOLDIER,207,310,5,0,0,"lighthalzen_Guide_207310")
function lighthalzen_Guide_207310()
	local compass_check = 0
	local wait_button_chk = 0
	showimage("ein_soldier.bmp",2)
	dialog "[Lighthalzen Guide]"
	dialog "Welcome to Lighthalzen,"
	dialog "the Corporation City-State."
	dialog "If you need any guidance"
	dialog "around the city, feel free"
	dialog "to ask me and I'll do my"
	dialog "very best to help you."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			dialog "[Lighthalzen Guide]"
			dialog "Please be aware that I'm"
			dialog "in charge of providing info"
			dialog "regarding the West District"
			dialog "of Lighthalzen. Now, please"
			dialog "select the location that you'd"
			dialog "like to learn more about."
			if compass_check == 0 then
				wait()
				dialog "[Lighthalzen Guide]"
				dialog "But before that,"
				dialog "would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk = 1
				else
					wait()
				end
				local mresultb = menu("^FF0000Rekenber Corporation^000000","Train Staition","Police Station","Bank","Hotel","Airport","Merchant Guild","Jewelry Shop","Weapon Shop","Departement Store","Cancel")
				if mresultb == 1 then
					dialog "[Lighthalzen Guide]"
					dialog "Rekenber Corporation,"
					dialog "the largest company in"
					dialog "the Schwaltzvalt Republic,"
					dialog "in located in northwestern"
					dialog "Lighthalzen. You can't miss"
					dialog "the headquarters building."
					if compass_check == 1 then
						compass(2,102,247,1,"0xFFFF0000")
					else
						compass(2,102,247,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Lighthalzen Guide]"
					dialog "The Train Station is"
					dialog "located in the center of"
					dialog "the city, where we have"
					dialog "a direct railroad to Einbroch."
					if compass_check == 1 then
						compass(3,233,164,1,"0xFFFF00FF")
					else
						compass(3,233,164,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Lighthalzen Guide]"
					dialog "Our Police Station is just"
					dialog "north of the city's center."
					dialog "Please don't hesitate to report"
					dialog "any suspicious persons and"
					dialog "activity, or if you have any"
					dialog "problems whatsoever."
					if compass_check == 1 then
						compass(4,236,276,1,"0xFF99FFFF")
					else
						compass(4,236,276,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					dialog "[Lighthalzen Guide]"
					dialog "The Bank is located"
					dialog "just opposite to the"
					dialog "Lighthalzen Police Station,"
					dialog "which is a pretty good idea"
					dialog "when I think about it, actually. ^FFFFFFspacer^000000"
					if compass_check == 1 then
						compass(5,198,257,1,"0xFF0000FF")
					else
						compass(5,198,257,0,"0xFF0000FF")
					end
				elseif mresultb == 5 then
					dialog "[Lighthalzen Guide]"
					dialog "Our Hotel is located in"
					dialog "the middle of the South Plaza."
					dialog "Due to its quality services and"
					dialog "luxurious accomodations, this"
					dialog "hotel is extremely popular."
					if compass_check == 1 then
						compass(6,159,133,1,"0xFF00FF00")
					else
						compass(6,159,133,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Lighthalzen Guide]"
					dialog "The Airport is to the far"
					dialog "west of the Central Promenade."
					dialog "You can travel anywhere within"
					dialog "the Schwaltzvalt Republic by"
					dialog "riding on one of the Airships."
					if compass_check == 1 then
						compass(7,267,75,1,"0xFF00FF00")
					else
						compass(7,267,75,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Lighthalzen Guide]"
					dialog "The Merchant Guild can be"
					dialog "found in the southwestern"
					dialog "part of Lighthalzen."
					if compass_check == 1 then
						compass(8,74,53,1,"0xFFFF99FF")
					else
						compass(8,74,53,0,"0xFFFF99FF")
					end
				elseif mresultb == 8 then
					dialog "[Lighthalzen Guide]"
					dialog "The Jewelry Shop is"
					dialog "located just west of"
					dialog "the South Plaza."
					if compass_check == 1 then
						compass(9,93,110,1,"0xFFFF9900")
					else
						compass(9,93,110,0,"0xFFFF9900")
					end
				elseif mresultb == 9 then
					dialog "[Lighthalzen Guide]"
					dialog "The Weapon Shop is"
					dialog "located at the end of"
					dialog "the Central Promenade."
					dialog "It's at least worth a look"
					dialog "if you're serious about"
					dialog "adventuring around here."
					if compass_check == 1 then
						compass(10,196,46,1,"0xFF330033")
					else
						compass(10,196,46,0,"0xFF330033")
					end
				elseif mresultb == 10 then
					dialog "[Lighthalzen Guide]"
					dialog "The Department Store is"
					dialog "located in the middle of"
					dialog "Lighthalzen and is the biggest"
					dialog "and most convenient place for"
					dialog "shopping for almost everything."
					if compass_check == 1 then
						compass(11,199,163,1,"0xFFFFFF00")
					else
						compass(11,199,163,0,"0xFFFFFF00")
					end
				elseif mresultb == 11 then
					--compass_check("=",1)
					dialog "[Lighthalzen Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,102,247,2,"0xFF00FF00")
			compass(3,233,164,2,"0xFF00FF00")
			compass(4,236,276,2,"0xFF00FF00")
			compass(5,198,257,2,"0xFF00FF00")
			compass(6,159,133,2,"0xFF00FF00")
			compass(7,267,75,2,"0xFF00FF00")
			compass(8,74,53,2,"0xFF00FF00")
			compass(9,93,110,2,"0xFF00FF00")
			compass(10,196,46,2,"0xFF00FF00")
			compass(11,199,163,2,"0xFF00FF00")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Lighthalzen Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Lighthalzen."
		elseif mresulta == 4 then
			dialog "[Lighthalzen Guide]"
			dialog "Lighthalzen is divided"
			dialog "into the East and West"
			dialog "districts by a railroad that"
			dialog "runs right through the middle."
			dialog "There are always guards on"
			dialog "watch to protect the peace."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Please don't hesitate"
			dialog "to report any suspicious"
			dialog "activity or persons to us."
			dialog "We hope that you enjoy"
			dialog "our fair city, adventurer."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end

npc("lighthalzen","Guide",SPRITE_4_M_EIN_SOLDIER,220,311,3,0,0,"lighthalzen_Guide_220311")
function lighthalzen_Guide_220311()
	local compass_check = 0
	local wait_button_chk = 0
	showimage("ein_soldier.bmp",2)
	dialog "[Lighthalzen Guide]"
	dialog "Welcome to Lighthalzen,"
	dialog "the Corporation City-State."
	dialog "If you need any guidance"
	dialog "around the city, feel free"
	dialog "to ask me and I'll do my"
	dialog "very best to help you."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			dialog "[Lighthalzen Guide]"
			dialog "Please be aware that I'm"
			dialog "in charge of providing info"
			dialog "regarding the East District,"
			dialog "more commonly known as the"
			dialog "Slums. Select the location that"
			dialog "you'd like to know more about."
			if compass_check == 0 then
				wait()
				dialog "[Lighthalzen Guide]"
				dialog "But before that,"
				dialog "would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk = 1
				else
					wait()
				end
				local mresultb = menu("Tool Shop","Mill","Pub","Cancel")
				if mresultb == 1 then
					dialog "[Lighthalzen Guide]"
					dialog "The Tool Shop is"
					dialog "located in the 11 o'clock"
					dialog "direction from the center"
					dialog "of the East District."
					if compass_check == 1 then
						compass(2,324,301,1,"0xFFFF0000")
					else
						compass(2,324,301,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Lighthalzen Guide]"
					dialog "On your Mini-Map,"
					dialog "the Mill can be found in"
					dialog "the 1 o'clock direction"
					dialog "in the East District."
					if compass_check == 1 then
						compass(3,365,300,1,"0xFFFF00FF")
					else
						compass(3,365,300,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Lighthalzen Guide]"
					dialog "The Pub is located"
					dialog "in the southern part"
					dialog "of the East District."
					if compass_check == 1 then
						compass(4,340,240,1,"0xFF99FFFF")
					else
						compass(4,340,240,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					--compass_check("=",1)
					dialog "[Lighthalzen Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,324,301,2,"0xFF00FF00")
			compass(3,365,300,2,"0xFF00FF00")
			compass(4,340,240,2,"0xFF00FF00")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Lighthalzen Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Lighthalzen."
		elseif mresulta == 4 then
			dialog "[Lighthalzen Guide]"
			dialog "Lighthalzen is divided"
			dialog "into the East and West"
			dialog "districts by a railroad that"
			dialog "runs right through the middle."
			dialog "There are always guards on"
			dialog "watch to protect the peace."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Please don't hesitate"
			dialog "to report any suspicious"
			dialog "activity or persons to us."
			dialog "We hope that you enjoy"
			dialog "our fair city, adventurer."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end

npc("lighthalzen","Guide",SPRITE_4_M_EIN_SOLDIER,154,100,5,0,0,"lighthalzen_Guide_154100")
function lighthalzen_Guide_154100()
	local compass_check = 0
	local wait_button_chk = 0
	showimage("ein_soldier.bmp",2)
	dialog "[Lighthalzen Guide]"
	dialog "Welcome to Lighthalzen,"
	dialog "the Corporation City-State."
	dialog "If you need any guidance"
	dialog "around the city, feel free"
	dialog "to ask me and I'll do my"
	dialog "very best to help you."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			dialog "[Lighthalzen Guide]"
			dialog "Please be aware that I'm"
			dialog "in charge of providing info"
			dialog "regarding the West District"
			dialog "of Lighthalzen. Now, please"
			dialog "select the location that you'd"
			dialog "like to learn more about."
			if compass_check == 0 then
				wait()
				dialog "[Lighthalzen Guide]"
				dialog "But before that,"
				dialog "would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk = 1
				else
					wait()
				end
				local mresultb = menu("^FF0000Rekenber Corporation^000000","Train Staition","Police Station","Bank","Hotel","Airport","Merchant Guild","Jewelry Shop","Weapon Shop","Departement Store","Cancel")
				if mresultb == 1 then
					dialog "[Lighthalzen Guide]"
					dialog "Rekenber Corporation,"
					dialog "the largest company in"
					dialog "the Schwaltzvalt Republic,"
					dialog "in located in northwestern"
					dialog "Lighthalzen. You can't miss"
					dialog "the headquarters building."
					if compass_check == 1 then
						compass(2,102,247,1,"0xFFFF0000")
					else
						compass(2,102,247,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Lighthalzen Guide]"
					dialog "The Train Station is"
					dialog "located in the center of"
					dialog "the city, where we have"
					dialog "a direct railroad to Einbroch."
					if compass_check == 1 then
						compass(3,233,164,1,"0xFFFF00FF")
					else
						compass(3,233,164,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Lighthalzen Guide]"
					dialog "Our Police Station is just"
					dialog "north of the city's center."
					dialog "Please don't hesitate to report"
					dialog "any suspicious persons and"
					dialog "activity, or if you have any"
					dialog "problems whatsoever."
					if compass_check == 1 then
						compass(4,236,276,1,"0xFF99FFFF")
					else
						compass(4,236,276,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					dialog "[Lighthalzen Guide]"
					dialog "The Bank is located"
					dialog "just opposite to the"
					dialog "Lighthalzen Police Station,"
					dialog "which is a pretty good idea"
					dialog "when I think about it, actually. ^FFFFFFspacer^000000"
					if compass_check == 1 then
						compass(5,198,257,1,"0xFF0000FF")
					else
						compass(5,198,257,0,"0xFF0000FF")
					end
				elseif mresultb == 5 then
					dialog "[Lighthalzen Guide]"
					dialog "Our Hotel is located in"
					dialog "the middle of the South Plaza."
					dialog "Due to its quality services and"
					dialog "luxurious accomodations, this"
					dialog "hotel is extremely popular."
					if compass_check == 1 then
						compass(6,159,133,1,"0xFF00FF00")
					else
						compass(6,159,133,0,"0xFF00FF00")
					end
				elseif mresultb == 6 then
					dialog "[Lighthalzen Guide]"
					dialog "The Airport is to the far"
					dialog "west of the Central Promenade."
					dialog "You can travel anywhere within"
					dialog "the Schwaltzvalt Republic by"
					dialog "riding on one of the Airships."
					if compass_check == 1 then
						compass(7,267,75,1,"0xFF00FF00")
					else
						compass(7,267,75,0,"0xFF00FF00")
					end
				elseif mresultb == 7 then
					dialog "[Lighthalzen Guide]"
					dialog "The Merchant Guild can be"
					dialog "found in the southwestern"
					dialog "part of Lighthalzen."
					if compass_check == 1 then
						compass(8,74,53,1,"0xFFFF99FF")
					else
						compass(8,74,53,0,"0xFFFF99FF")
					end
				elseif mresultb == 8 then
					dialog "[Lighthalzen Guide]"
					dialog "The Jewelry Shop is"
					dialog "located just west of"
					dialog "the South Plaza."
					if compass_check == 1 then
						compass(9,93,110,1,"0xFFFF9900")
					else
						compass(9,93,110,0,"0xFFFF9900")
					end
				elseif mresultb == 9 then
					dialog "[Lighthalzen Guide]"
					dialog "The Weapon Shop is"
					dialog "located at the end of"
					dialog "the Central Promenade."
					dialog "It's at least worth a look"
					dialog "if you're serious about"
					dialog "adventuring around here."
					if compass_check == 1 then
						compass(10,196,46,1,"0xFF330033")
					else
						compass(10,196,46,0,"0xFF330033")
					end
				elseif mresultb == 10 then
					dialog "[Lighthalzen Guide]"
					dialog "The Department Store is"
					dialog "located in the middle of"
					dialog "Lighthalzen and is the biggest"
					dialog "and most convenient place for"
					dialog "shopping for almost everything."
					if compass_check == 1 then
						compass(11,199,163,1,"0xFFFFFF00")
					else
						compass(11,199,163,0,"0xFFFFFF00")
					end
				elseif mresultb == 11 then
					--compass_check("=",1)
					dialog "[Lighthalzen Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,102,247,2,"0xFF00FF00")
			compass(3,233,164,2,"0xFF00FF00")
			compass(4,236,276,2,"0xFF00FF00")
			compass(5,198,257,2,"0xFF00FF00")
			compass(6,159,133,2,"0xFF00FF00")
			compass(7,267,75,2,"0xFF00FF00")
			compass(8,74,53,2,"0xFF00FF00")
			compass(9,93,110,2,"0xFF00FF00")
			compass(10,196,46,2,"0xFF00FF00")
			compass(11,199,163,2,"0xFF00FF00")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Lighthalzen Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Lighthalzen."
		elseif mresulta == 4 then
			dialog "[Lighthalzen Guide]"
			dialog "Lighthalzen is divided"
			dialog "into the East and West"
			dialog "districts by a railroad that"
			dialog "runs right through the middle."
			dialog "There are always guards on"
			dialog "watch to protect the peace."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Please don't hesitate"
			dialog "to report any suspicious"
			dialog "activity or persons to us."
			dialog "We hope that you enjoy"
			dialog "our fair city, adventurer."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end

npc("lighthalzen","Guide",SPRITE_4_M_EIN_SOLDIER,307,224,3,0,0,"lighthalzen_Guide_307224")
function lighthalzen_Guide_307224()
	local compass_check = 0
	local wait_button_chk = 0
	showimage("ein_soldier.bmp",2)
	dialog "[Lighthalzen Guide]"
	dialog "Welcome to Lighthalzen,"
	dialog "the Corporation City-State."
	dialog "If you need any guidance"
	dialog "around the city, feel free"
	dialog "to ask me and I'll do my"
	dialog "very best to help you."
	while(1) do
		wait()
		local mresulta = menu("City Guide","Remove Marks from Mini-Map","Notice.","Cancel")
		if mresulta == 1 then
			dialog "[Lighthalzen Guide]"
			dialog "Please be aware that I'm"
			dialog "in charge of providing info"
			dialog "regarding the East District,"
			dialog "more commonly known as the"
			dialog "Slums. Select the location that"
			dialog "you'd like to know more about."
			if compass_check == 0 then
				wait()
				dialog "[Lighthalzen Guide]"
				dialog "But before that,"
				dialog "would you like me"
				dialog "to mark locations"
				dialog "on your Mini-Map?"
				wait()
				local mresultb = menu("Yes","No")
				if mresultb == 1 then
					compass_check = 1
				elseif mresultb == 2 then
					compass_check = 2
				end
			end
			while(1) do
				if wait_button_chk == 0 then
					wait_button_chk = 1
				else
					wait()
				end
				local mresultb = menu("Tool Shop","Mill","Pub","Cancel")
				if mresultb == 1 then
					dialog "[Lighthalzen Guide]"
					dialog "The Tool Shop is"
					dialog "located in the 11 o'clock"
					dialog "direction from the center"
					dialog "of the East District."
					if compass_check == 1 then
						compass(2,324,301,1,"0xFFFF0000")
					else
						compass(2,324,301,0,"0xFFFF0000")
					end
				elseif mresultb == 2 then
					dialog "[Lighthalzen Guide]"
					dialog "On your Mini-Map,"
					dialog "the Mill can be found in"
					dialog "the 1 o'clock direction"
					dialog "in the East District."
					if compass_check == 1 then
						compass(3,365,300,1,"0xFFFF00FF")
					else
						compass(3,365,300,0,"0xFFFF00FF")
					end
				elseif mresultb == 3 then
					dialog "[Lighthalzen Guide]"
					dialog "The Pub is located"
					dialog "in the southern part"
					dialog "of the East District."
					if compass_check == 1 then
						compass(4,340,240,1,"0xFF99FFFF")
					else
						compass(4,340,240,0,"0xFF99FFFF")
					end
				elseif mresultb == 4 then
					--compass_check("=",1)
					dialog "[Lighthalzen Guide]"
					dialog "Please ask me to Remove"
					dialog "Marks from Mini-Map if you"
					dialog "no longer wish to have the"
					dialog "location marks displayed"
					dialog "on your Mini-Map."
					break
				end
			end
		elseif mresulta == 2 then
			compass(2,324,301,2,"0xFF00FF00")
			compass(3,365,300,2,"0xFF00FF00")
			compass(4,340,240,2,"0xFF00FF00")
			compass_check = 0
		elseif mresulta == 3 then
			dialog "[Lighthalzen Guide]"
			dialog "Advances in sorcery and"
			dialog "technology have allowed"
			dialog "us to update our information"
			dialog "system, enabling up to mark"
			dialog "locations on your Mini-Map"
			dialog "for easier navigation."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Your Mini-Map is located"
			dialog "in the upper right corner"
			dialog "of the screen. If you can't"
			dialog "see it, press the Ctrl + Tab"
			dialog "keys or click the  Map button in your Basic Info Window."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "On your Mini-Map,"
			dialog "click on the  + and -"
			dialog "symbols to zoom in and"
			dialog "our of your Mini-Map. We"
			dialog "hope you enjoy your travels"
			dialog "here in Lighthalzen."
		elseif mresulta == 4 then
			dialog "[Lighthalzen Guide]"
			dialog "Lighthalzen is divided"
			dialog "into the East and West"
			dialog "districts by a railroad that"
			dialog "runs right through the middle."
			dialog "There are always guards on"
			dialog "watch to protect the peace."
			wait()
			dialog "[Lighthalzen Guide]"
			dialog "Please don't hesitate"
			dialog "to report any suspicious"
			dialog "activity or persons to us."
			dialog "We hope that you enjoy"
			dialog "our fair city, adventurer."
			close()
			break
		end
	end
	showimage("ein_soldier.bmp",255)
end
