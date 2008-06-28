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

npc("gonryun","Kunlun Guide",SPRITE_8_M_TWSOLDIER,163,60,4,0,0,"gonryun_Kunlun_Guide_16360")
function gonryun_Kunlun_Guide_16360()
	local compass_check = 0
	local wait_button_chk = 0
	dialog "[He Yuen Zhe]"
	dialog "Ni Hao!"
	dialog "Welcome to Kunlun~"
	dialog "Take a walk around and experience"
	dialog "the ancient history and tradition"
	dialog "of our breath taking city."
	wait()
	dialog "[He Yuen Zhe]"
	dialog "I am responsible for helping you"
	dialog "with any questions you may have."
	dialog "Please feel free to ask me anything."
	wait()
	local mresulta = menu("Residence of the Chief","Tool Dealer","Weapon Dealer","Armor Dealer","Wine Maker")
	if mresulta == 1 then
		compass(0,109,131,1,"0xFFFF3355")
		dialog "[He Yuen Zhe]"
		dialog "Please follow your minimap, and head over to the ^FF3355+^000000 mark."
		dialog "There, you'll get to the residence of the Chief. Enjoy your stay in lovely Kunlun!"
		dialog "Xie Xie!"
		close()
	elseif mresulta == 2 then
		compass(1,147,82,1,"0xFFCE6300")
		dialog "[He Yuen Zhe]"
		dialog "Please follow your minimap, and head over to the ^CE6300+^000000 mark."
		dialog "There, you'll get to the Tool Dealer. Enjoy your stay in lovely Kunlun!"
		dialog "Xie Xie!"
		close()
	elseif mresulta == 3 then
		compass(2,174,104,1,"0xFF55FF33")
		dialog "[He Yuen Zhe]"
		dialog "Please follow your minimap, and head over to the ^55FF33+^000000 mark."
		dialog "There, you'll get to the Weapon Dealer. Enjoy your stay in lovely Kunlun!"
		dialog "Xie Xie!"
		close()
	elseif mresulta == 4 then
		compass(3,173,84,1,"0xFF3355FF")
		dialog "[He Yuen Zhe]"
		dialog "Please follow your minimap, and head over to the ^3355FF+^000000 mark."
		dialog "There, you'll get to the Armor Dealer. Enjoy your stay in lovely Kunlun!"
		dialog "Xie Xie!"
		close()
	elseif mresulta == 5 then
		compass(3,215,114,1,"0xFFCD69C9")
		dialog "[He Yuen Zhe]"
		dialog "Please follow your minimap, and head over to the ^CD69C9+^000000 mark."
		dialog "There, you'll get to the Wine Maker. Enjoy your stay in lovely Kunlun!"
		dialog "Xie Xie!"
		close()
	end
end
