-- _________________________________________________ --
--/                                                 \--
--|       _    _          _   _             	    |--
--|	   | |  | |        | | (_)                    |--
--|	   | |__| |   ___  | |  _    ___    ___       |--
--|	   |  __  |  / _ \ | | | |  / _ \  / __|      |--
--|	   | |  | | |  __/ | | | | | (_) | \__ \      |--
--|	   |_|  |_|  \___| |_| |_|  \___/  |___/      |--
--|				                            |--
--|-------------------------------------------------|--
--| 31/12/2007                             	    |--
--|  - First Version for Helios.  [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity					    |--
--|			Muad_Dib                     	    |--
--|-------------------------------------------------|--
--| Notes:                                 	    |--
--|                                        	    |--
--|                                        	    |--
--\_________________________________________________/--

npc("nif_in","Undead Chicken",spr_4_NFCOCK,16,27,1,1,1,"nif_in_Undead_Chicken_1627")
function nif_in_Undead_Chicken_1627()
	hpdrain(5)
	dialog "[Undead Chicken]"
	dialog "I lived a peaceful life as a normal chicken. But then came the day I was tragically killed and eaten by humans. Well... Heh heh~! Now it's my turn! *Cackles*"
	wait()
	local name = PcName()
	dialog("[", name , "]")
	dialog "Ouch...!"
	dialog "A chicken..."
	dialog "It bit me!"
	wait()
	dialog "[Undead Chicken]"
	dialog "Ho ho~!"
	dialog "I can talk AND feast"
	dialog "on living humans!"
	dialog "Being a zombie is great!"
	dialog "*Cackles*"
	close()
end

npc("nif_in","Undead Familiar",spr_4_NFBAT,16,30,4,1,1,"nif_in_Undead_Familiar_1630")
function nif_in_Undead_Familiar_1630()
	hpdrain(5)
	local name = PcName()
	dialog "[Vatoman]"
	dialog "Oooh, how handy, a living"
	dialog "human~! Fresh blood is"
	dialog "always tasty...! I think I'll just"
	dialog "take a liiittle sip."
	wait()
	dialog("[", name , "]")
	dialog "Ow! My vein!"
	dialog "Did you just"
	dialog "suck my blood?!"
	wait()
	dialog "[Vatoman]"
	dialog "Mwahahaha~"
	dialog "Foolish mortal!"
	dialog "Beware my powers!"
	close()
end

npc("niflheim","Gigantia",spr_4_M_NFDEADSWDMAN,195,211,6,3,3,"niflheim_Gigantia_195211")
function niflheim_Gigantia_195211()
	local hat1 = GetEquipCount(Deviruchi_Cap)
	local hat2 = GetEquipCount(snowy_Horn)
	local hat3 = GetEquipCount(Magestic_Goat)
	if ((hat1 == 1) or (hat2 == 1) or (hat3== 1)) then
		dialog "[Gigantia]"
		dialog "Hey, wait!"
		close()
	end
	close()
end

function niflheim_Gigantia_195211()
	local name = PcName()
	local hat1 = GetEquipCount(Deviruchi_Cap)
	local hat2 = GetEquipCount(snowy_Horn)
	local hat3 = GetEquipCount(Magestic_Goat)
	if ((hat1 == 1) or (hat2 == 1) or (hat3== 1)) then
		dialog("[", name , "]")
		dialog "What's up?"
		wait()
		dialog "[Gigantia]"
		dialog "Just..."
		dialog "Come over here."
		dialog "I have something"
		dialog "I must do for you."
		wait()
		dialog "[Gigantia]"
		dialog "Your horn is crooked."
		dialog "Always make sure your horn"
		dialog "is worn straight and neat."
		dialog "The Lord of Death is always"
		dialog "looking at you."
		close()
	else
		dialog "[Gigantia]"
		dialog "The Lord of Death knows"
		dialog "and sees all. It's useless"
		dialog "to hide, and escape from"
		dialog "Death's sweet embrace."
		close()
	end
	close()
end

npc("prt_in","Erious",spr_4_F_03,161,20,3,0,0,"prt_in_Erious_16120")
function prt_in_Erious_16120()
	if (getvar(nif_revive) == 0) then
		dialog "[Erious]"
		dialog "*Sob*Sob*"
		dialog "*Cries* Wahhh...!"
		dialog "Elly, how could you"
		dialog "leave me this way..."
		Emotion("Erious","ET_CRY")
		wait()
		local mresult = menu("Comfort him.","Neglect him.")
		if mresult == 1 then
			dialog "[Erious]"
			dialog "Ah, thank you for your kindness."
			dialog "*Sob* My wife died while I was on"
			dialog "a trip. I'm so sorry that I"
			dialog "couldn't be with her when"
			dialog "the end came..."
			wait()
			dialog "[Erious]"
			dialog "I wish I could talk to my Elly,"
			dialog "although I know it's too late now."
			dialog "*Cries* But... there is one last"
			dialog "hope that I have. My absolute"
			dialog "final chance..."
			wait()
			dialog "[Erious]"
			dialog "I was told that somewhere"
			dialog "in this world, there exists a town"
			dialog "where the dead reside. I might be"
			dialog "able to meet my wife there, but"
			dialog "I cannot leave my children here"
			dialog "without me. *Cries*"
			wait()
			local mresult = menu("I can deliver your message to her.","I am so sorry to hear that.")
			if mresult == 1 then
				dialog "[Erious]"
				dialog "Oh, can you?"
				dialog "Thank you so much for your"
				dialog "generosity. If you can do"
				dialog "this for me, I would be"
				dialog "greatly indebted to you."
				wait()
				dialog "[Erious]"
				dialog "You're an adventurer, aren't you?"
				dialog "If your journeys take you to that"
				dialog "town of the dead, and if you"
				dialog "happen to meet her by chance..."
				wait()
				dialog "[Erious]"
				dialog "Please send Elly a message for me,"
				dialog "let her know that what happened"
				dialog "a month ago was all my fault."
				dialog "Thank you for your help,"
				dialog "and please take care."
				setitem("nif_revive",1)
				close()
			elseif mresult == 2 then
				dialog "[Erious]"
				dialog "*Cries* Is there no way that I"
				dialog "can see her again? If I could"
				dialog "talk to her at least once more,"
				dialog "even if it's the last time,"
				dialog "I would do anything..."
				close()
			end
			close()
		elseif mresult == 2 then
			dialog "[Erious]"
			dialog "*Cries* Eeeeelllllyyyy~~~~!"
			dialog "I never thought that would be"
			dialog "the last time we would see"
			dialog "each other..."
			dialog "*Sob*..."
			close()
		end
		close()
	elseif (getvar("nif_revive") == 1) then
		dialog "[Erious]"
		dialog "This place I was told about..."
		dialog "The town of the dead..."
		dialog "From what I remember, it was"
		dialog "located near some rest area."
		wait()
		dialog "[Erious]"
		dialog "All day and night, it's filled"
		dialog "with never ending screams of"
		dialog "agony and despair. I hope that"
		dialog "this will be helpful in your search."
		close()
	elseif (getvar("nif_revive") == 5) or (getvar("nif_revive") == 6) then
		dialog "[Erious]"
		dialog "Oh my! You really found the town,"
		dialog "have you? I really appreciate that"
		dialog "you've endured all this hardship"
		dialog "for me... Um...So in the end..."
		dialog "Were you able to meet my Elly?"
		wait()
		local mresult = menu("Yes.","Sorry, I couldn't.")
		if mresult == 1 then
			if (getvar("nif_revive") == 6) and (getvar("Mementos") > 0) then
				dialog "[Erious]"
				dialog "Are you serious? What did she say?"
				dialog "Did she say she will forgive me?"
				wait()
				local mresult = menu("Yes. And she gave me...this.")
				if mresult == 1 then
					dropitem("Mementos",1)
					dialog "[Erious]"
					dialog "Ah...In this box were the gifts"
					dialog "I gave her when we started"
					dialog "seeing each other. She had a"
					dialog "serious illness even before we"
					dialog "met, so I promised her that I"
					dialog "would cure her illness..."
					wait()
					dialog "[Erious]"
					dialog "That's why I went on that trip..."
					dialog "to find a cure or medicine"
					dialog "for her... But my efforts turned"
					dialog "out to be a good for nothing."
					dialog "..................."
					dialog "........."
					wait()
					dialog "[Erious]"
					dialog "Anyway, I appreciate your"
					dialog "generousity. I want to pay"
					dialog "you back for all the trouble"
					dialog "I caused you, but I only have"
					dialog "the medicine I found for her"
					dialog "illness during this trip."
					wait()
					dialog "[Erious]"
					dialog "I hope you will take this medicine"
					dialog "as a token of my gratitute."
					wait()
					local now_weight = (getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT))
					if (now_weight > 259) then
						setitem("nif_revive",7)
						getitem("Yggdrasilberry",2)
						getitem("Seed_Of_Yggdrasil",2)
						getitem("Leaf_Of_Yggdrasil",10)
						dialog "[Erious]"
						dialog "Thank you for everything."
						dialog "I wish you luck and safety"
						dialog "in your adventures."
						close()
					elseif (now_weight < 260) then
						dialog "[Erious]"
						dialog "I have something to give you,"
						dialog "but you're carrying too much"
						dialog "stuff for me to give it to"
						dialog "right now. Why don't you"
						dialog "store your items somewhere?"
						close()
					end
					close()
				end
				close()
			elseif (getvar("nif_revive") == 6) and (getvar("Mementos") < 1) then
				dialog "[Erious]"
				dialog "Hmm...this is odd. I'm sure she would give you something as a token of meeting her. By any chance, is there anything that you've forgetten to bring me?"
				close()
			else
				dialog "[Erious]"
				dialog "I guess you misunderstood"
				dialog "something or you're trying"
				dialog "to scam a man in grief."
				close()
			end
		elseif mresult == 2 then
			if (getvar("nif_revive") == 5) then
				dialog "[Erious]"
				dialog "I see...you have failed to find"
				dialog "her... However, I also understand"
				dialog "that my fulfilling my request may"
				dialog "be impossible..."
				wait()
				dialog "[Erious]"
				dialog "You've really gone out of your way"
				dialog "to help me, so I want to give you"
				dialog "something as a token of my"
				dialog "gratitute."
				wait()
				local now_weight = (getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT))
				if (now_weight > 99) then
					setitem("nif_revive",7)
					getitem("Leaf_Of_Yggdrasil",10)
					dialog "[Erious]"
					dialog "Thank you for everything."
					dialog "I wish you luck and safety"
					dialog "from harm in your journeys."
					close()
				elseif (now_weight < 100) then
					dialog "[Erious]"
					dialog "I have something to give you,"
					dialog "but you're carrying too much"
					dialog "stuff for me to give it to"
					dialog "right now. Why don't you"
					dialog "store your items somewhere?"
					close()
				end
				close()
			else
				dialog "[Erious]"
				dialog "I see..."
				dialog "...Wait! Doesn't that belong"
				dialog "to my wife, Elly? Why are you"
				dialog "trying to cheat a grieving man...?"
				close()
			end
		end
		close()
	elseif (getvar("nif_revive") == 7) then
		dialog "[Erious]"
		dialog "I wish you safety from harm"
		dialog "in your journeys, adventurer."
		close()
	end
