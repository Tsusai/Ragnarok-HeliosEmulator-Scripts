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
--| 28/09/2008                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("geffen_in","Mage Guildsman",spr_2_F_MAGICMASTER,164,124,4,0,0,"geffen_in_Mage_Guildsman_164124")
function geffen_in_Mage_Guildsman_164124()
	local name = PcName()
	if getvar(job_karma) < 0 then
		if ((getvar(job_karma) == 3) or (getvar(job_karma) == 9)) then
			if getvar(VAR_JOB) == NOVICE_H then
				dialog "[Mage Guildsman]"
				dialog "Whoa, long time no see! But weren't you supposed to be dead?"
				wait()
				dialog "[Mage Guildsman]"
				dialog "Ah, you must have been reborn. Well, I'm glad to have you back."
				wait()
				if getvar(VAR_NV_BASIC) < 9 then
					dialog "[Mage Guildsman]"
					dialog "I'm sorry, but I don't think you're ready to learn magic yet. Why don't you go finish learning the Basic Skills first?"
					wait()
					dialog "[Mage Guildsman]"
					dialog "Take your time. The more you learn, the more ready you'll be to learn magic again."
					close()
					return
				end
				dialog "[Mage Guildsman]"
				dialog "Well, since you have passed the Mage test once, I will not question your qualification. You want to have your magic skills back immediately, don't you?"
				wait()
				--EventDelSkill NV_TRICKDEAD
				jobchange(2 )
				--EventAddSkill("MG_ENERGYCOAT",1)
				dialog "[Mage Guildsman]"
				dialog "Wow, for some reason, you look way better than you did before. Anyway, I believe you will do a better job being a Mage as well."
				close()
				return
			else
				dialog "[Mage Guildsman]"
				dialog "Is there anything more I can help you with? If not, why don't you go test your skills? The world is waiting for you~!"
				close()
				return
			end
		else
			dialog "[Mage Guildsman]"
			dialog "What, are you interested in the Mage guild? I didn't want to tell you this, but you don't belong here."
			wait()
			dialog "[Mage Guildsman]"
			dialog "I am not sure why you're still standing in front of me, but I can tell that you're not meant to be a Mage."
			close()
			return
		end
	end
	dialog "[Mage Guildsman]"
	dialog "Yo. What's up?"
	wait()
	local mresulta = menu("I want to be a Mage.","Tell me the Requirements.","Pretty much nothing.")
	if mresulta == 1 then
		dialog "[Mage Guildsman]"
		if getvar(VAR_JOB) == MAGICIAN then
			dialog "Hey, haven't you realized? You're aleady a Mage, silly!"
			wait()
			dialog "[Mage Guildsman]"
			dialog "One of these days you'll realize the power inside of you when you can make Fire with your mind!"
			close()
			return
		end
		if getvar(VAR_JOB) < NOVICE then
			dialog "Hey~ C'mon. Quit playing games. You can't be a Mage because you already have another Job."
			close()
			return
		end
		if getvar(job_magician_q) == 0 then
			dialog "Wanna be a Mage, eh...?"
			if getvar(VAR_SEX) == 1 then
				dialog "Hey, look at you! You're kinda cute~! Not my type though..."
			else
				dialog "Oooh, you're such a hot babe~!"
				dialog "I like girls like you~"
			end
			wait()
			dialog "[Mage Guildsman]"
			dialog "Right, you said that you wanna be a Mage? Alright then, please sign the Mage Application."
			wait()
			local mresultb = menu("Sign Up.","Quit.")
			if mresultb == 1 then
				dialog "[Mage Guildsman]"
				dialog("Okay. Sign right there. Oh, you're very good at spelling. Alright. So your name is... ","+","name","+",".")
				wait()
				dialog "[Mage Guildsman]"
				dialog "Now it's time for"
				dialog "me to give you the test."
				local exam = math.random(1,4)
				if exam == 1 then
					dialog "Make me a ^3355FFMixed Solution No. 1^000000"
					dialog "and bring it back to me."
					setitem("job_magician_q",1)
				elseif exam == 2 then
					dialog "Make me a ^3355FFMixed Solution No. 2^000000"
					dialog "and bring it back to me."
					setitem("job_magician_q",2)
				elseif exam == 3 then
					dialog "Make me a ^3355FFMixed Solution No. 3^000000"
					dialog "and bring it back to me."
					setitem("job_magician_q",3)
				else
					dialog "Make me a ^3355FFMixed Solution No. 4^000000"
					dialog "and bring it back to me."
					setitem("job_magician_q",4)
				end
				wait()
				getitem("Empty_Cylinder",1)
				dialog "[Mage Guildsman]"
				dialog "You can find the neccessary ingredients inside the Guide Book in this Guild. So you better look up what you need before you go."
				wait()
				dialog "[Mage Guildsman]"
				dialog "Once you collect all the ingredients you, use the machine in the center of the room to mix the solution. Good luck!"
				close()
				return
			elseif mresultb == 2 then
				dialog "[Mage Guildsman]"
				dialog "Whaaaaat~?! Right after you tell me that you wanna become a Mage, you change your mind?! Be a bit more decisive!"
				close()
				return
			end
		end
		dialog "Yeah? Ready...?"
		if getvar(VAR_NV_BASIC) < 9 then
			dialog "Oh, what a bummer. You haven't met the requirements yet."
			wait()
			dialog "[Mage Guildman]"
			dialog "Go back and reach Novice Job level 9 first. Don't forget that you also have to learn all of the Basic Skills before you come back."
			close()
			return
		end
		--dialog(,"+","name","+","'s test was...")
		if getvar(job_magician_q) == 1 then
			dialog "Making Mixed Solution No. 1."
		elseif getvar(job_magician_q) == 2 then
			dialog "Making Mixed Solution No. 2."
		elseif getvar(job_magician_q) == 3 then
			dialog "Making Mixed Solution No. 3."
		else
			dialog "Making Mixed Solution No. 4."
		end
		wait()
		dialog "[Mage Guildsman]"
		dialog "Okay, let me"
		dialog "check if you made your"
		dialog "solution accurately..."
		wait()
		dialog "[Mage Guildsman]"
		if ((getvar(Mage_Test_1) == 0) and (getvar(Mage_Test_2) == 0) and (getvar(Mage_Test_3) == 0) and (getvar(Mage_Test_4) == 0) and (getvar(Mage_Test_Etc) == 0)) then
			dialog "Hey, where's the Solution"
			dialog "I asked for...? I can't check it if you don't show it to me, right?"
			close()
			return
		else
			if (((getvar(job_magician_q) == 1) and (getvar(Mage_Test_1) == 0)) or ((getvar(job_magician_q) == 2) and (getvar(Mage_Test_2) == 0)) or ((getvar(job_magician_q) == 3) and (getvar(Mage_Test_3) == 0)) or ((getvar(job_magician_q) == 4) and (getvar(Mage_Test_4) == 0))) then
				dialog "Wait."
				dialog "This isn't the"
				dialog "Solution I asked for!"
				wait()
				dialog "[Mage Guildsman]"
				if getvar(job_magician_q) == 1 then
					dialog "You're supposed to make Mixed Solution No. 1 and bring it back to me. Now go and try it again."
				elseif getvar(job_magician_q) == 2 then
					dialog "You're supposed to make Mixed Solution No. 2 and bring it back to me. Now go and try it again."
				elseif getvar(job_magician_q) == 3 then
					dialog "You're supposed to make Mixed Solution No. 3 and bring it back to me. Now go and try it again."
				else
					dialog "You're supposed to make Mixed Solution No. 4 and bring it back to me. Now go and try it again."
				end
				if getvar(Mage_Test_1) < 0 then
					dropitem("Mage_Test_1",1)
				elseif getvar(Mage_Test_2) < 0 then
					dropitem("Mage_Test_2",1)
				elseif getvar(Mage_Test_3) < 0 then
					dropitem("Mage_Test_3",1)
				elseif getvar(Mage_Test_4) < 0 then
					dropitem("Mage_Test_4",1)
				else
					dropitem("Mage_Test_Etc",1)
				end
				close()
				return
			end
		end
		if getvar(Mage_Test_1) < 0 then
			dropitem("Mage_Test_1",1)
		elseif getvar(Mage_Test_2) < 0 then
			dropitem("Mage_Test_2",1)
		elseif getvar(Mage_Test_3) < 0 then
			dropitem("Mage_Test_3",1)
		elseif getvar(Mage_Test_4) < 0 then
			dropitem("Mage_Test_4",1)
		else
			dropitem("Mage_Test_Etc",1)
		end
		dialog "Hmm. I can see that you tried really hard. For a beginner's attempt, this is really good."
		dialog "Great work!"
		wait()
		dialog "[Mage Guildsman]"
		dialog "Alright! I'm pleased to say that you've passed the Mage Test. I will transform you right away!"
		wait()
		dialog "[Mage Guildsman]"
		dialog "*Ahem*"
		dialog "Congratulations!"
		dialog "You are now a Mage!"
		wait()
		jobchange(2)
		getgold(50)
		dialog "[Mage Guildsman]"
		dialog "'Welcome to My World~'"
		dialog "Heh heh, I just wanted to say that. You know, it's a quote from a well-known movie~"
		wait()
		dialog "[Mage Guildsman]"
		dialog "Now that you're a Mage just like us, let's be friends, okay?"
		close()
	elseif mresulta == 2 then
		dialog "[Mage Guildsman]"
		dialog "Wanna be a Mage, eh?"
		if getvar(VAR_SEX) == 1 then
			dialog "For a cutie like you, I'd be happy to explain the requirements!"
		else
			dialog "I'd be happy to explain the requirements for a pretty girl like you!"
		end
		wait()
		dialog "[Mage Guildsman]"
		dialog "First of all, you have to reach Novice Job Level 10 and learn all of the Basic Skills. Then, you'll have to pass the Mage Test."
		wait()
		if getvar(job_magician_q) < 0 then
			dialog "[Mage Guildsman]"
			dialog "Your test is to"
			if getvar(job_magician_q) == 1 then
				dialog "make me a"
				dialog "^3355FFMixed Solution No. 1^000000"
				dialog "and bring it back to me."
			elseif getvar(job_magician_q) == 2 then
				dialog "make me a"
				dialog "^3355FFMixed Solution No. 2^000000"
				dialog "and bring it back to me."
			elseif getvar(job_magician_q) == 3 then
				dialog "make me a"
				dialog "^3355FFMixed Solution No. 3^000000"
				dialog "and bring it back to me."
			else
				dialog "make me a"
				dialog "^3355FFMixed Solution No. 4^000000"
				dialog "and bring it back to me."
			end
			wait()
			dialog "[Mage Guildsman]"
			dialog "You can look up the ingredients you'll need to make the Solution inside the Guide Book in this Guild."
		else
			dialog "[Mage Guildsman]"
			dialog "You will be informed as to which Mixed Solution you will need to create after signing the application form."
		end
		wait()
		dialog "[Mage Guildsman]"
		dialog "Let me know when you are ready to become a Mage, alright?"
		close()
	elseif mresulta == 3 then
		dialog "[Mage Guildsman]"
		dialog "Nothing...?"
		close()
	end
