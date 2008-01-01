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
-- | Current Version: 1.0      | Episode 10.3 File.              |
-- |-------------------------------------------------------------|
-- | 01/05/2007 : Added 1st Version. [Muad_Dib]                  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |                                                             |
-- |                                                             |
-- \____________________________________________________________/

npc("aldebaran","Soldier",spr_8W_SOLDIER,139,63,4,0,0,"aldebaran_Soldier_13963")
function aldebaran_Soldier_13963()
	showimage("prt_soldier.bmp",2)
	dialog "[Al De Baran Guard]"
	dialog "I'm just an ordinary guard"
	dialog "that you could find in any other city. I don't think I even have a name..."
	wait()
	dialog "[Al De Baran Guard]"
	dialog "I am in charge of the Service Guides from the Al De Baran Garrison. Let me guide you"
	dialog "through our town!"
	wait()
	local mresulta = menu("Get Location Guide.","End conversation. ")
	if mresulta == 1 then
		compass(0,30,210,1,0xFFFF6633)
		compass(1,52,180,1,0xFF0000FF)
		compass(2,210,210,1,0xFF00FFFF)
		compass(3,218,84,1,0xFF515151)
		compass(4,178,54,1,0xFF3355FF)
		compass(5,36,36,1,0xFFFF5555)
		dialog "^FF6633+^000000 -> Kafra Main Office "
		dialog "^0000FF+^000000 -> Weapon Shop "
		dialog "^00FFFF+^000000 -> Sorcerer Guild (Closed)"
		dialog "^515151+^000000 -> Pub "
		dialog "^3355FF+^000000 -> Item Shop "
		dialog "^FF5555+^000000 -> Alchemist Guild"
		close()
		showimage("prt_soldier.bmp",255)
	elseif mresulta == 2 then
		dialog "[Al De Baran Guard]"
		dialog "We are sworn to protect Al De Baran! May the forces of evil always be crushed by the"
		dialog "righteous fist of good!"
		close()
		showimage("prt_soldier.bmp",255)
	end
end

npc("aldebaran","Soldier",spr_8W_SOLDIER,133,108,4,0,0,"aldebaran_Soldier_133108")
function aldebaran_Soldier_133108()
	showimage("prt_soldier.bmp",2)
	dialog "[Al De Baran Guard]"
	dialog "I'm just an"
	dialog "ordinary guard,"
	dialog "the kind you can"
	dialog "find in any other city."
	wait()
	dialog "[Al De Baran Guard]"
	dialog "When I'm not too busy"
	dialog "protecting the Al De Baran"
	dialog "populace, I'm here giving directions to adventurers"
	dialog "like yourself."
	wait()
	local mresulta = menu("Kafra Main Office ","Weapon Shop ","Sorcerer Guild ","Pub ","Item Shop ","Alchemist Guild ","End Conversation ")
	if mresulta == 1 then
		compass(0,30,210,1,0xFFFF6633)
		dialog "^FF6633+^000000 -> Kafra Main Office "
		close()
		showimage("prt_soldier.bmp",255)
	elseif mresulta == 2 then
		compass(1,52,180,1,0xFF0000FF)
		dialog "^0000FF+^000000 -> Weapon Shop "
		close()
		showimage("prt_soldier.bmp",255)
	elseif mresulta == 3 then
		compass(2,210,210,1,0xFF00FFFF)
		dialog "^00FFFF+^000000 -> Sorcerer Guild (Closed)"
		close()
		showimage("prt_soldier.bmp",255)
	elseif mresulta == 4 then
		compass(3,218,84,1,0xFF515151)
		dialog "^515151+^000000 -> Pub "
		close()
		showimage("prt_soldier.bmp",255)
	elseif mresulta == 5 then
		compass(4,178,54,1,0xFF3355FF)
		dialog "^3355FF+^000000 -> Item Shop "
		close()
		showimage("prt_soldier.bmp",255)
	elseif mresulta == 6 then
		compass(5,36,36,1,0xFFFF5555)
		dialog "^FF5555+^000000 -> Alchemist Guild"
		close()
		showimage("prt_soldier.bmp",255)
	elseif mresulta == 7 then
		dialog "[Al De Baran Guard]"
		dialog "We are sworn to"
		dialog "protect Al De Baran!"
		dialog "May the forces of good"
		dialog "always prevail over evil~"
		close()
		showimage("prt_soldier.bmp",255)
	end
end
