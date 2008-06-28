-- _________________________________________________ --
--/                                                 \--
--|     _    _          _   _                       |--
--|    | |  | |        | | (_)                      |--
--|    | |__| |   ___  | |  _    ___    ___         |--
--|    |  __  |  / _ \ | | | |  / _ \  / __|        |--
--|    | |  | | |  __/ | | | | | (_) | \__ \        |--
--|    |_|  |_|  \___| |_| |_|  \___/  |___/        |--
--|                                                 |--
--|-------------------------------------------------|--
--| 28/06/2008                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("prontera","Hypnotist_2",SPRITE_4_F_TELEPORTER,146,232,4,0,0,"prontera_Hypnotist_2_146232")
function prontera_Hypnotist_2_146232()
	dialog "[Hypnotist]"
	dialog "Greetings, adventurer."
	dialog "I'm a member of the Hypnotist"
	dialog "Academy sent here to Prontera"
	dialog "to provide Skill Reset services"
	dialog "to certain First Class characters for a really good price: free!"
	wait()
	dialog "[Hypnotist]"
	dialog "Although I offer unlimited"
	dialog "skill resets for now, I have"
	dialog "two conditions that must be"
	dialog "fulfilled. First, you must be"
	dialog "lower than ^FF0000Base Level 40^000000."
	wait()
	dialog "[Hypnotist]"
	dialog "Second, you must be a"
	dialog "^FF0000Swordman, Acolyte, Mage,"
	dialog "Thief, Archer, Merchant,"
	dialog "Taekwon Boy, Taekwon Girl, Gunslinger and Ninja^000000"
	dialog "Job character to qualify."
	dialog "Now, do you have any questions?"
	local mresulta = menu("Skill Reset?","I want a Skill Reset","Nothing")
	if mresulta == 1 then
		dialog "[Hypnotist]"
		dialog "Skill Resets allow adventuers"
		dialog "to redistribute their Skill"
		dialog "Points if they are unhappy"
		dialog "with their current skills."
		wait()
		dialog "[Hypnotist]"
		dialog "Before proceeding with"
		dialog "a Skill Reset, you must"
		dialog "reduce all of the weight"
		dialog "of all carried items on your"
		dialog "character to 0. You can put"
		dialog "extra items in Kafra Storage."
		wait()
		dialog "[Hypnotist]"
		dialog "Ah, it's also important"
		dialog "to remove your ^FF0000Pushcart^000000"
		dialog "if you have one equipped."
		dialog "Otherwise, hypnosis won't"
		dialog "work, or will backfire..."
		close()
	elseif mresulta == 2 then
		dialog "[Hypnotist]"
		dialog "Are you sure that you"
		dialog "want to proceed with"
		dialog "my ^FF0000Skill Reset^000000 service?"
		wait()
		local mresultb = menu("Yes","Cancel")
		if mresultb == 1 then
			if (getvar(VAR_CLEVEL) > 40) then
				dialog "[Hypnotist]"
				dialog "I'm sorry, but characters"
				dialog "with Base Levels higher"
				dialog "than 40 are ineligible for the"
				dialog "Skill Reset service I provide."
				close()
				return
			else
				if ((getvar(VAR_JOB) == SWORDMAN) or (getvar(VAR_JOB) == ARCHER) or (getvar(VAR_JOB) == ACOLYTE) or (getvar(VAR_JOB) == THIEF) or (getvar(VAR_JOB) == MAGICIAN) or (getvar(VAR_JOB) == MERCHANT) or (getvar(VAR_JOB) == TAEKWON) or (getvar(VAR_JOB) == GUNSLINGER) or (getvar(VAR_JOB) == NINJA)) then
					if (getvar(VAR_ISCARTON) == 1) then
						dialog "[Hypnotist]"
						dialog "Oh! Please remove your"
						dialog "Pushcart before proceeding"
						dialog "with the Skill Reset service."
						dialog "Thanks for cooperating~"
						close()
						return
					else
						if (getvar(VAR_WEIGHT) > 0) then
							dialog "[Hypnotist]"
							dialog "If you're here for my Skill"
							dialog "Reset service, please"
							dialog "remember that you can't"
							dialog "reset your skills until the"
							dialog "^FF0000weight of your carried items in"
							dialog "your Inventory is reduced to 0^000000."
							wait()
							dialog "[Hypnotist]"
							dialog "Why don't you place your"
							dialog "things into the Kafra Storage"
							dialog "for now? That way, you can"
							dialog "safely keep all of your goods."
							close()
							return
						else
							dialog "[Hypnotist]"
							dialog "Thank you for using"
							dialog "my Skill Redistribution"
							dialog "services. Oh, and best"
							dialog "of luck to you on your"
							dialog "travels, adventurer."
							ResetSkill()
							close()
							return
						end
					end
				else
					dialog "[Hypnotist]"
					dialog "I'm sorry, but your"
					dialog "Job Class doesn't qualify"
					dialog "for the Skill Reset service"
					dialog "that I provide. I can only"
					dialog "offer Skill Resets to the"
					dialog "following Jobs..."
					wait()
					dialog "[Hypnotist]"
					dialog "^FF0000Swordman, Acolyte,"
					dialog "Mage, Thief, Archer,"
					dialog "Merchant, Taekwon"
					dialog "Boy, Taekwon Girl, Gunslinger and Ninja^000000."
					close()
				end
			end
		elseif mresultb == 2 then
			dialog "[Hypnotist]"
			dialog "Thank you, and good"
			dialog "luck on your adventures."
			dialog "Please travel in safety~"
			close()
		end
	elseif mresulta == 3 then
		dialog "[Hypnotist]"
		dialog "Thank you, and good"
		dialog "luck on your adventures."
		dialog "Please travel in safety~"
		close()
	end
end
