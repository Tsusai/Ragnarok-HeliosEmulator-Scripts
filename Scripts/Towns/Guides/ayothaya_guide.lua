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

npc("ayothaya","Noi",SPRITE_4_F_THAIGIRL,203,169,3,0,0,"ayothaya_Noi_203169")
function ayothaya_Noi_203169()
	dialog "[Noi]"
	dialog "Welcome to Ayotaya."
	dialog "Our beautiful village is built"
	dialog "above the water, surrounded"
	dialog "by a dense forest."
	wait()
	dialog "[Noi]"
	dialog "There are many tourist attractions in this village that you won't be able to find anywhere else. Our fish markets and the the unique architecture of our buildings is enough reason to visit Ayotaya."
	wait()
	dialog "[Noi]"
	dialog "Please feel free"
	dialog "to take a look around."
	wait()
	local mresulta = menu("Building Locations.","Remove marks from mini-map.","Cancel.")
	if mresulta == 1 then
		local compass_check
		dialog "[Noi]"
		dialog "Where would"
		dialog "you like to visit?"
		wait()
		local mresultb = menu("Weapon Shop","Tool Shop","Tavern","Shrine","Fishing Spot","Cancel")
		if mresultb == 1 then
			dialog "[Noi]"
			dialog "At our Weapon Shop,"
			dialog "you will find great weapons"
			dialog "favored by brave Ayotayan seafarers."
			wait()
			dialog "[Noi]"
			dialog "Our Weapon Shop"
			dialog "is located at ^55FF33+^000000."

			if (getvar(compass_check) == 1) then
				compass(2,165,90,1,"0xFF55FF33")
			else
				compass(2,165,90,0,"0xFF55FF33")
			end
		elseif mresultb == 2 then
			dialog "[Noi]"
			dialog "We Ayotayans always make sure we have everything we need before we go traveling. It never hurts to be prepared, doesn't it?"
			wait()
			dialog "[Noi]"
			dialog "Our Tool Shop"
			dialog "is located at ^3355FF+^000000."
			if (getvar(compass_check) == 1) then
				compass(3,129,86,1,"0xFF3355FF")
			else
				compass(3,129,86,0,"0xFF3355FF")
			end
		elseif mresultb == 3 then
			dialog "[Noi]"
			dialog "One of the basics of adventuring is gathering information, or at least that's what they say. You can meet people from all sorts of places in the Tavern. I'm sure you can learn something useful there."
			wait()
			dialog "[Noi]"
			dialog "Of course, you must"
			dialog "drop by our Tavern."
			dialog "It is located at ^00FF00+^000000."
			if (getvar(compass_check) == 1) then
				compass(4,232,76,1,"0xFF00FF00")
			else
				compass(4,232,76,0,"0xFF00FF00")
			end
		elseif mresultb == 4 then
			dialog "[Noi]"
			dialog "If you wish to pray to God, or achieve a state of peace in your mind, why don't you visit our Shrine? Even if it's just for sight-seeing, everyone is"
			dialog "welcome there."
			wait()
			dialog "[Noi]"
			dialog "Our Shrine"
			dialog "is located at ^00FF00+^000000."
			if (getvar(compass_check) == 1) then
				compass(5,208,283,1,"0xFF00FF00")
			else
				compass(5,208,283,0,"0xFF00FF00")
			end
		elseif mresultb == 5 then
			dialog "[Noi]"
			dialog "Since Ayothaya was built above the surface of the water and close to a beach, it's been a favorite spot for fishermen. Why don't you catch some fish for dinner at the Fishing Spot?"
			wait()
			dialog "[Noi]"
			dialog "Our famous"
			dialog "Fishing Spot"
			dialog "is located at ^00FF00+^000000"
			if (getvar(compass_check) == 1) then
				compass(6,253,99,1,"0xFF00FF00")
			else
				compass(6,253,99,0,"0xFF00FF00")
			end
		elseif mresultb == 6 then
			dialog "[Noi]"
			dialog "If you wish to remove location marks on your mini-map, please select the 'Remove marks from mini-map' command from the menu."
			close()
		end
		close()
	elseif mresulta == 2 then
		compass(2,165,90,2,"0xFF00FF00")
		compass(3,129,86,2,"0xFF00FF00")
		compass(4,232,76,2,"0xFF00FF00")
		compass(5,208,283,2,"0xFF00FF00")
		compass(6,253,99,2,"0xFF00FF00")
		compass_check("=",0)
		dialog "[Noi]"
		dialog "Alright..."
		dialog "I've removed all the"
		dialog "location marks from"
		dialog "your mini-map."
		dialog "Thank you."
		close()
	elseif mresulta == 3 then
		dialog "[Noi]"
		dialog "Please enjoy"
		dialog "your travels."
		close()
	end
	close()
end
