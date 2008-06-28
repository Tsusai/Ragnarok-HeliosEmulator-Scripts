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

npc("niflheim","Roaming Man",SPRITE_4_M_NFMAN,107,156,6,1,1,"niflheim_Roaming_Man_107156")
function niflheim_Roaming_Man_107156()
	dialog "[Ricael]"
	dialog "You must be lost..."
	dialog "Why would anyone come"
	dialog "to this horrid, dreadful"
	dialog "place on purpose...??"
	wait()
	dialog "[Ricael]"
	dialog "Ever since I stumbled fell down into this giant tree, I've suffered endlessly here. I've wasted years in sadness, being unable to escape Niflheim."
	wait()
	dialog "[Ricael]"
	dialog "But in searching for an"
	dialog "escape route, I probably know"
	dialog "this town better than anyone"
	dialog "else. I guess knowing the"
	dialog "layout might help you escape"
	dialog "if it weren't so futile."
	wait()
	local mresulta = menu("Ask building locations.","Remove marks on the mini-map.","Cancel.")
	if mresulta == 1 then
		local compass_check
		dialog "[Ricael]"
		dialog "So, um, which place do you want to know about?"
		wait()
		local mresultb = menu("Witch's castle","Tool shop","Weapon shop","Pub","Cancel")
		if mresultb == 1 then
			dialog "[Ricael]"
			dialog "There. I made a ^FF3355+^000000 mark"
			dialog "on your mini-map so that you can"
			dialog "go to the castle where that"
			dialog "creepy witch lives."
			wait()
			dialog "[Ricael]"
			dialog "I went there once, but then I"
			dialog "ran away and decided that I"
			dialog "should try to not die as much"
			dialog "as possible. That's pretty"
			dialog "much my life goal here in"
			dialog "Niflheim."
			if compass_check == 1 then
				compass(2,253,191,1,"0xFFFF3355")
			else
				compass(2,253,191,0,"0xFFFF3355")
			end
		elseif mresultb == 2 then
			dialog "[Ricael]"
			dialog "The Tool shop is located"
			dialog "at the ^CE6300+^000000 mark I made"
			dialog "on your mini-map."
			wait()
			dialog "[Ricael]"
			dialog "They sell some unique items that"
			dialog "you cannot find outside of this"
			dialog "town. Of course, they weren't so"
			dialog "special once I realized no"
			dialog "Potion can ease the pain I feel."
			dialog "...I wish I was in prison."
			Emotion("Roaming Man","ET_KEK")
			if compass_check == 1 then
				compass(3,217,196,1,"0xFFCE6300")
			else
				compass(3,217,196,0,"0xFFCE6300")
			end
		elseif mresultb == 3 then
			dialog "[Ricael]"
			dialog "The Weapon shop is located"
			dialog "at the ^55FF33+^000000 mark I made"
			dialog "on your mini-map."
			wait()
			dialog "[Ricael]"
			dialog "They sell some unique items which"
			dialog "you cannot find outside of this"
			dialog "town... Of course, fighting"
			dialog "the monsters here will just"
			dialog "make them angrier. You may as"
			dialog "well let them eat you."
			Emotion("Roaming Man","ET_KEK")
			if compass_check == 1 then
				compass(4,216,171,1,"0xFF55FF33")
			else
				compass(4,216,171,0,"0xFF55FF33")
			end
		elseif mresultb == 4 then
			dialog "[Ricael]"
			dialog "The Pub is located at"
			dialog "the ^3355FF+^000000 mark I've made"
			dialog "on your mini-map."
			wait()
			dialog "[Ricael]"
			dialog "Sometimes I see dead people in the"
			dialog "Pub enjoying themselves, having a"
			dialog "good time. I used to be able to"
			dialog "have fun once, but now all I feel"
			dialog "is the cold tingle of loneliness"
			dialog "and despair...every waking moment."
			if compass_check == 1 then
				compass(5,189,207,1,"0xFF3355FF")
			else
				compass(5,189,207,0,"0xFF3355FF")
			end
		elseif mresultb == 5 then
			dialog "[Ricael]"
			dialog "If you want to remove the location"
			dialog "marks from your mini-map, please"
			dialog "choose 'Remove marks on the"
			dialog "mini-map' from the menu."
			close()
		end
		close()
	elseif mresulta == 2 then
		compass(2,253,191,2,"0xFF00FF00")
		compass(3,217,196,2,"0xFF00FF00")
		compass(4,216,171,2,"0xFF00FF00")
		compass(5,189,207,2,"0xFF00FF00")
		compass_check = 0
		dialog "[Ricael]"
		dialog "I removed the location marks from"
		dialog "your mini-map. Go ahead and ask"
		dialog "me if you want to mark the"
		dialog "building locations again. It"
		dialog "helps me ignore the depression"
		dialog "that gnaws at me constantly."
		close()
	elseif mresulta == 3 then
		dialog "[Ricael]"
		dialog "It's not a good idea to search"
		dialog "Niflheim by yourself..."
		dialog "At least try to be careful."
		close()
	end
	close()
end