end

npc("geffen_in","Mixing Machine",spr_HIDDEN_NPC,164,112,4,0,0,"geffen_in_Mixing_Machine_164112")
function geffen_in_Mixing_Machine_164112()
	local progress -- Progress Check
	local mixitem1_1 -- Jellopy Check
	local mixitem1_2 -- Fluff Check
	local mixitem1_3 -- Milk Check
	local mixitem2 -- 1 - Payon Solution Check, 2 - Morocc Solution Check
	local mixitem3 -- 1 - Yellow Gemstone Check, 2 - Red Gemstone Check, 3 -Blue Gemstone Check , 4 - 1carat Diamond Check
	local select_mixitem1 -- Item Class Check
	local magic_powder -- the Serial Numbers of Magic Powder
	local endline -- while Cancel
	dialog "[Mixing Machine]"
	dialog "This machine is the property of the Geffen Mage Guild and is used only for mixing solutions for magic purposes."
	wait()
	local mresulta = menu("Use Machine.","Cancel.")
	if mresulta == 1 then
		dialog "[Mixing Machine]"
		dialog "Choose the"
		dialog "Solvent for"
		dialog "the Solution."
		wait()
		local mresultb = menu("Payon Solution.","Morroc Solution.","No Solvent.")
		if mresultb == 1 then
			if getvar(Payon_Potion) == 0 then
				dialog "[Mixing Machine]"
				dialog "Error."
				dialog "Cannot find the item."
				dialog "Please check again."
				dialog "Process Halting."
				close()
				return
			end
			mixitem2("=",1)
		elseif mresultb == 2 then
			if getvar(Morocc_Potion) == 0 then
				dialog "[Mixing Machine]"
				dialog "Error."
				dialog "Cannot find the item."
				dialog "Please check again."
				dialog "Process Halting."
				close()
				return
			end
			mixitem2("=",2)
		elseif mresultb == 3 then
			mixitem2("=",0)
		end
		while(1) do -- while [1] do
			if progress == 2 then -- if [1] then
				dialog "[Mixing Machine]"
				if mixitem1_1 < 0 then
					dialog("Jellopy: ","+","mixitem1_1","+"," ea.")
				end
				if mixitem1_2 < 0 then
					dialog("Fluff: ","+","mixitem1_2","+"," ea.")
				end
				if mixitem1_3 < 0 then
					dialog("Milk: ","+","mixitem1_3","+"," ea.")
				end
				if mixitem2 == 0 then
					dialog "Solvent: None."
				end
				if mixitem2 == 1 then
					dialog "Solvent: Payon Solution."
				end
				if mixitem2 == 2 then
					dialog "Solvent: Morroc Solution."
				end
				wait()
				dialog "[Mixing Machine]"
				dialog "Please choose if you wish to begin mixing, or to re-enter the number of items to be mixed."
				wait()
				local mresultb = menu("Begin Mixing.","Re-Enter Number of Items.","Reset.")
				if mresultb == 1 then
					dialog "[Mixing Machine]"
					dialog "Please place the items into the Mixing Receptacle. Make sure the item amounts are correct."
					wait()
					dialog "[Mixing Machine]"
					dialog "You cannot adjust or restore items once they are placed into the Mixing Receptacle."
					wait()
					dialog "[Mixing Machine]"
					dialog "If everything is correct, press the 'Mix' button when you are ready. Otherwise, press the 'Cancel' button."
					wait()
					local mresultc = menu("Press 'Mix' Button.","Press 'Cancel' Button.")
					if mresultc == 1 then
						dialog "[Mixing Machine]"
						dialog "Place items into the Mixing Receptacle now. Please wait."
						wait()
						dialog "[Mixing Machine]"
						if getvar(Jellopy) < mixitem1_1 then
							dialog "Insufficient Jellopy."
							dialog "Please Check again."
							dialog "Process Halted."
							close()
							return
						elseif getvar(Fluff) < mixitem1_2 then
							dialog "Insufficient Fluff."
							dialog "Please Check again."
							dialog "Process Halted."
							close()
							return
						elseif getvar(Milk) < mixitem1_3 then
							dialog "Insufficient Milk."
							dialog "Please Check again."
							dialog "Process Halted."
							close()
							return
						elseif (mixitem2 == 1 or mixitem2 == 2) then
							if (getvar(Payon_Potion) == 0 and getvar(Morocc_Potion) == 0) then
								dialog "Solution not found."
								dialog "Please Check again."
								dialog "Process Halted."
								close()
								return
							end
						end
						if mixitem1_1 < 0 then
							dropitem("Jellopy","mixitem1_1")
						end
						if mixitem1_2 < 0 then
							dropitem("Fluff","mixitem1_2")
						end
						if mixitem1_3 < 0 then
							dropitem("Milk","mixitem1_3")
						end
						if mixitem2 == 1 then
							dropitem("Payon_Potion",1)
						end
						if mixitem2 == 2 then
							dropitem("Morocc_Potion",1)
						end
						dialog "Items are Ready."
						dialog "Close the Lid."
						wait()
						break
					elseif mresultc == 2 then
					end
				elseif mresultb == 2 then
				elseif mresultb == 3 then
					mixitem1_1("=",0)
					mixitem1_2("=",0)
					mixitem1_3("=",0)
					dialog "[Mixing Machine]"
					dialog "Reset Complete."
					dialog "Initiate again?"
					wait()
					local mresultc = menu("Yes.","No.")
					if mresultc == 1 then
					elseif mresultc == 2 then
						endline("=",1)
						dialog "[Mixing Machine]"
						dialog "Process Halted."
						dialog "Thank you."
						close()
						break
					end
				end
			elseif progress == 1 then
				dialog "[Mixing Machine]"
				dialog "Nothing found."
				wait()
			else
				-- Skip without any condition.
			--endif("//","if","[1]")
			dialog "[Mixing Machine]"
			dialog "Select items to mix."
			while(1) do --/ while [2] do
				local mresultb = menu("Jellopy.","Fluff.","Milk.","Ready to Mix.")
				if mresultb == 1 then
					select_mixitem1("=",1)
				elseif mresultb == 2 then
					select_mixitem1("=",2)
				elseif mresultb == 3 then
					select_mixitem1("=",3)
				elseif mresultb == 4 then
					if progress < 2 then -- if [2] then
						progress("=",1)
					endif("//","if","[2]")
					wait()
					break
				end
				while(1) do --// while [3] do
					dlgwrite(0,10000)
					if error then --// if [3] then
						wait()
						dialog "[Mixing Machine]"
						dialog "Error: Item limit exceeded. Please enter values less than 10,000 try again."
						wait()
					else
						if select_mixitem1 == 1 then -- if [6] then
							if getvar(Jellopy) < 0 then
								mixitem1_1("=","mixitem1_1","+","input")
							end
						elseif select_mixitem1 == 2 then
							if getvar(Fluff) < 0 then
								mixitem1_2("=","mixitem1_2","+","input")
							end
						elseif select_mixitem1 == 3 then
							if getvar(Milk) < 0 then
								mixitem1_3("=","mixitem1_3","+","input")
							end
						--endif("//","if","[6]")
						progress("=",2)
						break
					--endif("//","if","[4]")
				end --// while [3]
			end --// while [2]
		end --// while [1]
		if endline == 1 then
			return
		end
		dialog "[Mixing Machine]"
		dialog "Please enter the "
		dialog "Serial Number of"
		dialog "the Magic Powder."
		wait()
		while(1) do --// while [3] do
			dlgwrite(1000,9999)
			if error then --// if [3] then
				dialog "[Mixing Machine]"
				if input == 0 then
					dialog "Do you want to skip this Menu?"
					wait()
					local mresultb = menu("Yes.","No.")
					if mresultb == 1 then
						break
					elseif mresultb == 2 then
					end
				else
					dialog "Invalid Serial Number."
					dialog "Please try again."
					wait()
				end
			else
				dialog "[Mixing Machine]"
				dialog("The Serial Number is #","+","input","+",", correct?")
				wait()
				local mresultb = menu("Confirm.","Cancel.")
				if mresultb == 1 then
					if input == 8472 then
						magic_powder("=",1)
					elseif input == 3735 then
						magic_powder("=",2)
					elseif input == 2750 then
						magic_powder("=",3)
					elseif input == 5429 then
						magic_powder("=",4)
					else
						magic_powder("=",5)
					end
					break
				elseif mresultb == 2 then
				end
			end
		end
		dialog "[Mixing Machine]"
		dialog "Choose a"
		dialog "Catalyst Stone."
		wait()
		local mresultb = menu("Yellow Gemstone.","Red Gemstone.","Blue Gemstone.","1carat Diamond.","Skip.")
		if mresultb == 1 then
			mixitem3("=",1)
		elseif mresultb == 2 then
			mixitem3("=",2)
		elseif mresultb == 3 then
			mixitem3("=",3)
		elseif mresultb == 4 then
			mixitem3("=",4)
		elseif mresultb == 5 then
		end
		dialog "[Mixing Machine]"
		dialog "All Set."
		dialog "Initiating"
		dialog "Mixing process."
		dialog "Please Wait."
		wait()
		dialog "[Mixing Machine]"
		dialog "- Proverb of the Day -"
		local proverb = math.random(1,5)
		if proverb == 1 then
			dialog "An Eye for an Eye: When you take from a person, you must replace or repay in some way."
		elseif proverb == 2 then
			dialog "Credibility is a Man's Currency: There's a value in genuine trust that cannot be measured."
		elseif proverb == 3 then
			dialog "What Goes Around Comes Around: Ultimately, you will be treated in the way you treat others."
			dialog "It means 'When you harm Another you will be harmed by him in an unavoidable situation'."
		elseif proverb == 4 then
			dialog "A good neighbor is better than a distant brother: When you need help, you can count on those close to you."
		else
			dialog "Birds of a Feather Flock Together: You can look at a person's friends as an indicator of their character."
		end
		wait()
		if ((mixitem1_1 == 2) and (mixitem1_2 == 3) and (mixitem1_3 == 1) and (mixitem2 == 1) and (mixitem3 == 1) and (magic_powder == 1)) then
			dialog "[Mixing Machine]"
			dialog "Mage Test Solution No. 1."
			getitem("Mage_Test_1",1)
			wait()
		elseif ((mixitem1_1 == 3) and (mixitem1_2 == 1) and (mixitem1_3 == 1) and (mixitem2 == 0) and (mixitem3 == 2) and (magic_powder == 2)) then
			dialog "[Mixing Machine]"
			dialog "Mage Test Solution No. 2."
			getitem("Mage_Test_2",1)
			wait()
		elseif ((mixitem1_1 == 6) and (mixitem1_2 == 1) and (mixitem1_3 == 0) and (mixitem2 == 1) and (mixitem3 == 3) and (magic_powder == 3)) then
			dialog "[Mixing Machine]"
			dialog "Mage Test Solution No. 3."
			getitem("Mage_Test_3",1)
			wait()
		elseif ((mixitem1_1 == 2) and (mixitem1_2 == 3) and (mixitem1_3 == 0) and (mixitem2 == 2) and (mixitem3 == 4) and (magic_powder == 4)) then
			dialog "[Mixing Machine]"
			dialog "Mage Test Solution No. 4."
			getitem("Mage_Test_4",1)
			wait()
		else
			dialog "[Mixing Machine]"
			dialog "Unexpected"
			dialog "Error Occurred."
			getitem("Mage_Test_Etc",1)
			wait()
		end
		dialog "[Mixing Machine]"
		dialog "Mixing Complete."
		dialog "Thank you."
		close()
	elseif mresulta == 2 then
	end
