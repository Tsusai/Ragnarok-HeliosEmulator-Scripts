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

npc("louyang","Soldier#BA",SPRITE_4_M_CHNSOLDIER,213,213,3,0,0,"louyang_SoldierBA_213213")
function louyang_SoldierBA_213213()
	dialog "[Soldier]"
	dialog "Welcome to Louyang,"
	dialog "a city with a long"
	dialog "and colorful history."
	wait()
	dialog "[Soldier]"
	dialog "Recently we've developed"
	dialog "an ocean lane to accomodate"
	dialog "positive exchange with"
	dialog "foreign nations."
	wait()
	dialog "[Soldier]"
	dialog "Louyang is well-known for various specialties in addition to its rich history. Here you can find many things unique to our land."
	wait()
	dialog "[Soldier]"
	dialog "Please take your time"
	dialog "and we invite you to enjoy"
	dialog "your trip here in Louyang."
	wait()
	local mresulta = menu("Ask Building Locations.","Remove all marks from mini-map.","Cancel.")
	if mresulta == 1 then
		local compass_check
		dialog "[Soldier]"
		dialog "Where would you like to go?"
		wait()
		local mresultb = menu("Dragon Castle","Doctor's Office","City Hall","Weapon Shop","Tool Shop","Tavern","Cancel")
		if mresultb == 1 then
			dialog "[Soldier]"
			dialog "The Dragon Castle is located at ^FF3355+^000000. It is where all the nobles reside, including our lord."
			wait()
			dialog "[Soldier]"
			dialog "Since you're an outsider, I guess it would be appropriate for you to visit our lord first."
			if compass_check == 1 then
				compass(2,218,255,1,"0xFFFF3355")
			else
				compass(2,218,255,0,"0xFFFF3355")
			end
		elseif mresultb == 2 then
			dialog "[Soldier]"
			dialog "We have a very skillful doctor."
			dialog "You can find her office at ^CE6300+^000000."
			wait()
			dialog "[Soldier]"
			dialog "It is said that there"
			dialog "is no disease she cannot cure. Well, I can't guarantee if that's true or not."
			if compass_check == 1 then
				compass(3,263,94,1,"0xFFCE6300")
			else
				compass(3,263,94,0,"0xFFCE6300")
			end
		elseif mresultb == 3 then
			dialog "[Soldier]"
			dialog "We have a City Hall where the federal government operates."
			dialog "It is located at ^A5BAAD+^000000."
			wait()
			dialog "[Soldier]"
			dialog "If you have any problems,"
			dialog "you should talk with the"
			dialog "employees in City Hall."
			if compass_check == 1 then
				compass(4,309,80,1,"0xFF00FF00")
			else
				compass(4,309,80,0,"0xFF00FF00")
			end
		elseif mresultb == 4 then
			dialog "[Soldier]"
			dialog "The Weapon Shop is located at ^55FF33+^000000."
			wait()
			dialog "[Soldier]"
			dialog "You will see"
			dialog "marvelous weapons forged"
			dialog "by the well-experienced"
			dialog "blacksmiths of Louyang."
			if compass_check == 1 then
				compass(5,145,174,1,"0xFF55FF33")
			else
				compass(5,145,174,0,"0xFF55FF33")
			end
		elseif mresultb == 5 then
			dialog "[Soldier]"
			dialog "The Tool Shop is located at ^3355FF+^000000."
			wait()
			dialog "[Soldier]"
			dialog "Knowing your enemy"
			dialog "is half the battle!"
			dialog "It's also safer to prepare yourself than to be sorry later. Why don't you go check their supplies?"
			if compass_check == 1 then
				compass(6,135,98,1,"0xFF3355FF")
			else
				compass(6,135,98,0,"0xFF3355FF")
			end
		elseif mresultb == 6 then
			dialog "[Soldier]"
			dialog "When you get tired during your trip, I suggest that you visit the Tavern. It's located at ^00FF00+^000000."
			wait()
			dialog "[Soldier]"
			dialog "The Tavern is a good place"
			dialog "to meet other tourists, as well as to hear of any news that may be helpful to know."
			if compass_check == 1 then
				compass(7,280,167,1,"0xFF00FF00")
			else
				compass(7,280,167,0,"0xFF00FF00")
			end
		elseif mresultb == 7 then
			dialog "[Soldier]"
			dialog "If you wish to remove all marks"
			dialog "on your mini-map, please choose 'Remove all marks from mini-map.' from the menu."
			close()
		end
		close()
	elseif mresulta == 2 then
		compass(2,218,255,2,"0xFF00FF00")
		compass(3,263,94,2,"0xFF00FF00")
		compass(4,309,80,2,"0xFF00FF00")
		compass(5,145,174,2,"0xFF00FF00")
		compass(6,135,98,2,"0xFF00FF00")
		compass(7,280,167,2,"0xFF00FF00")
		compass_check("=",0)
		dialog "[Soldier]"
		dialog "There, I've erased all the marks on your mini-map. Feel free to ask me about building locations whenever you need to."
		close()
	elseif mresulta == 3 then
		dialog "[Soldier]"
		dialog "I guess it's fun"
		dialog "sometimes to go exploring"
		dialog "on your own. Take care."
		close()
	end
	close()
