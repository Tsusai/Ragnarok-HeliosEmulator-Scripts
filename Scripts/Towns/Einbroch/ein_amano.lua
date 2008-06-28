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
-- | 29/11/2006 : Added 1st Version. [kevloth]                   |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |                                                             |
-- |                                                             |
-- \____________________________________________________________/

npc("einbech","Cavitar",SPRITE_4_M_EINOLD,97,167,5,0,0,"einbech_Cavitar_97167")
function einbech_Cavitar_97167()
	if (getvar(ein_gear1) == 2) then
		dialog "[Cavitar]"
		dialog "It's been a long"
		dialog "time, my friend. With"
		dialog "your help, my wife has"
		dialog "gotten much better."
		wait()
		dialog "[Cavitar]"
		dialog "Once again, I want to"
		dialog "thank you for what you've"
		dialog "done for me. Please drop"
		dialog "by anytime whenever you"
		dialog "come visit my town."
	elseif (getvar(ein_gear1) == 1) then
		dialog "[Cavitar]"
		dialog "Oh, welcome."
		dialog "So did you bring"
		dialog "everything that"
		dialog "I've asked you?"
		wait()
		local mresulta = menu("Yes.","No, not yet.")
			("case",1)
				if ((getvar(Emveretarcon) > 9) and (getvar(Coal) > 2) and (getvar(Zargon) > 9) and (getvar(Large_Jellopy) > 39)) then
					dialog "[Cavitar]"
					dialog "Let me check the items"
					dialog "that you brought before"
					dialog "I give you an Oridecon."
					wait()
					local gear = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
					if gear > 2399 then
						dialog "[Cavitar]"
						dialog "Good, you brought"
						dialog "everything! Now let me"
						dialog "give you this Oridecon."
						dialog "I'm sorry that I can't offer"
						dialog "you much more than this."
						wait()
						dialog "[Cavitar]"
						dialog "Alright then,"
						dialog "adventurer. I hope"
						dialog "you travel in safety."
						dropitem("Coal",3)
						dropitem("Large_Jellopy",40)
						dropitem("Emveretarcon",10)
						dropitem("Zargon",10)
						setitem("ein_gear1",0)
						getitem("Oridecon",1)
					else
						dialog "[Cavitar]"
						dialog "Hmmm, it seems you're"
						dialog "carrying too many things"
						dialog "with you. Shouldn't you"
						dialog "store some of your items"
						dialog "in Kafra Storage first?"
					end
				else
					dialog "[Cavitar]"
					dialog "Hm...?"
					dialog "You're missing some"
					dialog "things. Let me tell you"
					dialog "what you need to bring"
					dialog "once again so that I can"
					dialog "give you 1 Oridecon."
					wait()
					dialog "[Cavitar]"
					dialog "40 Large Jellopy,"
					dialog "10 Emveretarcon,"
					dialog "3 Coal and"
					dialog "10 Zargon."
					dialog "Please don't"
					dialog "forget this."
					close()
					return
				end
			elseif mresulta == 2 then
				dialog "[Cavitar]"
				dialog "Oh, alright."
				dialog "Let me remind"
				dialog "you of what you"
				dialog "need to trade for"
				dialog "1 Oridecon in"
				dialog "case you've forgotten."
				wait()
				dialog "[Cavitar]"
				dialog "40 Large Jellopy,"
				dialog "10 Emveretarcon,"
				dialog "3 Coal and"
				dialog "10 Zargon."
				dialog "Come back"
				dialog "whenever you're ready."
				close()
				return
		end
	else
		if (getvar(VAR_CLEVEL) < 40) then
			dialog "[Cavitar]"
			dialog "Recently, we've had some"
			dialog "tunnel cave-ins which resulted"
			dialog "in miner casualties. We're having"
			dialog "a harder time working in the"
			dialog "mines now that we're even"
			dialog "lower on manpower."
			wait()
			dialog "[Cavitar]"
			dialog "What's really suspicious"
			dialog "is that it seems something"
			dialog "has been making the tunnels"
			dialog "collapse on purpose. Some of"
			dialog "us believe it's because we've"
			dialog "angered the master of the cave."
			wait()
			dialog "[Cavitar]"
			dialog "The tunnel accident"
			dialog "is still fresh in my mind."
			dialog "It seems that there are"
			dialog "more ^FF0000Cave Master^000000 sightings"
			dialog "when the tunnels started"
			dialog "to inexplicably collapse."
			wait()
			dialog "[Cavitar]"
			dialog "I was off duty when"
			dialog "the accident happened."
			dialog "Still, I hear the only survivor"
			dialog "went crazy and disappeared"
			dialog "somewhere. The poor bastard..."
			close()
			return
		else
			if(getvar(VAR_MONEY) < 1000) then
				dialog "[Cavitar]"
				dialog "You're..."
				dialog "You're just as"
				dialog "bad off as I am!"
				dialog "I feel so sorry for you"
				dialog "that I'd give you some"
				dialog "zeny if I could spare it..."
				close()
				return
			else
				dialog "[Cavitar]"
				dialog "Hmm...?"
				dialog "I'm sorry, but"
				dialog "I don't think I have"
				dialog "the luxury of chatting"
				dialog "at the moment."
				wait()
				dialog "[Cavitar]"
				dialog "My wife was seriously"
				dialog "injured when she was"
				dialog "working with me in the"
				dialog "mine when it collapsed."
				dialog "It's agonizing, wondering"
				dialog "if she'll be okay or not."
				wait()
				dialog "[Cavitar]"
				dialog "Luckily no one"
				dialog "was killed, but my"
				dialog "wife is... ^333333*S-Sob*^000000"
				dialog "I'm sorry, but I need"
				dialog "to be alone right now..."
				wait()
				local mresulta = menu("I can help you.","Okay...","An accident?")
					if mresulta == 1 then
						dialog "[Cavitar]"
						dialog "Are you serious?!"
						dialog "Thank you, thank you so much!"
						dialog "A-as you can see, I'm not doing"
						dialog "so well financially. But I've got to get my wife to a hospital."
						wait()
						dialog "[Cavitar]"
						dialog "And since I've got to"
						dialog "take of her myself,"
						dialog "I haven't been able to work."
						dialog "I don't know what I should do."
						wait()
						local mresultb = menu("Then how can I help?")
							if mresultb == 1 then
						end
						dialog "[Cavitar]"
						dialog "Well, to be frank,"
						dialog "I'm in dire need of zeny."
						dialog "It costs 1,000 zeny to cover"
						dialog "her medical expenses and"
						dialog "food for just one day."
						wait()
						local temp = GetGlobalVar "050227_ama"
						local mresultb = menu("Help Him.","Quit.")
							if mresultb == 1 then
								local gear = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
								if gear < 100 then
									dialog "[Cavitar]"
									dialog "Hmmm, it seems you're"
									dialog "carrying too many things"
									dialog "with you. Shouldn't you"
									dialog "store some of your items"
									dialog "in Kafra Storage first?"
									close()
									return
								 else
									if temp == 60 then
										local METAL = math.random(1 3
										if METAL == 1 then
											dialog "[Cavitar]"
											dialog "Oh...!"
											dialog "Thank you, you"
											dialog "can't imagine how"
											dialog "grateful I am! I never"
											dialog "believed that I'd meet"
											dialog "someone as kind as you."
											wait()
											dialog "[Cavitar]"
											dialog "Other adventurers have"
											dialog "also been helping me, so"
											dialog "with all of your help, my wife"
											dialog "has been getting better."
											wait()
											dialog "[Cavitar]"
											dialog "I would like to give"
											dialog "you a small present"
											dialog "as a token of my gratitute."
											dialog "If you would, please take this."
											dropgold(1000)
											setitem("ein_gear1",2)
											SetGlobalVar("050227_ama",0)
											local hara = math.random(1 7
											if hara == 1 then
												getitem("Phlogopite",1)
											elseif hara == 2 then
												getitem("Agate",1)
											elseif hara == 3 then
												getitem("Rose_Quartz",1)
											elseif hara == 4 then
												getitem("Turquoise",1)
											elseif hara == 5 then
												getitem("Citrine",1)
											elseif hara == 6 then
												getitem("Pyroxene",1)
											else
												getitem("Olivine",1)
											end
											wait()
											dialog "[Cavitar]"
											dialog "I've been keeping these"
											dialog "kinds of metals since I was"
											dialog "sure they'd be more useful"
											dialog "to someone other than me."
											dialog "Hopefully, you'll find this ore"
											dialog "useful in one way or another."
											close()
											return
										elseif METAL == 2 then
											dialog "[Cavitar]"
											dialog "Oh...!"
											dialog "Thank you, you"
											dialog "can't imagine how"
											dialog "grateful I am! I never"
											dialog "believed that I'd meet"
											dialog "someone as kind as you."
											wait()
											dialog "[Cavitar]"
											dialog "If I were still"
											dialog "working, I'd try my"
											dialog "best to pay you back."
											dialog "But my current situation"
											dialog "doesn't really allow it..."
											wait()
											dialog "[Cavitar]"
											dialog "Still, I'd be happy"
											dialog "to trade you 1 Oridecon"
											dialog "if you can bring me some"
											dialog "items. How does that sound?"
											wait()
											dialog "[Cavitar]"
											dialog "Would you bring me"
											dialog "40 Large Jellopy,"
											dialog "10 Emveretarcon,"
											dialog "3 Coal and"
											dialog "10 Zargon?"
											wait()
											local mresultc = menu("Sure~!","No, thanks.")
												if mresultc == 1 then
													dropgold(1000)
													SetGlobalVar("050227_ama",0)
													setitem("ein_gear1",1)
													dialog "[Cavitar]"
													dialog "Great...!"
													dialog "Now I need to go"
													dialog "take care of my wife."
													dialog "Come back when you"
													dialog "gather everything I've"
													dialog "asked you to bring."
													close()
													return
												elseif mresultc == 2 then
													dialog "[Cavitar]"
													dialog "I see."
													dialog "Well, I understand"
													dialog "that adventurers don't"
													dialog "stay in one place for"
													dialog "very long. Once again,"
													dialog "thank you for your help."
													wait()
													dialog "[Cavitar]"
													dialog "But please take"
													dialog "this small gift"
													dialog "as a token of"
													dialog "my gratitude."
													dropgold(1000)
													getitem("Phracon",1)
													close()
													return
											end
										else
											dialog "[Cavitar]"
											dialog "Oh...!"
											dialog "Thank you, you"
											dialog "can't imagine how"
											dialog "grateful I am! I never"
											dialog "believed that I'd meet"
											dialog "someone as kind as you."
											wait()
											dialog "[Cavitar]"
											dialog "If I were still"
											dialog "working, I'd try my"
											dialog "best to pay you back."
											dialog "But my current situation"
											dialog "doesn't really allow it..."
											wait()
											dialog "[Cavitar]"
											dialog "Still, I'd be happy"
											dialog "to trade you 1 Oridecon"
											dialog "if you can bring me some"
											dialog "items. How does that sound?"
											wait()
											dialog "[Cavitar]"
											dialog "Would you bring me"
											dialog "40 Large Jellopy,"
											dialog "10 Emveretarcon,"
											dialog "3 Coal and"
											dialog "10 Zargon?"
											wait()
											local mresultc = menu("Sure~!","No, thanks.")
												if mresultc == 1 then
													dropgold(1000)
													SetGlobalVar("050227_ama",0)
													setitem("ein_gear1",1)
													dialog "[Cavitar]"
													dialog "Great...!"
													dialog "Now I need to go"
													dialog "take care of my wife."
													dialog "Come back when you"
													dialog "gather everything I've"
													dialog "asked you to bring."
													close()
													return
												elseif mresultc == 2 then
													dialog "[Cavitar]"
													dialog "I see."
													dialog "Well, I understand"
													dialog "that adventurers don't"
													dialog "stay in one place for"
													dialog "very long. Once again,"
													dialog "thank you for your help."
													wait()
													dialog "[Cavitar]"
													dialog "But please take"
													dialog "this small gift"
													dialog "as a token of"
													dialog "my gratitude."
													dropgold(1000)
													getitem("Phracon",1)
													close()
													return
											end
										end
									else
										dialog "[Cavitar]"
										dialog "Oh...!"
										dialog "Thank you, you"
										dialog "can't imagine how"
										dialog "grateful I am! I never"
										dialog "believed that I'd meet"
										dialog "someone as kind as you."
										wait()
										dialog "[Cavitar]"
										dialog "If I were still"
										dialog "working, I'd try my"
										dialog "best to pay you back."
										dialog "But my current situation"
										dialog "doesn't really allow it..."
										wait()
										dialog "[Cavitar]"
										dialog "Still, I'd be happy"
										dialog "to trade you 1 Oridecon"
										dialog "if you can bring me some"
										dialog "items. How does that sound?"
										wait()
										dialog "[Cavitar]"
										dialog "Would you bring me"
										dialog "40 Large Jellopy,"
										dialog "10 Emveretarcon,"
										dialog "3 Coal and"
										dialog "10 Zargon?"
										wait()
										local mresultc = menu("Sure~!","No, thanks.")
									("		case",1)
												dropgold(1000)
												temp("=","temp","+",1)
										("		SetGlobalVar","050227_ama","temp")
												setitem("ein_gear1",1)
												dialog "[Cavitar]"
												dialog "Great...!"
												dialog "Now I need to go"
												dialog "take care of my wife."
												dialog "Come back when you"
												dialog "gather everything I've"
												dialog "asked you to bring."
												close()
												return
									 		break
									("		case",2)
												dialog "[Cavitar]"
												dialog "I see."
												dialog "Well, I understand"
												dialog "that adventurers don't"
												dialog "stay in one place for"
												dialog "very long. Once again,"
												dialog "thank you for your help."
												wait()
												dialog "[Cavitar]"
												dialog "But please take"
												dialog "this small gift"
												dialog "as a token of"
												dialog "my gratitude."
												dropgold(1000)
												getitem("Phracon",1)
												close()
												return
									 		break
										end
									end
							 	endif
							 	close
								return
							elseif mresultb == 2 then
								dialog "[Cavitar]"
								dialog "I understand."
								dialog "I'm sorry that I've"
								dialog "asked so much of you."
								dialog "But please understand"
								dialog "that I'm desperate..."
								close()
								return
							 break
						end
						close()
						return
			("		case",2)
						dialog "[Cavitar]"
						dialog "You're..."
						dialog "You're heartless!"
						dialog "^666666*Sob...*^000000"
						dialog "Can't you see that I'm"
						dialog "poor and need help?!"
						close()
						return
					elseif mresulta == 3 then
						dialog "[Cavitar]"
						dialog "Recently, we've had some"
						dialog "tunnel cave-ins which resulted"
						dialog "in miner casualties. We're having"
						dialog "a harder time working in the"
						dialog "mines now that we're even"
						dialog "lower on manpower."
						wait()
						dialog "[Cavitar]"
						dialog "What's really suspicious"
						dialog "is that it seems something"
						dialog "has been making the tunnels"
						dialog "collapse on purpose. Some of"
						dialog "us believe it's because we've"
						dialog "angered the master of the cave."
						wait()
						dialog "[Cavitar]"
						dialog "The tunnel accident"
						dialog "is still fresh in my mind."
						dialog "It seems that there are"
						dialog "more ^FF0000Cave Master^000000 sightings"
						dialog "when the tunnels started"
						dialog "to inexplicably collapse."
						wait()
						dialog "[Cavitar]"
						dialog "I was off duty when"
						dialog "the accident happened."
						dialog "Still, I hear the only survivor"
						dialog "went crazy and disappeared"
						dialog "somewhere. The poor bastard..."
						close()
						return
				end
			end
		end
	end
end