end

npc("pay_arche","Dollshoi",spr_4_M_ORIENT01,122,100,0,0,0,"pay_arche_Dollshoi_122100")
function pay_arche_Dollshoi_122100()
	dialog "[Mage Guildsman]"
	dialog "You want a Solution? Hmm, give me 50 Zeny and at least 1 Empty Test Tube."
	wait()
	local mresulta = menu("Alright, Deal.","Nah, forget it.")
	if mresulta == 1 then
		dialog "[Mage Guildsman]"
		if getvar(VAR_MONEY) < 50 then
			dialog "Hey! You don't have enough money to cover my 50 Zeny charge."
			close()
			return
		end
		if getvar(Empty_Cylinder) == 0 then
			dialog "You can't carry solutions without a bottle! Bring me an Empty Test Tube."
			close()
			return
		end
		dropitem("Empty_Cylinder",1)
		dropgold(50)
		getitem("Payon_Potion",1)
	elseif mresulta == 2 then
	end
end

npc("moc_ruins","PonkaHontas",spr_4_F_04,91,150,0,0,0,"moc_ruins_PonkaHontas_91150")
function moc_ruins_PonkaHontas_91150()
	dialog "[Mage Guildsman]"
	dialog "Would you like a Solution? Then please give me 50 Zeny and at least 1 Empty Testtube."
	wait()
	local mresulta = menu("Alright, Deal.","Nah, forget it.")
	if mresulta == 1 then
		dialog "[Mage Guildsman]"
		if getvar(VAR_MONEY) < 50 then
			dialog "I'm sorry, but you don't have enough money to cover the 50 Zeny fee."
			close()
			return
		end
		if getvar(Empty_Cylinder) == 0 then
			dialog "You can't carry liquids without using a bottle. Bring an Empty Test Tube the next time you see me."
			close()
			return
		end
		dropitem("Empty_Cylinder",1)
		dropgold(50)
		getitem("Morocc_Potion",1)
	elseif mresulta == 2 then
	end
