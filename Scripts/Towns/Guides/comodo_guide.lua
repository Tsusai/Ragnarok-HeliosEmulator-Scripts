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

npc("comodo","Comodo Guide",SPRITE_8_F_GIRL,322,178,4,0,0,"comodo_Comodo_Guide_322178")
function comodo_Comodo_Guide_322178()
	local compass_check = 0
	local wait_button_chk = 0
	dialog "[Native Kokomo]"
	dialog "Welcome to Comodo, the"
	dialog "city of dreams and fantasy,"
	dialog "where the nightlife never ends!"
	dialog "I know this area really well,"
	dialog "so let me know if you need"
	dialog "directions anywhere here."
	wait()
	local mresulta = menu("Casino","Hula Dance Stage ^3355FF(Dancer Job Change)^000000","Weapon and Armor Shop","Tool Shop","Tourist Shop","Kafra Co. Western Branch","Chief's House","Pub","Campground","End Conversation")
	if mresulta == 1 then
		compass(0,140,98,1,"0xFFFF6633")
		dialog "Please refer to the cross mark,"
		dialog "^FF6633+^000000, on your Mini-Map to find the"
		dialog "Casino, a haven for rest for"
		dialog "weary travlers and the heart"
		dialog "of Comodo's nightlife."
		close()
	elseif mresulta == 2 then
		compass(1,188,168,1,"0xFF0000FF")
		dialog "Please refer to the cross mark,"
		dialog "^0000FF+^000000, on your Mini-Map to find the"
		dialog "Hula Dance Stage, the place"
		dialog "where female Archers can"
		dialog "change jobs to Dancers."
		close()
	elseif mresulta == 3 then
		compass(2,266,70,1,"0xFF00FFFF")
		dialog "Please refer to the cross mark,"
		dialog "^00FFFF+^000000, on your Mini-Map to find the"
		dialog "Weapon and Armor shop. Be"
		dialog "sure to check that shop for"
		dialog "any special items that are"
		dialog "unique to Comodo!"
		close()
	elseif mresulta == 4 then
		compass(3,86,128,1,"0xFF515151")
		dialog "Please refer to the cross mark,"
		dialog "^515151+^000000, on your Mini-Map to find the"
		dialog "Tool Shop. If you've never been"
		dialog "there before, then I suggest"
		dialog "you check it out and stock up"
		dialog "on tools you might need later."
		close()
	elseif mresulta == 5 then
		compass(4,298,124,1,"0xFF3355FF")
		dialog "Please refer to the cross mark,"
		dialog "^3355FF+^000000, on your Mini-Map to find the"
		dialog "Tourist Shop where you can "
		dialog "buy gifts that can only be found^FFFFFF ^000000 in the Comodo region~"
		close()
	elseif mresulta == 6 then
		compass(5,136,202,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Western branch of the Kafra"
		dialog "Corporation. They offer some"
		dialog "pretty important services that^FFFFFF ^000000 you may want to check out later."
		close()
	elseif mresulta == 7 then
		compass(5,114,294,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Chief's House. You're welcome"
		dialog "to visit him, and he's usually"
		dialog "happy to have visitors."
		close()
	elseif mresulta == 8 then
		compass(5,166,298,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Pub. There, you can meet other"
		dialog "tourists, relax, and socialize"
		dialog "in an enjoyable environment~"
		close()
	elseif mresulta == 9 then
		compass(5,210,308,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Campground. Gather with your"
		dialog "family and friends, and enjoy"
		dialog "the special barbeque of"
		dialog "Comodo's camping grounds~"
		close()
	elseif mresulta == 10 then
		dialog "[Native Kokomo]"
		dialog "Actually, it always looks"
		dialog "like nighttime in Comodo"
		dialog "because it's built in a huge"
		dialog "cave. We don't get any sunlight"
		dialog "here, but the darkness here is"
		dialog "more exciting than gloomy~"
		close()
	end
end

npc("comodo","Comodo Guide",SPRITE_8_F_GIRL,176,350,4,0,0,"comodo_Comodo_Guide_176350")
function comodo_Comodo_Guide_176350()
	dialog "[Native Nutcoco]"
	dialog "Welcome to Comodo, the"
	dialog "city of dreams and fantasy,"
	dialog "where the nightlife never ends!"
	dialog "I know this area really well,"
	dialog "so let me know if you need"
	dialog "directions anywhere here."
	wait()
	local mresulta = menu("Casino","Hula Dance Stage ^3355FF(Dancer Job Change)^000000","Weapon and Armor Shop","Tool Shop","Tourist Shop","Kafra Co. Western Branch","Chief's House","Pub","Campground","End Conversation")
	if mresulta == 1 then
		compass(0,140,98,1,"0xFFFF6633")
		dialog "Please refer to the cross mark,"
		dialog "^FF6633+^000000, on your Mini-Map to find the"
		dialog "Casino, a haven for rest for"
		dialog "weary travlers and the heart"
		dialog "of Comodo's nightlife."
		close()
	elseif mresulta == 2 then
		compass(1,188,168,1,"0xFF0000FF")
		dialog "Please refer to the cross mark,"
		dialog "^0000FF+^000000, on your Mini-Map to find the"
		dialog "Hula Dance Stage, the place"
		dialog "where female Archers can"
		dialog "change jobs to Dancers."
		close()
	elseif mresulta == 3 then
		compass(2,266,70,1,"0xFF00FFFF")
		dialog "Please refer to the cross mark,"
		dialog "^00FFFF+^000000, on your Mini-Map to find the"
		dialog "Weapon and Armor shop. Be"
		dialog "sure to check that shop for"
		dialog "any special items that are"
		dialog "unique to Comodo!"
		close()
	elseif mresulta == 4 then
		compass(3,86,128,1,"0xFF515151")
		dialog "Please refer to the cross mark,"
		dialog "^515151+^000000, on your Mini-Map to find the"
		dialog "Tool Shop. If you've never been"
		dialog "there before, then I suggest"
		dialog "you check it out and stock up"
		dialog "on tools you might need later."
		close()
	elseif mresulta == 5 then
		compass(4,298,124,1,"0xFF3355FF")
		dialog "Please refer to the cross mark,"
		dialog "^3355FF+^000000, on your Mini-Map to find the"
		dialog "Tourist Shop where you can "
		dialog "buy gifts that can only be found^FFFFFF ^000000 in the Comodo region~"
		close()
	elseif mresulta == 6 then
		compass(5,136,202,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Western branch of the Kafra"
		dialog "Corporation. They offer some"
		dialog "pretty important services that^FFFFFF ^000000 you may want to check out later."
		close()
	elseif mresulta == 7 then
		compass(5,114,294,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Chief's House. You're welcome"
		dialog "to visit him, and he's usually"
		dialog "happy to have visitors."
		close()
	elseif mresulta == 8 then
		compass(5,166,298,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Pub. There, you can meet other"
		dialog "tourists, relax, and socialize"
		dialog "in an enjoyable environment~"
		close()
	elseif mresulta == 9 then
		compass(5,210,308,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Campground. Gather with your"
		dialog "family and friends, and enjoy"
		dialog "the special barbeque of"
		dialog "Comodo's camping grounds~"
		close()
	elseif mresulta == 10 then
		dialog "[Native Nutcoco]"
		dialog "Actually, it always looks"
		dialog "like nighttime in Comodo"
		dialog "because it's built in a huge"
		dialog "cave. We don't get any sunlight"
		dialog "here, but the darkness here is"
		dialog "more exciting than gloomy~"
		close()
	end
end

npc("comodo","Comodo Guide",SPRITE_8_F_GIRL,37,219,4,0,0,"comodo_Comodo_Guide_37219")
function comodo_Comodo_Guide_37219()
	dialog "[Native Papaya]"
	dialog "Welcome to Comodo, the"
	dialog "city of dreams and fantasy,"
	dialog "where the nightlife never ends!"
	dialog "I know this area really well,"
	dialog "so let me know if you need"
	dialog "directions anywhere here."
	wait()
	local mresulta = menu("Casino","Hula Dance Stage ^3355FF(Dancer Job Change)^000000","Weapon and Armor Shop","Tool Shop","Tourist Shop","Kafra Co. Western Branch","Chief's House","Pub","Campground","End Conversation")
	if mresulta == 1 then
		compass(0,140,98,1,"0xFFFF6633")
		dialog "Please refer to the cross mark,"
		dialog "^FF6633+^000000, on your Mini-Map to find the"
		dialog "Casino, a haven for rest for"
		dialog "weary travlers and the heart"
		dialog "of Comodo's nightlife."
		close()
	elseif mresulta == 2 then
		compass(1,188,168,1,"0xFF0000FF")
		dialog "Please refer to the cross mark,"
		dialog "^0000FF+^000000, on your Mini-Map to find the"
		dialog "Hula Dance Stage, the place"
		dialog "where female Archers can"
		dialog "change jobs to Dancers."
		close()
	elseif mresulta == 3 then
		compass(2,266,70,1,"0xFF00FFFF")
		dialog "Please refer to the cross mark,"
		dialog "^00FFFF+^000000, on your Mini-Map to find the"
		dialog "Weapon and Armor shop. Be"
		dialog "sure to check that shop for"
		dialog "any special items that are"
		dialog "unique to Comodo!"
		close()
	elseif mresulta == 4 then
		compass(3,86,128,1,"0xFF515151")
		dialog "Please refer to the cross mark,"
		dialog "^515151+^000000, on your Mini-Map to find the"
		dialog "Tool Shop. If you've never been"
		dialog "there before, then I suggest"
		dialog "you check it out and stock up"
		dialog "on tools you might need later."
		close()
	elseif mresulta == 5 then
		compass(4,298,124,1,"0xFF3355FF")
		dialog "Please refer to the cross mark,"
		dialog "^3355FF+^000000, on your Mini-Map to find the"
		dialog "Tourist Shop where you can "
		dialog "buy gifts that can only be found^FFFFFF ^000000 in the Comodo region~"
		close()
	elseif mresulta == 6 then
		compass(5,136,202,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Western branch of the Kafra"
		dialog "Corporation. They offer some"
		dialog "pretty important services that^FFFFFF ^000000 you may want to check out later."
		close()
	elseif mresulta == 7 then
		compass(5,114,294,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Chief's House. You're welcome"
		dialog "to visit him, and he's usually"
		dialog "happy to have visitors."
		close()
	elseif mresulta == 8 then
		compass(5,166,298,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Pub. There, you can meet other"
		dialog "tourists, relax, and socialize"
		dialog "in an enjoyable environment~"
		close()
	elseif mresulta == 9 then
		compass(5,210,308,1,"0xFFFF5555")
		dialog "Please refer to the cross mark,"
		dialog "^FF5555+^000000, on your Mini-Map to find the"
		dialog "Campground. Gather with your"
		dialog "family and friends, and enjoy"
		dialog "the special barbeque of"
		dialog "Comodo's camping grounds~"
		close()
	elseif mresulta == 10 then
		dialog "[Native Papaya]"
		dialog "Actually, it always looks"
		dialog "like nighttime in Comodo"
		dialog "because it's built in a huge"
		dialog "cave. We don't get any sunlight"
		dialog "here, but the darkness here is"
		dialog "more exciting than gloomy~"
		close()
	end
end