end

npc("umbala","Billik",spr_4_M_JOB_KNIGHT1,215,181,3,0,0,"umbala_Billik_215181")
function umbala_Billik_215181()
	if (getvar("nif_revive") == 1) then
		dialog "[Billik]"
		dialog "The Town of the dead..."
		dialog "It's a very dangerous place."
		dialog "Why would you want to go there?"
		wait()
		local mresult = menu("I have to meet somebody there.","It's a part of my adventure.")
		if mresult == 1 then
			dialog "[Billik]"
			dialog "Someone you have to meet there..."
			dialog "Hmm... I suppose you wish to"
			dialog "contact the dead..."
			dialog "I can also see that you're"
			dialog "determined to go."
			wait()
			dialog "[Billik]"
			dialog "*Sigh* Okay, if you really want to"
			dialog "go, you must find a man named"
			dialog "'Feylin.' It's very important to"
			dialog "let him know that I introduced"
			dialog "him to you."
			wait()
			dialog "[Billik]"
			dialog "He's not very trusting, but he"
			dialog "likes roses a lot, so bring a rose"
			dialog "for him. That way, he'll know for"
			dialog "sure that I've sent you."
			setitem("nif_revive",2)
			wait()
			dialog "[Billik]"
			dialog "The town of the dead is located"
			dialog "north of this place. Remember, it"
			dialog "is very dangerous to go there,"
			dialog "even for well experienced"
			dialog "adventurers, so..."
			dialog "Be careful."
			close()
		elseif mresult == 2 then
			dialog "[Billik]"
			dialog "Hahaha~ I guess you like adventure"
			dialog "as much as I do. Although it's a"
			dialog "very dangrous place, you will be"
			dialog "paid back for your effort after"
			dialog "you get there. But be careful."
			close()
		end
		close()
	elseif (getvar("nif_revive") == 0) then
		dialog "[Billik]"
		dialog "What brings you here? I'm busy,"
		dialog "leave if you don't have any business."
		close()
	elseif (getvar("nif_revive") > 1) then
		dialog "[Billik]"
		dialog "Well, long time no see."
		dialog "If you have a chance in the"
		dialog "future, let's meet in the"
		dialog "town of the dead later."
		dialog "Hahahaha~"
		Emotion("Billik","ET_BEST")
		close()
	end
