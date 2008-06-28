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

npc("yuno","Juno Guide",SPRITE_8_F_GIRL,153,47,4,0,0,"yuno_Juno_Guide_15347")
function yuno_Juno_Guide_15347()
	local compass_check = 0
	local wait_button_chk = 0
	dialog "[Ms. Yoon]"
	dialog "A place that takes the vision of the future, and gives it form in the present. Welcome to"
	dialog "the city of Juno!"
	wait()
	local mresulta = menu("Armory","Tool Shop","Sage Castle (Sage Job Change Place)","Street of Book Stores","Juphero Plaza","Library of the Republic","Schweicherbil Magic Academy","Monster Museum","Forge","Airport","End Conversation")
	if mresulta == 1 then
		compass(0,120,138,1,"0xFFFF3355")
		dialog "[Ms. Yoon]"
		dialog "Please look"
		dialog "at the mini map."
		dialog "^FF3355+^000000 -> Armory"
		dialog "Thank you,"
		dialog "have a good day."
		close()
	elseif mresulta == 2 then
		compass(1,193,142,1,"0xFF3355FF")
		dialog "[Ms. Yoon]"
		dialog "Please look"
		dialog "at the mini map."
		dialog "^3355FF+^000000 -> Tool Shop"
		dialog "Thank you,"
		dialog "have a good day."
		close()
	elseif mresulta == 3 then
		compass(2,90,318,1,"0xFF33FF55")
		dialog "[Ms. Yoon]"
		dialog "Please look"
		dialog "at the mini map."
		dialog "^33FF55+^000000 -> Sage Castle"
		dialog "( Sage Job Change Place )"
		dialog "Thank you, have a good day."
		close()
	elseif mresulta == 4 then
		compass(3,257,102,1,"0xFFFF3355")
		dialog "[Ms. Yoon]"
		dialog "Please look"
		dialog "at the mini map."
		dialog "^FF3355+^000000 -> Street of Book Stores"
		dialog "Thank you, have a good day."
		close()
	elseif mresulta == 5 then
		compass(4,157,170,1,"0xFF3355FF")
		dialog "[Ms. Yoon]"
		dialog "Please look"
		dialog "at the mini map."
		dialog "^3355FF+^000000 -> Juphero Plaza"
		dialog "Thank you,"
		dialog "have a good day."
		close()
	elseif mresulta == 6 then
		compass(5,336,204,1,"0xFF33FF55")
		dialog "[Ms. Yoon]"
		dialog "Please look"
		dialog "at the mini map."
		dialog "^33FF55+^000000 -> Library of the Republic"
		dialog "Thank you, have a good day."
		close()
	elseif mresulta == 7 then
		compass(6,323,281,1,"0xFFFF3355")
		dialog "[Ms. Yoon]"
		dialog "Please look at the mini map."
		dialog "^FF3355+^000000 -> Schweicherbil Magic Academy"
		dialog "Thank you, have a good day."
		close()
	elseif mresulta == 8 then
		compass(7,278,288,1,"0xFF3355FF")
		dialog "[Ms. Yoon]"
		dialog "Please look at the mini map."
		dialog "^3355FF+^000000 -> Monster Museum"
		dialog "Thank you, have a good day."
		close()
	elseif mresulta == 9 then
		compass(8,120,138,1,"0xFFFF3355")
		dialog "[Ms. Yoon]"
		dialog "Please look at the mini map."
		dialog "^3355FF+^000000 -> Forge"
		dialog "The forge is located underneath Armory."
		dialog "Thank you, have a good day."
		close()
	elseif mresulta == 10 then
		compass(9,53,214,1,"0xFFFF3355")
		dialog "[Ms. Yoon]"
		dialog "Please look at the mini map."
		dialog "^3355FF+^000000 -> Airport"
		dialog "Thank you, have a good day."
		close()
	elseif mresulta == 11 then
		dialog "[Ms. Yoon]"
		dialog "A great city of wise men."
		dialog "A city of Knowledge!"
		dialog "Welcome to Juno."
		close()
	end
end