end

npc("louyang","Soldier#BB",SPRITE_4_M_CHNSOLDIER,160,175,3,0,0,"louyang_SoldierBB_160175")
function louyang_SoldierBB_160175()
	dialog "[Soldier]"
	dialog "Welcome to Louyang,"
	dialog "a city with a long"
	dialog "and colorful history."
	wait()
	dialog "[Soldier]"
	dialog "Recently we've developed"
	dialog "an ocean lane to accomodate"
	dialog "positive exchange with"
	dialog "foreign nations."
	wait()
	dialog "[Soldier]"
	dialog "Louyang is well-known for various specialties in addition to its rich history. Here you can find many things unique to our land."
	wait()
	dialog "[Soldier]"
	dialog "Please take your time"
	dialog "and we invite you to enjoy"
	dialog "your trip here in Louyang."
	wait()
	local mresulta = menu("Ask Building Locations.","Remove all marks from mini-map.","Cancel.")
	if mresulta == 1 then
		local compass_check
		dialog "[Soldier]"
		dialog "Where would you like to go?"
		wait()
		local mresultb = menu("Dragon Castle","Doctor's Office","City Hall","Weapon Shop","Tool Shop","Tavern","Cancel")
		if mresultb == 1 then
			dialog "[Soldier]"
			dialog "The Dragon Castle is located at ^FF3355+^000000. It is where all the nobles reside, including our lord."
			wait()
			dialog "[Soldier]"
			dialog "Since you're an outsider, I guess it would be appropriate for you to visit our lord first."
			if compass_check == 1 then
				compass(2,218,255,1,"0xFFFF3355")
			else
				compass(2,218,255,0,"0xFFFF3355")
			end
		elseif mresultb == 2 then
			dialog "[Soldier]"
			dialog "We have a very skillful doctor."
			dialog "You can find her office at ^CE6300+^000000."
			wait()
			dialog "[Soldier]"
			dialog "It is said that there"
			dialog "is no disease she cannot cure. Well, I can't guarantee if that's true or not."
			if compass_check == 1 then
				compass(3,263,94,1,"0xFFCE6300")
			else
				compass(3,263,94,0,"0xFFCE6300")
			end
		elseif mresultb == 3 then
			dialog "[Soldier]"
			dialog "We have a City Hall where the federal government operates."
			dialog "It is located at ^A5BAAD+^000000."
			wait()
			dialog "[Soldier]"
			dialog "If you have any problems,"
			dialog "you should talk with the"
			dialog "employees in City Hall."
			if compass_check == 1 then
				compass(4,309,80,1,"0xFF00FF00")
			else
				compass(4,309,80,0,"0xFF00FF00")
			end
		elseif mresultb == 4 then
			dialog "[Soldier]"
			dialog "The Weapon Shop is located at ^55FF33+^000000."
			wait()
			dialog "[Soldier]"
			dialog "You will see"
			dialog "marvelous weapons forged"
			dialog "by the well-experienced"
			dialog "blacksmiths of Louyang."
			if compass_check == 1 then
				compass(5,145,174,1,"0xFF55FF33")
			else
				compass(5,145,174,0,"0xFF55FF33")
			end
		elseif mresultb == 5 then
			dialog "[Soldier]"
			dialog "The Tool Shop is located at ^3355FF+^000000."
			wait()
			dialog "[Soldier]"
			dialog "Knowing your enemy"
			dialog "is half the battle!"
			dialog "It's also safer to prepare yourself than to be sorry later. Why don't you go check their supplies?"
			if compass_check == 1 then
				compass(6,135,98,1,"0xFF3355FF")
			else
				compass(6,135,98,0,"0xFF3355FF")
			end
		elseif mresultb == 6 then
			dialog "[Soldier]"
			dialog "When you get tired during your trip, I suggest that you visit the Tavern. It's located at ^00FF00+^000000."
			wait()
			dialog "[Soldier]"
			dialog "The Tavern is a good place"
			dialog "to meet other tourists, as well as to hear of any news that may be helpful to know."
			if compass_check == 1 then
				compass(7,280,167,1,"0xFF00FF00")
			else
				compass(7,280,167,0,"0xFF00FF00")
			end
		elseif mresultb == 7 then
			dialog "[Soldier]"
			dialog "If you wish to remove all marks"
			dialog "on your mini-map, please choose 'Remove all marks from mini-map.' from the menu."
			close()
		end
		close()
	elseif mresulta == 2 then
		compass(2,218,255,2,"0xFF00FF00")
		compass(3,263,94,2,"0xFF00FF00")
		compass(4,309,80,2,"0xFF00FF00")
		compass(5,145,174,2,"0xFF00FF00")
		compass(6,135,98,2,"0xFF00FF00")
		compass(7,280,167,2,"0xFF00FF00")
		compass_check("=",0)
		dialog "[Soldier]"
		dialog "There, I've erased all the marks on your mini-map. Feel free to ask me about building locations whenever you need to."
		close()
	elseif mresulta == 3 then
		dialog "[Soldier]"
		dialog "I guess it's fun"
		dialog "sometimes to go exploring"
		dialog "on your own. Take care."
		close()
	end
	close()