end

npc("niflheim","Feylin",spr_4_M_NFDEADMAN2,153,215,3,0,0,"niflheim_Feylin_153215")
function niflheim_Feylin_153215()
	if (getvar("nif_revive") == 2) then
		dialog "[Feylin]"
		if (getvar(VAR_SEX) == 1) then
			dialog "Poor guy..."
			dialog "Dying at such a young age..."
		else
			dialog "Poor girl..."
			dialog "Dying at such a young age..."
		end
		dialog "I am always sorry to see the"
		dialog "young pass away."
		wait()
		dialog "[Feylin]"
		dialog "............??"
		dialog "Oh, I see you're not dead yet,"
		dialog "are you? It's unbelievable to"
		dialog "see another living person"
		dialog "in this town."
		wait()
		dialog "[Feylin]"
		dialog "Are you coming to rescue someone,"
		dialog "or do you have another purpose?"
		dialog "If you came here to meet a"
		dialog "deceased friend of yours, you've"
		dialog "come to the wrong person."
		wait()
		dialog "[Feylin]"
		dialog "Nobody in Niffelheim can"
		dialog "perform that kind of miracle..."
		wait()
		dialog "[Feylin]"
		dialog "I can tell you have been through"
		dialog "much hardship, but unfortunately,"
		dialog "you came here for nothing. I hope"
		dialog "you go back to where you came"
		dialog "from before it's too late."
		setitem("nif_revive",3)
		close()
	elseif (getvar("nif_revive") == 3) then
		dialog "[Feylin]"
		dialog "I've asked you to leave this"
		dialog "town immediately. I'm sorry"
		dialog "but I know nothing about what"
		dialog "you are asking."
		Emotion("Feylin","ET_FRET")
		wait()
		local mresult = menu("But...","I am sorry.")
		if mresult == 1 then
			dialog "[Feylin]"
			dialog "You must know something..."
			dialog "Otherwise, you wouldn't be"
			dialog "so stubborn. I am not sure"
			dialog "who told you contacting the"
			dialog "dead might be possible..."
			wait()
			dialog "[Feylin]"
			dialog "But I surely wouldn't have told"
			dialog "you. Besides, speaking about"
			dialog "such things is taboo."
			setitem("nif_revive",4)
			close()
		elseif mresult == 2 then
			dialog "[Feylin]"
			dialog "Please consider leaving this"
			dialog "place as soon as possible."
			dialog "Nobody should stay in"
			dialog "Niflheim for too long."
			close()
		end
		close()
	elseif (getvar("nif_revive") == 4) then
		if (getvar("Witherless_Rose") > 0) then
			dialog "[Feylin]"
			dialog "Huh, Billik must have sent you."
			dialog "Since I'm indebted to him, I"
			dialog "suppose I will help you."
			dialog "But let me warn you."
			dialog "The price that I demand may be"
			dialog "more that you expect..."
			wait()
			local mresult = menu("I'm willing to do this.","I don't think I can do this.")
			if mresult == 1 then
				if (getvar(VAR_CLEVEL) > 79) and (getvar(VAR_CLEVEL) < 100) then
					dialog "[Feylin]"
					dialog "Alright, but you must promise"
					dialog "me that you will not let other"
					dialog "people know what I am about"
					dialog "to tell you."
					wait()
					dialog "[Feylin]"
					dialog "This sorcery requires great"
					dialog "sacrifice. Needless to say, there"
					dialog "is a chance that this spell may"
					dialog "fail. I must also have"
					dialog "10 Yggdrasil Leaf to cast this"
					dialog "spell. Do you wish to continue?"
					wait()
					local mresult = menu("Yes","No")
					if mresult == 1 then
						if (getvar(Leaf_Of_Yggdrasil) > 9) then
							dialog "[Feylin]"
							dialog "I see. Then we shall begin."
							dialog "Woombahsokasabahah!"
							dialog "Woombah woombah hoombabah!"
							dialog "Yeeeeep!"
							wait()
							local nif_revive1 = math.random(1,100)
							if (nif_revive1 > 0) and (nif_revive1 < 88) then
								dialog "[Feylin]"
								dialog "...I am sorry."
								dialog "I have failed to summon"
								dialog "who you wish to see. I am"
								dialog "really sorry for this result."
								Emotion("Feylin","ET_HUK")
								dropitem("Witherless_Rose",1)
								dropitem("Leaf_Of_Yggdrasil",10)
								setitem("nif_revive",5)
								hpdrain(99)
								wait()
								dialog "[Feylin]"
								dialog "Unfortunately, it may be"
								dialog "impossible to summon the"
								dialog "spirit of the person with"
								dialog "whom you wished to speak..."
								close()
							elseif (nif_revive1 > 87) and (nif_revive1 < 101) then
								dropitem("Witherless_Rose",1)
								dropitem("Leaf_Of_Yggdrasil",10)
								hpdrain(50)
								dialog "[Feylin]"
								dialog ".........."
								dialog ".........."
								wait()
								dialog "[Elly]"
								dialog ".........."
								dialog ".....Umm..."
								dialog "...Wasn't I just dead?"
								dialog "Um, do I know you?"
								wait()
								local mresult = menu("I brought a message from your husband.")
								if mresult == 1 then
									dialog "[Elly]"
									dialog "Oh...I see...I'm sorry that I could not meet him before I died..."
									dialog "So what is his message for me?"
									wait()
									local mresultd = menu("Forgive him for what happened a month ago.")
									if mresultd == 1 then
										dialog "[Elly]"
										dialog "*Sigh* He's such a nice husband..."
										dialog "He pays such attention, even to"
										dialog "the little things. Though, I"
										dialog "should be the one apologizing"
										dialog("to him...","dialog","be apologizing to him...")
										wait()
										dialog "[Elly]"
										dialog "Please give him this box, and tell"
										dialog "him to forget about me. He should"
										dialog "live the rest of his life happily"
										dialog "with someone else. Oh, also let"
										dialog "him know that I forgive him."
										setitem("nif_revive",6)
										getitem("Mementos",1)
										wait()
										dialog "[Elly]"
										dialog "I am glad to hear from my"
										dialog "husband one more time. But I"
										dialog "think I have to go now."
										dialog "Thank you for your trouble."
										dialog "Farewell..."
										wait()
										dialog "[Elly]"
										dialog "....................."
										dialog "...................."
										wait()
										dialog "[Feylin]"
										dialog "I guess you have accomplished what"
										dialog "you wanted. Well then, be careful"
										dialog "when you go back..."
										close()
									end
									close()
								end
								close()
							end
							close()
						else
							dialog "[Feylin]"
							dialog "If you don't have the"
							dialog "items, we cannot proceed."
							dialog "Remember, I need 10 Yggdrasil"
							dialog "Leaves to perform this spell."
							dialog "Please bring them as soon"
							dialog "as possible."
							close()
						end
					elseif mresultb == 2 then
						dialog "[Feylin]"
						dialog "I hope you will bring the items"
						dialog "first. But... I don't have the"
						dialog "confidence to promise that"
						dialog "this spell will cast successfully."
						close()
					end
					close()
				else
					dialog "[Feylin]"
					dialog "Hmm... You don't seem to have"
					dialog "the strength to endure the"
					dialog "casting of this spell. At"
					dialog "your current strength, this"
					dialog "spell will kill you."
					dialog "I cannot take that risk."
					close()
				end
			elseif mresulta == 2 then
				dialog "[Feylin]"
				dialog "You made a good decision."
				dialog "It's not a good idea to perform"
				dialog "this kind of sorcery in the"
				dialog "first place because of the"
				dialog "risks involved..."
				close()
			end
			close()
		else
			dialog "[Feylin]"
			dialog "No matter how many times you ask"
			dialog "me, I cannot help you. Please"
			dialog "leave this place as soon as you can."
			close()
		end
	else
		dialog "[Feylin]"
		dialog "What makes you to come to such"
		dialog "a dangerous town? Please leave"
		dialog "this place as soon as you can."
		close()
	end
end
