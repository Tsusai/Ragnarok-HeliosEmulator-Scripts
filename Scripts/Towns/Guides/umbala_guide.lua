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

npc("umbala","Adventurer",SPRITE_4_F_GON,128,94,4,1,1,"umbala_Adventurer_12894")
function umbala_Adventurer_12894()
	dialog "[Adventurer]"
	dialog "This is a very strange place..."
	dialog "It's underdeveloped, and there"
	dialog "are a number of complex, winding paths..."
	wait()
	dialog "[Adventurer]"
	dialog "However, since I have been here"
	dialog "for months, I am familiar with"
	dialog "this area's geography and points"
	dialog "of interest in this village."
	dialog "You're welcome to ask me about the"
	dialog "locations of buildings."
	wait()
	local mresulta = menu("Locations of buildings.","Remove marks on the mini map.","Quit.")
	if mresulta == 1 then
		local compass_check
		dialog "[Adventurer]"
		dialog "So, which one do you want to check?"
		wait()
		local mresultb = menu("Chief's House","Shaman's House","Weapon Shop","Tool Shop","Bungee Jump Place","Cancel")
		if mresultb == 1 then
			dialog "[Adventurer]"
			dialog "I have made a ^FF3355+^000000 mark"
			dialog "on your mini map."
			wait()
			dialog "[Adventurer]"
			dialog "Only the chief knows the language"
			dialog "of the outside world. So you'd"
			dialog "better visit him before anything else."
			if compass_check == 1 then
				compass(2,66,250,1,"0xFFFF3355")
			else
				compass(2,66,250,0,"0xFFFF3355")
			end
		elseif mresultb == 2 then
			dialog "[Adventurer]"
			dialog "I have made a ^CE6300+^000000 mark"
			dialog "on your mini map."
			wait()
			dialog "[Adventurer]"
			dialog "The Utan Shaman has some"
			dialog "sort of mystic power..."
			dialog "People say she can create rough"
			dialog "enchanted stones, and divide a"
			dialog "pure enchanted stone into rough ones."
			if compass_check == 1 then
				compass(3,217,186,1,"0xFFCE6300")
			else
				compass(3,217,186,0,"0xFFCE6300")
			end
		elseif mresultb == 3 then
			dialog "[Adventurer]"
			dialog "I have made a ^55FF33+^000000 mark"
			dialog "on your mini map."
			wait()
			dialog "[Adventurer]"
			dialog "The Utans are usually well armed"
			dialog "in preparation for attacks from"
			dialog "their enemies. Apparently, they"
			dialog "have been attacked from the outside many times in the past."
			if compass_check == 1 then
				compass(4,126,154,1,"0xFF55FF33")
			else
				compass(4,126,154,0,"0xFF55FF33")
			end
		elseif mresultb == 4 then
			dialog "[Adventurer]"
			dialog "I have made a ^3355FF+^000000 mark"
			dialog "on your mini map."
			wait()
			dialog "[Adventurer]"
			dialog "There are many useful things for"
			dialog "traveling in the Tool Shop, so why don't you go look around?"
			if compass_check == 1 then
				compass(5,136,127,1,"0xFF3355FF")
			else
				compass(5,136,127,0,"0xFF3355FF")
			end
		elseif mresultb == 5 then
			dialog "[Adventurer]"
			dialog "I have made a ^00FF00+^000000 mark"
			dialog "on your mini map."
			wait()
			dialog "[Adventurer]"
			dialog "Umbala has a unique locale called"
			dialog "the 'Bungee Jump Place'."
			dialog "If you're interested in testing"
			dialog "your courage, why don't you go"
			dialog "and partake in this Utan"
			dialog "ritual yourself?"
			if compass_check == 1 then
				compass(6,139,198,1,"0xFF00FF00")
			else
				compass(6,139,198,0,"0xFF00FF00")
			end
		elseif mresultb == 6 then
			dialog "[Adventurer]"
			dialog "If you want to remove the location"
			dialog "marks on your mini map, please"
			dialog "choose 'Remove marks on the mini map' menu."
			close()
		end
		close()
	elseif mresulta == 2 then
		compass(2,66,250,2,"0xFF00FF00")
		compass(3,217,186,2,"0xFF00FF00")
		compass(4,126,154,2,"0xFF00FF00")
		compass(5,136,127,2,"0xFF00FF00")
		compass(6,139,198,2,"0xFF00FF00")
		compass_check("=",0)
		dialog "[Adventurer]"
		dialog "I removed all the marks from your"
		dialog "mini map. Feel free to ask me"
		dialog "again if you want me to mark building locations."
		close()
	elseif mresulta == 3 then
		dialog "[Adventurer]"
		dialog "It's fun to learn Utan culture on your own. Take care."
		close()
	end
	close()
end