end

npc("louyang","Representative",SPRITE_4_F_CHNWOMAN,224,104,3,0,0,"louyang_Representative_224104")
function louyang_Representative_224104()
	dialog "[Representative]"
	dialog "Welcome to Louyang,"
	dialog "an ancient land with"
	dialog "a history full of tales"
	dialog "of bravery."
	wait()
	dialog "[Representative]"
	dialog "We now provide an ocean lane to accomodate foreign travelers and intercultural exchange from which all can benefit."
	wait()
	dialog "[Representative]"
	dialog "Louyang is famous for"
	dialog "its elaborate history, as well as specialties that are unique to this nation. Please take your time and enjoy your stay."
	wait()
	local mresulta = menu("Ask Building Locations.","Remove all marks from mini-map.","Cancel.")
	if mresulta == 1 then
		local compass_check
		dialog "[Representative]"
		dialog "Where would you like to go?"
		wait()
		local mresultb = menu("Dragon Castle","Doctor's Office","City Hall","Weapon Shop","Tool Shop","Tavern","Cancel")
		if mresultb == 1 then
			dialog "[Representative]"
			dialog "The Dragon Castle is located at ^FF3355+^000000. It is where all the nobles reside, including our lord."
			wait()
			dialog "[Representative]"
			dialog "Since you're an outsider, I guess it would be appropriate for you to visit our lord first."
			if compass_check == 1 then
				compass(2,218,255,1,"0xFFFF3355")
			else
				compass(2,218,255,0,"0xFFFF3355")
			end
		elseif mresultb == 2 then
			dialog "[Representative]"
			dialog "We have a very skillful doctor."
			dialog "You can find her office at ^CE6300+^000000."
			wait()
			dialog "[Representative]"
			dialog "It is said that there"
			dialog "is no disease she cannot cure. Well, I can't guarantee if that's true or not."
			if compass_check == 1 then
				compass(3,263,94,1,"0xFFCE6300")
			else
				compass(3,263,94,0,"0xFFCE6300")
			end
		elseif mresultb == 3 then
			dialog "[Representative]"
			dialog "We have a City Hall where the federal government operates."
			dialog "It is located at ^A5BAAD+^000000."
			wait()
			dialog "[Representative]"
			dialog "If you have any problems,"
			dialog "you should talk with the"
			dialog "employees in City Hall."
			if compass_check == 1 then
				compass(4,309,80,1,"0xFF00FF00")
			else
				compass(4,309,80,0,"0xFF00FF00")
			end
		elseif mresultb == 4 then
			dialog "[Representative]"
			dialog "The Weapon Shop is located at ^55FF33+^000000."
			wait()
			dialog "[Representative]"
			dialog "You will see"
			dialog "marvelous weapons forged"
			dialog "by the well-experienced"
			dialog "blacksmiths of Louyang."
			if compass_check == 1 then
				compass(5,145,174,1,"0xFF55FF33")
			else
				compass(5,145,174,0,"0xFF55FF33")
			end
		elseif mresultb == 5 then
			dialog "[Representative]"
			dialog "The Tool Shop is located at ^3355FF+^000000."
			wait()
			dialog "[Representative]"
			dialog "Knowing your enemy"
			dialog "is half the battle!"
			dialog "It's also safer to prepare yourself than to be sorry later. Why don't you go check their supplies?"
			if compass_check == 1 then
				compass(6,135,98,1,"0xFF3355FF")
			else
				compass(6,135,98,0,"0xFF3355FF")
			end
		elseif mresultb == 6 then
			dialog "[Representative]"
			dialog "When you get tired during your trip, I suggest that you visit the Tavern. It's located at ^00FF00+^000000."
			wait()
			dialog "[Soldier]"
			dialog "The Tavern is a good place"
			dialog "to meet other tourists, as well as to hear of any news that may be helpful to know."
			if compass_check == 1 then
				compass(7,280,167,1,"0xFF00FF00")
			else
				compass(7,280,167,0,"0xFF00FF00")
			end
		elseif mresultb == 7 then
			dialog "[Representative]"
			dialog "If you wish to remove all marks"
			dialog "on your mini-map, please choose 'Remove all marks from mini-map.' from the menu."
			close()
		end
		close()
	elseif mresulta == 2 then
		compass(2,218,255,2,"0xFF00FF00")
		compass(3,263,94,2,"0xFF00FF00")
		compass(4,309,80,2,"0xFF00FF00")
		compass(5,145,174,2,"0xFF00FF00")
		compass(6,135,98,2,"0xFF00FF00")
		compass(7,280,167,2,"0xFF00FF00")
		compass_check("=",0)
		dialog "[Representative]"
		dialog "Done! All the marks on your mini-map are erased. Feel free to ask me about building locations whenever you need to."
		close()
	elseif mresulta == 3 then
		dialog "[Representative]"
		dialog "I understand that you want to explore Louyang and see the"
		dialog "sights for yourself. Alright then, take care!"
		close()
	end
	close()
end