end

npc("geffen_in","Bookshelf",spr_HIDDEN_NPC,177,112,4,0,0,"geffen_in_Bookshelf_177112")
function geffen_in_Bookshelf_177112()
	dialog "[Guide Book]"
	dialog "This Guide Book is the property of the Geffen Mage Association. Please handle with care."
	wait()
	local mresulta = menu("Solution No. 1.","Solution No. 2.","Solution No. 3.","Solution No. 4.","Close.")
	if mresulta == 1 then
		dialog "[Mage Test Solution No. 1]"
		dialog "* Ingredients List *"
		dialog "2 Jellopy"
		dialog "3 Fluff"
		dialog "1 Milk"
		wait()
		dialog "[Mage Test Solution No. 1]"
		dialog "* Solvent Agent *"
		dialog "Payon Solution"
		dialog "Where to Find:"
		dialog "A small spring in Payon, the Archer Village."
		wait()
		dialog "[Mage Test Solution No. 1]"
		dialog "* Magic Power Serial Code *"
		dialog(8472)
		wait()
		dialog "[Mage Test Solution No. 1]"
		dialog "* Catalyst *"
		dialog "Yellow Gemstone"
		dialog "(Provided by"
		dialog "Mixing Machine)"
		close()
	elseif mresulta == 2 then
		dialog "[Mage Test Solution No. 2]"
		dialog "* Ingredients List *"
		dialog "3 Jellopy"
		dialog "1 Fluff"
		dialog "1 Milk"
		wait()
		dialog "[Mage Test Solution No. 2]"
		dialog "* Solvent Agent *"
		dialog "None"
		wait()
		dialog "[Mage Test Solution No. 2]"
		dialog "* Magic Power Serial Code *"
		dialog(3735)
		wait()
		dialog "[Mage Test Solution No. 2]"
		dialog "* Catalyst *"
		dialog "Red Gemstone"
		dialog "(Provided by"
		dialog "Mixing Machine)"
		close()
	elseif mresulta == 3 then
		dialog "[Mage Test Solution No. 3]"
		dialog "* Ingredients List *"
		dialog "6 Jellopy"
		dialog "1 Fluff"
		wait()
		dialog "[Mage Test Solution No. 3]"
		dialog "* Solvent Agent *"
		dialog "Payon Solution"
		dialog "Where to Find:"
		dialog "A small spring in Payon, the Archer Village."
		wait()
		dialog "[Mage Test Solution No. 3]"
		dialog "* Magic Power Serial Code *"
		dialog(2750)
		wait()
		dialog "[Mage Test Solution No. 3]"
		dialog "* Catalyst *"
		dialog "Blue Gemstone"
		dialog "(Provided by"
		dialog "Mixing Machine)"
		close()
	elseif mresulta == 4 then
		dialog "[Mage Test Solution No. 4]"
		dialog "* Ingredients List *"
		dialog "2 Jellopy"
		dialog "3 Fluff"
		wait()
		dialog "[Mage Test Solution No. 4]"
		dialog "* Solvent Agent *"
		dialog "Morroc Solution"
		dialog "Where to Find:"
		dialog "A small spring near entrance of pyramid in Morroc."
		wait()
		dialog "[Mage Test Solution No. 4]"
		dialog "* Magic Power Serial Code *"
		dialog(5429)
		wait()
		dialog "[Mage Test Solution No. 4]"
		dialog "* Catalyst *"
		dialog "1 carat Diamond"
		dialog "(Provided by"
		dialog "Mixing Machine)"
		close()
	end
end
end
end end end 