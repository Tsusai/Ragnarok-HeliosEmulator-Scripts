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

npc("amatsu","Amatsu Guide",SPRITE_4_F_JPN,207,89,3,0,0,"amatsu_Amatsu_Guide_20789")
function amatsu_Amatsu_Guide_20789()
	local compass_check = 0
	local wait_button_chk = 0
	dialog "[Amachang]"
	dialog "Welcome to Amatsu,"
	dialog "the town of kind towners"
	dialog "and beautiful cherry blossoms."
	wait()
	dialog "[Amachang]"
	dialog "I'm Amachang,"
	dialog "the 13th Miss Amatsu."
	dialog "I will guide you about town"
	dialog "as Miss Amatsu."
	dialog "Please tell me"
	dialog "if you want to know something."
	wait()
	local mresulta = menu("Palace","Tool Shop","Weapon Shop","Bar")
	if mresulta == 1 then
		compass(0,85,235,1,"0xFFFF3355")
		dialog "[Amachang]"
		dialog "On the mini-map,"
		dialog "go to ^FF3355+^000000"
		dialog "to find the Palace."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	elseif mresulta == 2 then
		compass(1,96,118,1,"0xFFCE6300")
		dialog "[Amachang]"
		dialog "On the mini-map,"
		dialog "go to ^FF3355+^000000"
		dialog "to find the Tool Shop."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	elseif mresulta == 3 then
		compass(2,132,117,1,"0xFF55FF33")
		dialog "[Amachang]"
		dialog "On the mini-map,"
		dialog "go to ^55FF33+^000000"
		dialog "to find the Weapon Shop."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	elseif mresulta == 4 then
		compass(3,217,116,1,"0xFF3355FF")
		dialog "[Amachang]"
		dialog "On the mini-map,"
		dialog "go to ^3355FF+^000000"
		dialog "to find the Bar."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	end
end

npc("amatsu","Guide Man",SPRITE_8_M_JPNSOLDIER,251,283,4,0,0,"amatsu_Guide_Man_251283")
function amatsu_Guide_Man_251283()
	dialog "[Guide Man]"
	dialog "Welcome, tourist from Rune-Midgard."
	dialog "I'm the guide of"
	dialog "our beautiful town, Amatsu."
	wait()
	dialog "[Guide Man]"
	dialog "What are you looking for?"
	wait()
	local mresulta = menu("Palace","Tool Shop","Weapon Shop","Bar")
	if mresulta == 1 then
		compass(0,85,235,1,"0xFFFF3355")
		dialog "[Guide Man]"
		dialog "On the mini-map,"
		dialog "go to ^FF3355+^000000"
		dialog "to find the Palace."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	elseif mresulta == 2 then
		compass(1,96,118,1,"0xFFCE6300")
		dialog "[Guide Man]"
		dialog "On the mini-map,"
		dialog "go to ^FF3355+^000000"
		dialog "to find the Tool Shop."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	elseif mresulta == 3 then
		compass(2,132,117,1,"0xFF55FF33")
		dialog "[Guide Man]"
		dialog "On the mini-map,"
		dialog "go to ^55FF33+^000000"
		dialog "to find the Weapon Shop."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	elseif mresulta == 4 then
		compass(3,217,116,1,"0xFF3355FF")
		dialog "[Guide Man]"
		dialog "On the mini-map,"
		dialog "go to ^3355FF+^000000"
		dialog "to find the Bar."
		dialog "Have a good time"
		dialog "in Amatsu."
		close()
	end
end
