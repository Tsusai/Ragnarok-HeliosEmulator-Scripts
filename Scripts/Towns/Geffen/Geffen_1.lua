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
--| 10/01/2008                                      |--
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

npc("geffen","Meera",spr_4_F_02,59,143,0,5,5,"geffen_Meera_59143")
function geffen_Meera_59143()
	dialog "[Meera]"
	dialog "Welcome to Geffen,"
	dialog "the City of Magic!"
	wait()
	dialog "[Meera]"
	dialog "I don't know much about magic, but do you know what tastes magical? ^CC6600Honey^000000!"
	wait()
	dialog "[Meera]"
	dialog "It's soooo sweet and delicious. I'm not sure if it's an aphrodisiac, but I know for a fact that it will relieve you of fatigue and help you recover from wounds!"
	wait()
	dialog "[Meera]"
	dialog "Hornets living in the grasslands spend their lives gathering nectar at the Queen Bee's command.  Honey is made from the nectar they gather."
	wait()
	dialog "[Meera]"
	dialog "But that's not all. There's a special kind of honey that's made for only Queen Bees to eat:"
	dialog "^CC6600Royal Jelly^000000!"
	wait()
	dialog "[Meera]"
	dialog "Nothing can compare to the luscious flavor of Royal Jelly. And I think it's even better for you than ordinary Honey!"
	close()
end

npc("geffen","Orwalk",spr_4_KID01,156,190,0,5,5,"geffen_Orwalk_156190")
function geffen_Orwalk_156190()
	dialog "[Orwalk]"
	dialog "...Interesting."
	dialog "Most intriguing."
	dialog "Oh! Let me tell you"
	dialog "this marvelous story~"
	wait()
	dialog "[Orwalk]"
	dialog "While I was researching magic, I discovered this mysterious scroll. It describes this tree named Yggdrasil."
	wait()
	dialog "[Orwalk]"
	dialog "The leaves, seeds and fruit of Yggdrasil link every living thing in this world. According to this scroll, Yggdrasil is also involved in the creation of the world."
	wait()
	dialog "[Orwalk]"
	dialog "Speaking of which, I've also heard of a rumor about a miraculous tree in some land near Comodo. They must be connected, I'm sure of it!"
	close()
end

npc("geffen_in","Wizard Stanza",spr_1_M_WIZARD,164,109,0,5,5,"geffen_in_Wizard_Stanza_164109")
function geffen_in_Wizard_Stanza_164109()
	dialog "[Stanza]"
	dialog "I sense the presence of a mighty spirit. Can it be you...?"
	wait()
	if ((getvar(VAR_JOB) == MAGICIAN) or (getvar(VAR_JOB) == WIZARD) or (getvar(VAR_JOB) == SAGE)) then
		dialog "[Stanza]"
		dialog "It seems that you are trained in the mystic arts. Magic... Its power is governed by the law of cause and effect."
	elseif ((getvar(VAR_JOB) == ACOLYTE) or (getvar(VAR_JOB) == PRIEST) or (getvar(VAR_JOB) == MONK)) then
		dialog "[Stanza]"
		dialog "Ah..."
		dialog "I see that you wield holy power in one way or another. I suppose Holy power may be considered one form of mystical energy."
	elseif getvar(VAR_JOB) == NOVICE then
		dialog "[Stanza]"
		dialog "Although you may not be able to use magic or any other kind of powerful skills for now, this knowledge may be helpful in the future, young Novice..."
	else
		dialog "[Stanza]"
		dialog "Although you are not formally trained in the use of magic, you use skills which draw upon otherworldly energies, whether you know it or not..."
	end
	wait()
	dialog "[Stanza]"
	dialog "If you use mystic energy for the purpose of harming others, or to defy the rules set by Mother Nature, that power will naturally be turned against you.  Remember, you reap what you sow."
	wait()
	dialog "[Stanza]"
	dialog "But there is an item that can protect the caster from ill consequence, allowing the safe use of certain magics.  These are the shining, mystical stones known as Gemstones."
	wait()
	dialog "[Stanza]"
	dialog "Gemstone..."
	dialog "If you wish to use your powers to the fullest, remember this item."
	close()
end

npc("geffen","Ralphie",spr_4W_M_01,147,26,0,5,5,"geffen_Ralphie_14726")
function geffen_Ralphie_14726()
	dialog "[Ralphie]"
	dialog "Somewhere in this world, there is a rare Staff which can transform psychic energy into physical force, endowing its owner with ^990000destructive power^000000..."
	wait()
	dialog "[Ralphie]"
	dialog "With that, anyone could be as strong as Hercules... Even a weakling like me!  Hahahahahah,"
	dialog "I must have it!"
	wait()
	Emotion("Ralphie","ET_SURPRISE")
	dialog "[Ralphie]"
	dialog "...Good Heavens!"
	dialog "Since when were"
	dialog "you listening?"
	wait()
	dialog "[Ralphie]"
	dialog "Did you happen"
	dialog "to hear any of that?"
	dialog "Muhwaha... ha. Ha."
	wait()
	dialog "[Ralphie]"
	dialog "Well..."
	dialog "I didn't say anything. But if"
	dialog "I did, forget all about it,"
	dialog "whatever it was~"
	wait()
	dialog "[Ralphie]"
	dialog "...Boy, this is awkward."
	close()
end

npc("geffen","Stacey",spr_4W_F_01,111,48,0,5,5,"geffen_Stacey_11148")
function geffen_Stacey_11148()
	local orchelm = GetEquipCount (Viking_Helm)
	local orchero = GetEquipCount(Orc_Hero_Helm)
	if orchelm == 1 then
		dialog "[Stacey]"
		dialog "Oh...!"
		dialog "Is that an Orc Helm you're wearing?! That's so cool! Wow..."
		wait()
		if (getvar(VAR_SEX) == 1) then
			dialog "[Stacey]"
			dialog "You look so..."
			dialog "Rugged and manly~"
			close()
		else
			dialog "[Stacey]"
			dialog "Oooh~!"
			dialog "I'm so jealous!"
			close()
		end
	elseif orchero == 1 then
		dialog "[Stacey]"
		dialog "Oh..."
		dialog "Wow..."
		wait()
		dialog "[Stacey]"
		dialog "That's..."
		dialog "That's a Helmet"
		dialog "of Orc Hero!"
		wait()
		if (getvar(VAR_SEX) == 1) then
			dialog "[Stacey]"
			dialog "It's..."
			dialog "It's like you're surrounded by this incredibly masculine aura! Oooh~! You must be irresistable to all the girls!"
			wait()
			Emotion("Stacey","ET_THROB")
			dialog "[Stacey]"
			dialog "And I'm no exception."
			close()
		else
			dialog "[Stacey]"
			dialog "Goodness, you must be so strong!"
			dialog "But I thought only members of the Orc Tribe could wear those?"
			close()
		end
	else
		dialog "[Stacey]"
		dialog "Hello~!"
		dialog "Oh, aren't you"
		dialog "an adventurer?"
		wait()
		dialog "[Stacey]"
		dialog "Have you ever seen any Orcs from the Demi-Human tribe? If you go down southward from here, I think you can find Orcs in the deep forest."
		wait()
		dialog "[Stacey]"
		dialog "I hear that Orcs have their own culture and language, supposedly just like us humans. Does that mean Orcs go on dates...?"
		wait()
		dialog "[Stacey]"
		dialog "You know, where they tenderly whisper sweet nothings and then... Oh! I really want to know!"
		close()
	end
end

npc("geffen_in","Theodore",spr_1_M_01,34,170,0,5,5,"geffen_in_Theodore_34170")
function geffen_in_Theodore_34170()
	dialog "[Theodore]"
	dialog "Hello!"
	dialog "Isn't it a"
	dialog "wonderful"
	dialog "day today?"
	wait()
	dialog "[Theodore]"
	dialog "Well, I wouldn't know. I've been studying too hard to become a Mage. I've been staying up all night, agonizing over anything that's magical."
	wait()
	dialog "[Theodore]"
	dialog "*Sigh...*"
	dialog "I especially worry about all the drawbacks to using magic."
	wait()
	dialog "[Theodore]"
	dialog "Oh darn! It was really annoying when a long-ranged enemy found me the last time I went exploring. That crummy monster disrupted the casting of all my spells! I didn't hit it at all!"
	wait()
	dialog "[Theodore]"
	dialog "After that, I realized I needed some sort of weapon to counter long-ranged attacks from enemies. Something that can attack from a distance..."
	wait()
	dialog "[Theodore]"
	dialog "Some sort of..."
	dialog "Sharp, piercing"
	dialog "projectile launcher, preferably made out of wood."
	wait()
	dialog "[Theodore]"
	dialog "But where could"
	dialog "I find something"
	dialog "like that?!"
	close()
end

npc("geffen_in","Christopher",spr_1_M_SMITH,110,172,0,5,5,"geffen_in_Christopher_110172")
function geffen_in_Christopher_110172()
	dialog "[Christopher Guillenrow]"
	dialog "Welcome to Christopher's Workshop. Ye can get all yer stuff for forging here. What business"
	dialog "brings ye to me?"
	wait()
	local mresulta = menu("Purchase Anvil","Purchase Forging Item","Purchase Metal","Purify Rough Ores","Cancel")
	if mresulta == 1 then
		dialog "[Christopher Guillenrow]"
		dialog "A better Anvil gives ye a greeeater chance to make better weapons, ye know? But they'll cost ye more zeny. Just get it off yer chest and buy what fits your purposes best, laddy."
		wait()
		local mresultb = menu("Anvil - 30,000 zeny","Oridecon Anvil - 120,000 zeny","Golden Anvil - 300,000 zeny","Better Anvil than the others.","Cancel.")
		if mresultb == 1 then
			if getvar(VAR_MONEY) < 30000 then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			getitem("Anvil",1)
			dropgold(30000)
			dialog "[Christopher Guillenrow]"
			dialog "This is the cheapest one, but efficient enough to forge most items. Thank ye fer shopping at me workshop.  Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 2 then
			if getvar(VAR_MONEY) < 120000 then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			getitem("Oridecon_Anvil",1)
			dropgold(120000)
			dialog "[Christopher Guillenrow]"
			dialog "Aye, friend ye have an eye for the anvil. This must be the proper anvil for a Blacksmith, eh? Thank ye fer shopping at me workshop.  Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 3 then
			if getvar(VAR_MONEY) < 300000 then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			getitem("Golden_Anvil",1)
			dropgold(300000)
			dialog "[Christopher Guillenrow]"
			dialog "This one is the best among all me stuffs in me workshop! With this, ye can rule the Blacksmith world! Thank ye fer shopping at me workshop.  Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 4 then
			dialog "[Christopher Guillenrow]"
			dialog "Well, sorry. But I don't have anythin' harder' than the Golden Anvil."
			wait()
			dialog "[Christopher Guillenrow]"
			dialog "Me thinks 'Ringgel,' the Legendary Anvil Maker would have one. But, I don't think ye can find him, though he be somewhere in this world."
			close()
		elseif mresultb == 5 then
			dialog "[Christopher Guillenrow]"
			dialog "Okay, feel free to come anytime, whenever ye need. Fare ye well."
			close()
		end
	elseif mresulta == 2 then
		local sell
		local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
		dialog "[Christopher Guillenrow]"
		dialog "A respectable blacksmith uses fine tools. Ye can become one o'those with me Stuff. Choose anything ye want."
		wait()
		local mresultb = menu("Mini-Furnace - 150 zeny","Iron Hammer - 1000 zeny","Golden Hammer - 3000 zeny","Oridecon Hammer - 5000 zeny","Cancel.")
		if mresultb == 1 then
			local item_weight
			dialog "[Christopher Guillenrow]"
			dialog "It's a much needed tool fer refining metal! So, How many do ye wish to buy? If ye want to quit, just type the number '0.'"
			wait()
			while(1) do
				dlgwrite(1,500)
				if input == 0 then
					dialog "[Christopher Guillenrow]"
					dialog "Aye, the deal is canceled. Fare ye well."
					close()
					return
				elseif error then
					dialog "[Christopher Guillenrow]"
					dialog "Ye can buy 500, er less."
					wait()
				else
					break
				end
			end
			sell("=","input","*",150)
			item_weight("=","input","*",200)
			if getvar(VAR_MONEY) < sell then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			if now_weight < item_weight then
				dialog "[Christopher Guillenrow]"
				dialog "Ye look like you don't got enough room in yer inventory. Put some stuff into your Kafra Storage, why don't ye?"
				close()
				return
			end
			getitem("Portable_Furnace","input")
			--dropgold sell // Expecting a =?
			dialog "[Christopher Guillenrow]"
			dialog "Thank ye fer shopping at me workshop. Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 2 then
			if getvar(VAR_MONEY) < 1000 then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			getitem("Iron_Hammer",1)
			dropgold(1000)
			dialog "[Christopher Guillenrow]"
			dialog "Thank ye fer shopping at me workshop. Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 3 then
			if getvar(VAR_MONEY) < 3000 then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			getitem("Golden_Hammer",1)
			dropgold(3000)
			dialog "[Christopher Guillenrow]"
			dialog "Thank ye fer shopping at me workshop. Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 4 then
			if getvar(VAR_MONEY) < 5000 then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			getitem("Oridecon_Hammer",1)
			dropgold(5000)
			dialog "[Christopher Guillenrow]"
			dialog "Thank ye fer shopping at me workshop. Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 5 then
			dialog "[Christopher Guillenrow]"
			dialog "Feel free to come anytime, whenever ye need. Fare ye well."
			close()
		end
	elseif mresulta == 3 then
		local item_weight
		local sell
		local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
		dialog "[Christopher Guillenrow]"
		dialog "I prepare every Metal, and only the high quality ones o'course. Now then, which one do ye need?"
		wait()
		local mresultb = menu("Phracon - 200z.","Emveretarcon - 1000z.","Cancel.")
		if mresultb == 1 then
			dialog "[Christopher Guillenrow]"
			dialog "So, How many do ye wish to buy? If ye dont want anything, just type the number as '0.'"
			wait()
			while(1) do
				dlgwrite(1,500)
				if input == 0 then
					dialog "[Christopher Guillenrow]"
					dialog "Deal has"
					dialog "been canceled."
					dialog "Fare ye well."
					close()
					return
				elseif error then
					dialog "[Christopher Guillenrow]"
					dialog "Ye can buy 500, er less."
					wait()
				else
					break
				end
			end
			sell("=","input","*",200)
			item_weight("=","input","*",200)
			if getvar(VAR_MONEY) < sell then
				dialog "[Christopher Guillenrow]"
				dialog "Ye don't have enough money. Ye know I can't sell this at a lower price... You know how the wifey nags about Zeny."
				close()
				return
			end
			if now_weight < item_weight then
				dialog "[Christopher Guillenrow]"
				dialog "Ye look like you don't have the room to carry anythin' new. Why don't ye put some things into Kafra Storage n' come back."
				close()
				return
			end
			getitem("Phracon","input")
			--dropgold sell // Expecting a =?
			dialog "[Christopher Guillenrow]"
			dialog "Thank ye fer shopping at me workshop. Feel free to come anytime, whenever ye need."
			close()
		elseif mresultb == 2 then
			dialog "[Christopher Guillenrow]"
			dialog "So, how many do ye wish to buy? If ye dont want anything at all, just type the number as '0.'"
			wait()
			while(1) do
				dlgwrite(1,500)
				if input == 0 then
					dialog "[Christopher Guillenrow]"
					dialog "Deal has"
					dialog "been canceled."
					dialog "Fare ye well."
					close()
					return
				elseif error then
					dialog "[Christopher Guillenrow]"
					dialog "Ye can buy 500, er Less."
					wait()
				else
					break
				end
			end
			sell("=","input","*",1000)
			item_weight("=","input","*",200)
			if getvar(VAR_MONEY) < sell then
				dialog "[Christopher Guillenrow]"
				dialog "I don't think I can let ye have this with the zeny ye have. I can't lose me money because of ye."
				close()
				return
			end
			if now_weight < item_weight then
				dialog "[Christopher Guillenrow]"
				dialog "Me friend... Seems to me ye don't have Inventory space. Why doncha put some things into Kafra Storage first?"
				close()
				return
			end

			getitem("Emveretarcon","input")
			--dropgold sell // Expecting a =?
			dialog "[Christopher Guillenrow]"
			dialog "Thank ye fer shopping at me workshop. Feel free to come anytime, whenever ye need, whenever ye want."
			close()
		elseif mresultb == 3 then
			dialog "[Christopher Guillenrow]"
			dialog "Feel free to come anytime, whenever ye need. Fare ye well."
			close()
		end
	elseif mresulta == 4 then
		dialog "[Christopher Guillenrow]"
		dialog "I can purify yer Oridecon and Elunium. I make a refined Ore out of 5 o'each rough ones. Well... Which one do ye want to make?"
		wait()
		local mresultb = menu("Make Oridecon","Make Elunium","Cancel.")
		if mresultb == 1 then
			if getvar(Oridecon_Stone) < 5 then
				dialog "[Christopher Guillenrow]"
				dialog "I told ye, I need 5 o'the rough Oridecons fer one Oridecon."
				close()
			else
				dropitem("Oridecon_Stone",5)
				getitem("Oridecon",1)
				dialog "[Christopher Guillenrow]"
				dialog "Here's an Oridecon fer ye. Ye will be always welcome here, I'll be waitin' for ye."
				close()
			end
		elseif mresultb == 2 then
			if getvar(Elunium_Stone) < 5 then
				dialog "[Christopher Guillenrow]"
				dialog "I told ye, I need 5 rough Eluniums fer one Elunium."
				close()
			else
				dropitem("Elunium_Stone",5)
				getitem("Elunium",1)
				dialog "[Christopher Guillenrow]"
				dialog "Arrr, here's yer Elunium. Yer business is always welcome here, so feel free to come again."
				close()
			end
		elseif mresultb == 3 then
			dialog "[Christopher Guillenrow]"
			dialog "Feel free to come anytime, whenever ye need. Fare ye well."
			close()
		end
	elseif mresulta == 5 then
		dialog "[Christopher Guillenrow]"
		dialog "Feel free to come anytime, whenever ye need and whenever ye want. Fare ye well."
		close()
	end
end

npc("geffen","Suspicious Guy",spr_4W_M_03,146,148,4,6,6,"geffen_Suspicious_Guy_146148")
function geffen_Suspicious_Guy_146148()
	dialog "[?]"
	dialog "^333333*Psssst!*"
	dialog "H-Hey you!"
	dialog "You wanna get your hands on some great stuff? Come on over!^000000"
end
function geffen_Suspicious_Guy_146148()
	dialog "[Suspicious Guy]"
	if getvar(VAR_SEX) == 1 then
		dialog "Hey there tough guy. You look smart enough to recognize a bargain when it's right in front of your eyes."
	else
		dialog "Well, well, well. Aren't you a pretty girl. Today just happens to be your lucky day!"
	end
	wait()
	dialog "[Suspicious Guy]"
	dialog "So just tell me what you want, and I'll cut you a deal from amongst my valuable, yet affordable, wares."
	wait()
	local mresulta = menu("Gimme some potion so I can recover HP.","Um, you got a Knife?","Don't you have a good Manteau?","Don't you have something besides this?")
	if mresulta == 1 then
		dialog "[Suspicious Guy]"
		dialog "Ah, you into Potions, eh?"
		dialog "Yeah, I got the stuff!"
		wait()
		dialog "[Suspicious Guy]"
		dialog "Here it is! High quality Red Potion! It starts working right away once you take it. Once it hits your lips, you can't stop. This stuff is that good."
		wait()
		dialog "[Suspicious Guy]"
		dialog "C'mon dude. This is the latest Red Potion. I got it from a close friend of a friend, you know, a real dependable source, and it's real cheap too. You can't pass this up!"
		wait()
		local mresultb = menu("Uh, can I buy White Potions instead?")
		if mresultb == 1 then
			local Red_potion_hap
			dialog "[Suspicious Guy]"
			dialog "White Potions? Oh, those don't exist. But, er, if someone's selling that kind of stuff, bring it to me so I can, um, test the difference. But yeah, I got the real stuff."
			wait()
			dialog "[Suspicious Guy]"
			dialog "You can heal all your wounds by drinking Red Potions! And I'll sell you one for just ^FF3333500 zeny^000000!"
			wait()
			dialog "[Suspicious Guy]"
			dialog "Now, how cheap is that?! Since they're in such high demand, I can only sell you 100 of"
			dialog "them at a time."
			wait()
			while(1) do
				dlgwrite(1,100)
				if input == 0 then
					dialog "[Suspicious Guy]"
					if getvar(VAR_SEX) == 1 then
						dialog "Ah duuuuuude~ You're breakin' my heart! I mean, at these prices, I'm practically performing charity!"
					else
						dialog "W-waaaait! You didn't let me tell you the part about how Red Potions help you lose and gain weight in all the right places! Waaaaait!"
					end
					close()
					return
				elseif error then
					dialog "[Suspicious Guy]"
					dialog "Whoa..."
					dialog "I can't let you buy that many. I mean, it's not like, you know, there's a trace impurity in these Potions or anything like that..."
					wait()
				else
					break
				end
			end
			Red_potion_hap("=","input","*",500)
			if getvar(VAR_MONEY) < Red_potion_hap then
				dialog "[Suspicious Guy]"
				dialog "Oh maaan~"
				dialog "Are you"
				dialog "short on dough?"
				dialog "That's no good."
				wait()
				dialog "[Suspicious Guy]"
				dialog "^333333Now I gotta find some other sucker to dump this junk on!^000000 *Ahem* I mean, come again!"
				close()
				return
			end
			dropgold(Red_potion_hap)
			getitem("Red_Potion","input")
			end
			elseif mresulta == 2 then
				local Main_gauche_hap
				dialog "[Suspicious Guy]"
				if getvar(VAR_SEX) == 1 then
					dialog "What would a strong guy like you want a knife for? Those will just break under the force of your incredibly powerful swings!"
					wait()
					dialog "[Suspicious Guy]"
					dialog "Now..."
					dialog "What you really"
					dialog "need is a ^FF3333manly Dagger^000000."
				else
					dialog "A nice lady like you? Come on now, kitchen knives are for old naggy wives and the hired help."
					wait()
					dialog "[Suspicious Guy]"
					dialog "Now..."
					dialog "What you really"
					dialog "need is a fine, exquisite"
					dialog "^FF3333French Dagger^000000 to match your beauty and elegance."
				end
				wait()
				dialog "[Suspicious Guy]"
				dialog "I call it..."
				dialog "The ^FF3333Main Gauche^000000! I invented it myself. And I'm only selling it for 9,400 zeny!"
				wait()
				local mresultb = menu("Aren't you going to give me a sheath too?")
				if mresultb == 1 then
					dialog "[Suspicious Guy]"
					dialog "A sheath?"
					dialog "Whoa, that's almost asking too much! Alright, alright..."
					wait()
					dialog "[Suspicious Guy]"
					dialog "Since I like you so much, I'm giving you a free sheath with your purchase! Now how's that"
					dialog "for a bargain?"
					wait()
					dialog "[Suspicious Guy]"
					dialog "There's no way you can pass this up! Now, how many do you want?"
					wait()
					while(1) do
					dlgwrite(1,100)
					if input == 0 then
						dialog "[Suspicious Guy]"
						dialog "Man, how many chances of a lifetime have you passed up? Man, I hope you win the lottery..."
						dialog "You'd probably"
						dialog "pass that up too."
						close()
						return
					elseif error then
						dialog "[Suspicious Guy]"
						dialog "Whoa!"
						dialog "I can't sell that many Daggers! That'll attract the Prontera Chiv--I mean, um, I was gonna donate some Daggers to... Hungry children?"
						wait()
					else
						break
					end
				end
				--Main_gauche_hap("=","input","*",9400) // Haven't figured this out yet [spre]
				if getvar(VAR_MONEY) < Main_gauche_hap then
					dialog "[Suspicious Guy]"
					dialog "Short on zeny?"
					dialog "When the greatest deal in your life is right before your eyes?! Tragic, truly tragic..."
					close()
					return
				end
				dropgold (Main_gauche_hap)
				getitem("Main_Gauche","input")
				end
			elseif mresulta == 3 then
				local Hood__hap
				dialog "[Suspicious Guy]"
				if getvar(VAR_SEX) == 1 then
					dialog "A Manteau? That's old news! You know what's the latest in protective armors?"
				else
					dialog "Now why would such a beautiful woman wear something out of style? You know what would make you look even better?"
				end
				wait()
				dialog "[Suspicious Guy]"
				dialog "That's right!"
				dialog "A Hood! Wearing one of those is the quickest way to win respect these days!"
				wait()
				dialog "[Suspicious Guy]"
				dialog "If you've got a Hood on, monsters will fear you and run away in terror! And check out this sturdy fabric. I can pull it all I want and it won't tear!"
				wait()
				local mresultb = menu("This hood has no drawstrings...? ")
				if mresultb == 1 then
					dialog "[Suspicious Guy]"
					dialog "Haha! What are you saying? You don't need drawstrings! The space age Rayon and Nylon and Krypton fibers keep the Hood secure on your head!"
					wait()
					dialog "[Suspicious Guy]"
					dialog "Man..."
					dialog "So much technology was invested into this Hood. Can you believe I'm only selling it for 930 zeny?"
					wait()
					dialog "[Suspicious Guy]"
					dialog "Clearly, this is the deal of the century. So how many do you want?"
					wait()
					while(1) do
						dlgwrite(1,100)
						if input == 0 then
							dialog "[Suspicious Guy]"
							dialog "Awww..."
							dialog "It wasn't because of the whole drawstrings thing, was it?"
							close()
							return
						elseif error then
							dialog "[Suspicious Guy]"
							dialog "Whoa~!"
							dialog "I can't sell you that many! What are you trying to do, take advantage of me?"
							wait()
						else
							break
						end
					end
					Hood__hap("=","input","*",930)
					if getvar(VAR_MONEY) < Hood__hap then
						dialog "[Suspicious Guy]"
						dialog "Oh nuts..."
						dialog "Short on zeny, eh?"
						close()
						return
					end
					dropgold (Hood__hap)
					getitem("Hood","input")
				end
			elseif mresulta == 4 then
				dialog "[Suspicious Guy]"
				dialog "Man..."
				dialog "You sure like to ask for the impossible. Well, let me tell you right now. No other Merchant in the world sells the goods only I can offer."
				wait()
				dialog "[Suspicious Guy]"
				dialog "You just gotta believe me!"
				close()
		end
	dialog "[Suspicious Guy]"
	dialog "No need to look anywhere else at all when I clearly have the best items around!"
	wait()
	dialog "[Suspicious Guy]"
	dialog "Please come back sometime, and buy more of my stuff. I love a customer who knows what they want! Hehe~"
	close()
end

npc("geffen_in","Crumpler",spr_1_M_HOF,22,125,1,3,3,"geffen_in_Crumpler_22125")
function geffen_in_Crumpler_22125()
	dialog "[Crumpler]"
	dialog "Ooooh~!"
	dialog "You sure are dressed pretty,"
	dialog "ya fancy schmancy Mage!"
	wait()
	if (getvar(VAR_JOB) == MAGICIAN) then
		dialog "^3355FFSomeday, you swear to yourself, you will have your bloody revenge on this belligerent drunk for besmirching the proud Mage profession. Someday...^000000"
		close()
	elseif (getvar(VAR_JOB) == WIZARD) then
		local mresulta = menu("Actually, I'm a Wizard.")
		if mresulta == 1 then
			dialog "[Crumpler]"
			dialog "I'm so scared!"
			dialog "A Wizard?! Bwahaha!"
			wait()
			dialog "[Crumpler]"
			dialog "Everyone knows Wizards are all intelligence and no strength! Come on, smart man! Show me how tough you are!"
			wait()
			local mresultb = menu("Meteor Storm!","Lord of Vermilion!","Show Mercy.")
			if mresultb == 1 then
				dialog "[Crumpler]"
				dialog "Huh?"
				dialog "What'd you just say?"
				wait()
				dialog "[Crumpler]"
				dialog "..."
				wait()
				dialog "[Crumpler]"
				dialog "..."
				dialog "......"
				wait()
				dialog "[Crumpler]"
				dialog "Ooooooooh"
				dialog "crraaaap!"
				Emotion("Crumpler","ET_SURPRISE")
				wait()
				dialog "[Crumpler]"
				dialog "Help meeeee!"
				ShowEffect("Crumpler","EF_METEORSTORM")
				close()
			elseif mresultb == 2 then
				dialog "[Crumpler]"
				dialog "Hahahahaah!"
				dialog "Silly Wizard! Only a monster like Baphomet can handle a big spell like th--"
				wait()
				dialog "[Crumpler]"
				dialog "Oh sweet lord..."
				dialog "You're serious..."
				wait()
				ShowEffect("Crumpler","EF_LORD")
				dialog "[Crumpler]"
				dialog "ARRRRRGH~!"
				dialog "IT BUUUURNS!"
				close()
			elseif mresultb == 3 then
				local name = PcName()
				dialog("[", name , "]")
				dialog "No..."
				dialog "I can only use"
				dialog "my powers for good."
				wait()
				dialog "[Crumpler]"
				dialog "Haw haw!"
				dialog "Good..."
				dialog "For nothing!"
				close()
			end
		end
	elseif (getvar(VAR_JOB) == SAGE) then
		local mresulta = menu("Actually, sir, I'm a Sage.")
		if mresulta == 1 then
			dialog "[Crumpler]"
			dialog "A..."
			dialog "Sage?"
			Emotion("Crumpler","ET_QUESTION")
			wait()
			dialog "[Crumpler]"
			dialog "I don't know what that is. But I guess it can't be half as bad as a Mage."
			wait()
			dialog "[Crumpler]"
			dialog "Soooo..."
			dialog "Wanna drink with me?"
			close()
		end
	else
		dialog "[Crumpler]"
		dialog "Wait a sec..."
		dialog "You're not a Mage!"
		dialog "J-just how drunk am I?!"
		wait()
		dialog "[Crumpler]"
		dialog "Man, I hate Mages with a passion! Always studying and chanting and making taxes high and stuff..."
		wait()
		dialog "[Crumpler]"
		dialog "Taking our jobs, censoring the media, ruining our education system, causing air pollution, starting wars, making rap music..."
		close()
	end
end

npc("geffen_in","Skyler",spr_1_M_PUBMASTER,59,61,1,5,5,"geffen_in_Skyler_5961")
function geffen_in_Skyler_5961()
	dialog "[Skyler]"
	dialog "Hello hello."
	dialog "You're not looking"
	dialog "for Eric, are you?"
	wait()
	local mresulta = menu("Eric? Who's that?","Yes. Yes, I am.")
	if mresulta == 1 then
		dialog "[Skyler]"
		dialog "Oh, I see. He's just some guy in the room to the left of me. He's always working on some sort of project."
		wait()
		dialog "[Skyler]"
		dialog "Something to do with these magic sort of Ear Muffs. I guess he's been looking for investors to help him finish building whatever he's making."
	elseif mresulta == 2 then
		dialog "[Skyler]"
		dialog "Oh, alright. You can find Eric in the room to the left of me. He'll probably be happy to know someone is interested in what he's trying to build."
		wait()
		dialog "[Skyler]"
		dialog "From what I remember, he seemed really discouraged, thinking he'd never be able to finish his little project."
		wait()
		dialog "[Skyler]"
		dialog "I'm glad to hear you've come this way to help out that young fellow."
	end
end

npc("geffen_in","Waitresselen",spr_4_F_02,27,134,5,4,4,"geffen_in_Waitresselen_27134")
function geffen_in_Waitresselen_27134()
	dialog "[Elenore]"
	dialog "This place..."
	dialog "Certainly has"
	dialog "atmosphere."
	wait()
	dialog "[Elenore]"
	dialog "We've got some kind of Fortune Teller that's always hanging around in the corner, and a loud, belligerent drunk who's always picking on Mages."
	wait()
	dialog "[Elenore]"
	dialog "So..."
	dialog "What can"
	dialog "I do for you?"
	wait()
	local mresulta = menu("May I have a drink?","Is there any interesting gossip?")
	if mresulta == 1 then
		dialog "[Elenore]"
		dialog "Well..."
		dialog "If you're looking for alcohol, King Tristram III outlawed it a while ago. Now I hear they only serve it in certain places."
		wait()
		dialog "[Elenore]"
		dialog "Still, people manage to get drunk off the imitation drinks that we serve here. I guess it's all psychological."
		wait()
		dialog "[Elenore]"
		dialog "I reeeeally want to be able to visit that place where they serve real drinks. I hear it's just like paradise!"
		close()
	elseif mresulta == 2 then
		local mresult = math.random(1,4)
		if mresulta == 1 then
			dialog "[Elenore]"
			dialog "Gossip...?"
			dialog "Well, I've heard that they're opening a new Airship Service"
			dialog "in Juno!"
			wait()
			dialog "[Elenore]"
			dialog "Or at least, they're planning to. The airship isn't really ready to take off just yet. In the meantime, there's some weird customer representative over there who's offering a teleport service."
			wait()
			dialog "[Elenore]"
			dialog "It seems like Kafra Corporation may finally have a competitor! Then again, I don't think many girls are as attractive as the Kafra Employees..."
		elseif mresulta == 2 then
			dialog "[Elenore]"
			dialog "Have you heard?"
			dialog "There are some new fashions floating around the Rune-Midgarts Kingdom!"
			wait()
			dialog "[Elenore]"
			dialog "People have been coming in, wearing some cute new hats. There was this cute Teddy Bear Hat I've never seen before, and a girl came in wearing these black Kitty Ears..."
			wait()
			dialog "[Elenore]"
			dialog "Of course, not every popular style suits my taste. I mean, I saw someone walking around with a Mushroom on their head. And I hear someone has been making hats made out of Fish?"
			wait()
			dialog "[Elenore]"
			dialog "I guess those"
			dialog "kinds of hats are too"
			dialog "artistic for my taste."
		elseif mresulta == 3 then
			dialog "[Elenore]"
			dialog "Gossip, eh?"
			wait()
			local name = PcName()
			dialog "[Elenore]"
			dialog "Well..."
			dialog "I hear there's this person somewhere in Rune-Midgard..."
			wait()
			if (getvar(VAR_SEX) == 1) then
				dialog "[Elenore]"
				dialog "Tell me, have you ever heard of  + name ? He's supposed to be the suavest hero around!"
			else
				dialog "[Elenore]"
				dialog "Have you ever heard of  + name +  People say she's one of the prettiest girls in all of Rune-Midgard!"
			end
		elseif mresulta == 4 then
			local mresult = math.random(1,2)
			if mresulta == 1 then
				dialog "[Elenore]"
				dialog "Gossip, eh?"
				dialog "W-wait..."
				wait()
				dialog "[Elenore]"
				dialog "Ugh..."
				dialog "Ooooh..."
				dialog "My he-head..."
				dialog "It huuurts..."
				wait()
				dialog "[William's Spirit]"
				dialog "^990000You get the hell away from my daughter, low-life, before I sell your organs for zeny!"
				dialog "You hear me?!^000000"
				wait()
				dialog "[Elenore]"
				dialog "*Cough*"
				dialog "Oh...!"
				dialog "Sorry about that!"
				dialog "I must be coming"
				dialog "down with the flu!"
				dialog "...Or something."
				wait()
				dialog "^3355FFWeird..."
				dialog "Her voice was"
				dialog "really deep for"
				dialog "a minute there..."
			elseif mresulta == 2 then
				dialog "[William's Spirit]"
				dialog "^990000Hey you sex crazed bastard!! Stop looking at my daughter like that before I rip out your eyes, and eat them with pasta!^000000"
				local name = PcName()
				wait()
				if getvar(VAR_SEX) == 1 then
					dialog("[", name , "]")
					dialog "Huh...?"
					dialog "C-come again?"
					wait()
					dialog "[Elenore]"
					dialog "Huh...?"
					dialog "Oh, Dad must have possessed me again. It happens to me and my sister all the time."
					wait()
					dialog("[", name , "]")
					dialog "No kidding?"
					dialog "Huh. Total bummer."
					wait()
					dialog "[Elenore]"
					dialog "Yeah..."
					dialog "Tell me about it."
				else
					dialog("[", name , "]")
					dialog "W-waaaaait~"
					dialog "But, But I'm a girl!"
					wait()
					dialog "[William's Spirit]"
					dialog "^990000What part of ^FF0000I will whup you where you stand^000000 ^990000do you not understand?! Now, quit it you pervert!^000000"
					wait()
					dialog "^3355FFWaaah~!"
					dialog "How did she"
					dialog "get all scary?!^000000"
				end
			end
		end
	end
	close()
end

npc("geffen_in","Waitress#elise",spr_4_F_01,70,67,3,4,4,"geffen_in_Waitresselise_7067")
function geffen_in_Waitresselise_7067()
	dialog "[Elisa]"
	dialog "Hello there~"
	dialog "Can I help you"
	dialog "with anything?"
	wait()
	local mresult = menu("May I ask for a drink?" ,"Is there any interesting gossip lately?")
	if mresult == 1 then
		dialog "[Elisa]"
		dialog "A..."
		dialog "Drink?"
		wait()
		dialog "[Elisa]"
		dialog "You know that we don't serve alcohol here anymore. We just have all these fake, flavorless drinks that have no effect. Yeah, they're pretty boring..."
		wait()
		dialog "[Elisa]"
		dialog "We pretty much only serve water around here. That, and really bad alcoholic imitation drinks."
		wait()
		dialog "[Elisa]"
		dialog "It's horrible that King Tristram III outlawed alcohol in the kingdom! It's probably the only bad decision he's made throughout his entire reign!"
	elseif mresult == 2 then
		local rumor_random = math.random(1,4)
		if rumor_random == 1 then
			dialog "[Elisa]"
			dialog "You know"
			dialog "what's so weird?"
			wait()
			dialog "[Elisa]"
			dialog "I went down to the Prontera Sanctuary, and I could have sworn"
			dialog "that a Priest got married to a Priestess!"
			wait()
			dialog "[Elisa]"
			dialog "I really had no idea whether or not Priests could marry, but since King Tristram III was there himself,"
			dialog "I suppose that it's okay!"
		elseif rumor_random == 2 then
			dialog "[Elisa]"
			dialog "I don't like to stereotype people, but haven't you noticed that Swordsmen and Knights"
			dialog "tend to be, you know..."
			wait()
			dialog "[Elisa]"
			dialog "...INT challenged?"
			dialog "All they seem to know"
			dialog "is smashing things!"
		elseif rumor_random == 3 then
			dialog "[Elisa]"
			dialog "Rumors...?"
			dialog "Hmmmm, well..."
			wait()
			dialog "[Elisa]"
			dialog "You know the name"
			dialog "of our kingdom, right?"
			dialog "The Rune-Midgarts Kingdom?"
			wait()
			dialog "[Elisa]"
			dialog "I hear that it was originally called the Rune-Midgard Kingdom, after our continent. However, for some reason, the name was changed to 'Rune-Midgarts.'"
			wait()
			dialog "[Elisa]"
			dialog "It was obviously a wise decision, since too many people kept confusing the our continent with our kingdom. Weird, huh?"
		elseif rumor_random == 4 then
			local mresult = math.random(1,2)
			if mresult == 1 then
				dialog "[Elisa]"
				dialog "Rumors...?"
				dialog "Hmmmm, well..."
				wait()
				dialog "[Elisa]"
				dialog "That's funny..."
				dialog "I, I can't think of anything. E-everything feels so fuzzy..."
				wait()
				dialog "..."
				wait()
				dialog "..."
				dialog "......"
				wait()
				dialog "[William's Spirit]"
				dialog "^990000Stay away from my daughter, or I'll beat your brains out, punk! Elisa's gonna marry a doctor! Or a lawyer!^000000"
				wait()
				local name = PcName()
				if getvar(VAR_SEX) == 1 then
					dialog("[", name , "]")
					dialog "Y-y-y-yes, sir!"
					wait()
					dialog "^3355FFThat was scary...!"
					dialog "It looks like a father's love endures forever, even in"
					dialog "the afterlife.^000000"
				else
					dialog("[", name , "]")
					dialog "But..."
					dialog "I'm a girl!"
					wait()
					dialog "[William's Spirit]"
					dialog "^990000WHAT...?!"
					dialog "That's even worse!!^000000"
					wait()
					dialog "^3355FFThat was scary...!"
					dialog "It looks like a father's love endures forever, even in the afterlife.^000000"
				end
			elseif mresult == 2 then
				dialog "[William's Spirit]"
				dialog "^990000How dare you try to pick up on my precious daughter! Do you wish to taste an angry father's fury?!^000000"
				wait()
				dialog "[Elisa]"
				dialog "W-whoa...!"
				dialog "I'm so sorry!"
				wait()
				dialog "[Elisa]"
				dialog "It's just..."
				dialog "The spirit of my father,"
				dialog "God rest his soul, is"
				dialog "a little overprotective!"
				wait()
				dialog "^3355FFYou step away."
				dialog "Very. Carefully.^000000"
			end
		end
	end
end

npc("geffen_in","Merchant Daven",spr_2_M_PHARMACIST,79,76,2,4,4,"geffen_in_Merchant_Daven_7976")
function geffen_in_Merchant_Daven_7976()
	dialog "[Merchant Daven]"
	dialog "I remember Geffen"
	dialog "back when it was boring. "
	wait()
	dialog "[Merchant Daven]"
	dialog "But now there are Mages and Wizards, and a flourishing"
	dialog "economy in this town!"
	wait()
	local mresult = menu("Mages...?","Economy?","Who are you?")
	if mresult == 1 then
		if getvar(VAR_JOB) == MAGICIAN and WIZARD then
			dialog "[Merchant Daven]"
			dialog "Mages are wielders of magic. But you would know more about that topic now, wouldn't you?"
		end
		if getvar(VAR_JOB) ~= MAGICIAN and WIZARD then
			dialog "[Merchant Daven]"
			dialog "Mages and Wizards are always carrying books and studying magic. That's just the way they are."
			wait()
			dialog "[Merchant Daven]"
			dialog "There's a Magic School in the NorthWest part of the city for Novices interested in becoming Mages. There, they can learn the basics of magic."
			wait()
			dialog "[Merchant Daven]"
			dialog "After becoming well experienced in the use of magic, Mages can become qualified to become Wizards."
			wait()
			dialog "[Merchant Daven]"
			dialog "Wizards have access to more powerful and destructive magic spells than Mages. Mages can apply to become Wizards at the top of Geffen Tower."
		end
	elseif mresult == 2 then
		if getvar(VAR_JOB) == BLACKSMITH then
			dialog "[Merchant Daven]"
			dialog "The economy...?"
			dialog "Why, that's all thanks to Blacksmiths! But you should know that already, shouldn't you?"
		end
		if getvar(VAR_JOB) ~= BLACKSMITH then
			dialog "[Merchant Daven]"
			dialog "Well, I guess you can thank the Blacksmiths for the economy here in Geffen. Sure, they always dirty, sweaty, smelly and talk kind of rudely..."
			wait()
			dialog "[Merchant Daven]"
			dialog "But they're hard working people. Also, the ores they refine and the weapons they create are high in demand."
			wait()
			dialog "[Merchant Daven]"
			dialog "Adventurers pay Blacksmiths lots of their hard earned zeny for the high quality weapons that only they can create."
		end
	elseif mresult == 3 then
		dialog "[Merchant Daven]"
		dialog "Me? I'm the world's most prettiest street merchant. Heh heh~"
		wait()
		local mresult = menu("...^EE0000Magnum Break^000000!")
		if mresult == 1 then
			if (getvar(VAR_JOB) == SWORDMAN) then
				dialog "[Merchant Daven]"
				dialog "Whoa, whoa!"
				dialog "It was just a joke!"
				dialog "Forgive me!"
			else
				dialog "[Merchant Daven]"
				dialog "Magnum Break?"
				dialog "But you can't even do that, can you?"
			end
			close()
		end
	end
end

npc("geffen_in","Hadenheim",spr_4_M_SEAMAN,114,73,5,0,0,"geffen_in_Hadenheim_11473")
function geffen_in_Hadenheim_11473()
	dialog "[Hans Hadenheim]"
	dialog "Man, the Rune-Midgard continent sure is big! How's it going, youngster?"
	wait()
	dialog "[Hans Hadenheim]"
	dialog "This Geffen sure is strange. But it was worth it to travel here all the way from the Schubaltzwald Republic."
	wait()
	local mresult = menu("Schubaltzwald Republic?","So, why are you traveling?")
	if mresult == 1 then
		dialog "[Hans Hadenheim]"
		dialog "You..."
		dialog "Don't know the"
		dialog "Schubaltzwald Republic?"
		wait()
		dialog "[Hans Hadenheim]"
		dialog "You know, ally of the Rune-Midgarts Kingdom. Um... Our capital city is Juno?"
		wait()
		dialog "[Hans Hadenheim]"
		dialog "You should really"
		dialog "read up on your"
		dialog "world events!"
		close()
	elseif mresult == 2 then
		dialog "[Hans Hadenheim]"
		dialog "Oh, you know, for business. It seems there's a lot of good money in foreign commerce."
		wait()
		dialog "[Hans Hadenheim]"
		dialog "I mean, all these new cities are being discovered by explorers, so import and export trade is really booming!"
		wait()

		if ((getvar(VAR_JOB) == MERCHANT) or (getvar(VAR_JOB) == BLACKSMITH) or (getvar(VAR_JOB) == ALCHEMIST)) then
			dialog "[Hans Hadenheim]"
			dialog "You're in the trading business yourself, right? So of course you'd understand that we're in a Golden Age of trade!"
		elseif getvar(VAR_JOB) == NOVICE then
			dialog "[Hans Handenheim]"
			dialog "I guess..."
			dialog "Those kinds of concepts might be too high brow for a rookie like you."
		else
			dialog "[Hans Handenheim]"
			dialog "Anyway..."
		end
		dialog "[Hans Hadenheim]"
		dialog "Have you been some of these new lands? They're really interesting and you can learn a lot of new things from these foreign cultures."
		wait()
		dialog "[Hans Hadenheim]"
		dialog "Still, if you want to go sightseeing, I personally recommend that you visit my hometown of Juno. It's quite beautiful, you know."
		close()
	end
end

npc("geffen_in","Psychic Advisor",spr_4_M_BIBI,39,127,2,5,5,"geffen_in_Psychic_Advisor_39127")
function geffen_in_Psychic_Advisor_39127()
	dialog "[Psychic Advisor]"
	dialog "Ah..."
	dialog "Don't tell me! You've come to have your fortune told, yes? I know,"
	dialog "I know... I can see the future! So what kind of fortune do you want?"
	wait()
	local mresult = menu("Life!","Love!","Money!","Grades!","Future!","Fashion!")
	if mresult == 1 then
		local guide_life_random = math.random(1,5)
		if guide_life_random == 1 then
			dialog "[Psychic Advisor]"
			dialog "Life...?"
			dialog "Wow, that's a really broad category. But let me contact some spirits of the spirit world and I'll see what I can do."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Hmmm..."
			dialog "Alright, I got something. Ummmm, you will live to be very, very old. How old you ask?"
			wait()
			dialog "[Psychic Advisor]"
			dialog "^333333*cough!*^000000ty-nine years old. Isn't that good news? That's a ripe old age, and you have plenty of blissful years left to enjoy."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Also, you'll always be successful. You'll successfully win in life and you'll successfully lose in life!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "You might not understand that little nugget of wisdom now, but as you learn more about this crazy, crazy world, it will make more sense."
			wait()
		end
		if guide_life_random == 2 then
			dialog "[Psychic Advisor]"
			dialog "Hmm..."
			dialog "What can I tell you about life? Let me contact the spirit world real quick~"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Alright, I got it!"
			dialog "Your dreams"
			dialog "will come true!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Of course, I'm not sure exactly which dreams will come true, but hopefully the good dreams that you've had will become reality, rather than any of your weird nightmares."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Which dreams exactly? Well, the spirits are awfully reticent today. They're not exactly in the mood to talk. Spirits have lives too, you know. Wait, did that make any sense?"
			wait()
		end
		if guide_life_random == 3 then
			dialog "[Psychic Advisor]"
			dialog "I sense that you may be about to make a rash decision that you might regret. I must advise you to slow down and think first."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Although the pressure may be high, remember that any decision made in excitement is usually a bad decision. Take a deep breath and relax."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Even if you're running out of time, it's better to slowly plan things out so that you don't waste any of your efforts, or make costly mistakes."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Remember that calm,"
			dialog "collected patience"
			dialog "is the key to overcoming crisis."
			wait()
		end
		if guide_life_random == 4 then
			dialog "[Psychic Advisor]"
			dialog "Hmmm... I sense that you are experiencing a loss of direction in life. Should you prioritize security or happiness?"
			wait()
			dialog "[Psychic Advisor]"
			dialog "I suggest that you think fully and carefully before deciding what path is best for you. And remember, you can only learn from your mistakes."
			wait()
			dialog "[Psychic Advisor]"
			dialog "If you plan carefully and perform positive, constructive actions with a good attitude, you can"
			dialog "have it all!"
			wait()
		end
		if guide_life_random == 5 then
			dialog "[Psychic Advisor]"
			dialog "Hmm..."
			dialog "I sense that you've had a quarrel with someone close to you. Someone for whom you care for dearly."
			wait()
			dialog "[Psychic Advisor]"
			dialog "You must take the initiative! Try and resolve this matter without getting too caught up in your emotions."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Try to make amends, swallow your pride and apologize sincerely if you have to. Isn't friendship worth it? I think so."
			wait()
		end
		dialog "[Psychic Advisor]"
		dialog "Well, I hope I settled any doubts you've had about the future. That is, after all, my job as a professional psychic consultant. Come back anytime~"
		close()
	elseif mresult == 2 then
		local guide_love_random = math.random(1,4)
		if guide_love_random == 1 then
			dialog "[Psychic Advisor]"
			dialog "You want to know your Love fortune? Oh ho~ Then there must be somebody that you like! Come on, you can tell me!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Oh right..."
			dialog "Um, I sense a strong love energy emanating from your soul. It's quite intimidating and pushes away the weak and the spineless."
			wait()
			dialog "[Psychic Advisor]"
			dialog "So basically, I foresee that you'll only be attracting really strong people soon. You know, like professional athletes, bodybuilders, construction workers, that sort of thing."
			wait()
			dialog "[Psychic Advisor]"
			dialog "So if this is what you want, congratulations! Fortune smiles upon you with joy this day."
			wait()
			dialog "[Psychic Advisor]"
			dialog "But if this is the opposite of what you want, well, I'm sorry. Fortune smiles upon you with sarcasm this day. But it's not too late to change destiny!"
			wait()
		end
		if guide_love_random == 2 then
			dialog "[Psychic Advisor]"
			dialog "Looooove, eh? "
			dialog "Let me contact"
			dialog "the spirits for a second."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Ah! An old flame will return! I don't know if they'll fall in love with you again, ask you for money, or if that person's back for revenge..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "But an old flame will definitely resurface in your life. Somehow. So if that's good news, congratulations! But, if that's bad news, then be careful!"
			wait()
		end
		if guide_love_random == 3 then
			dialog "[Psychic Advisor]"
			dialog "Um..."
			if (getvar(VAR_SEX) == 1) then
				dialog "The girl that you"
			else
				dialog "The boy that you"
			end
			dialog "are currently seeing"
			dialog "is perfect for you!"
			wait()
			local mresult_ = menu("How did you know?","You're so wrong!","I'm single!")
			if mresult_ == 1 then
				dialog "[Psychic Advisor]"
				dialog "Well..."
				dialog "We psychics are pretty accurate at this kind of thing. And it's so good to see that you're really happy with your partner!"
				close()
				return
			elseif mresult_ == 2 then
				dialog "[Psychic Advisor]"
				dialog "You didn't let me finish my sentence. What I meant to say was..."
				wait()
				dialog "[Psychic Advisor]"
				if (getvar(VAR_SEX) == 1) then
					dialog "The girl that you"
				else
					dialog "The boy that you"
				end
				dialog "are currently seeing is perfect for you if you want to live the rest of your life in utter misery!"
				wait()
				dialog "[Psychic Advisor]"
				dialog "But even if you break up, do it as soon as possible and try to be good friends after the matter."
				wait()
				dialog "[Psychic Advisor]"
				dialog "It'll make better people out of both of you. But that's just what I think."
				close()
				return
			elseif mresult_ == 3 then
				dialog "[Psychic Advisor]"
				dialog "Oh..."
				dialog "Um, I'm sorry."
				dialog "Sometimes, I get the future and the present mixed up. You know, since I'm always looking into the future...?"
				wait()
				dialog "[Psychic Advisor]"

				if (getvar(VAR_SEX) == 1) then
					dialog "What I meant to say was"
					dialog "^3355FFyou and the perfect woman will soon fall in love^000000. Yes, that's what I meant!"
				else
					dialog "What I meant to say was"
					dialog "^3355FFyou will soon be swept off your feet by the perfect guy^000000. Yes, that's what I meant!"
				end
				close()
				return
			end
			return
		end
		if guide_love_random == 4 then
			dialog "[Psychic Advisor]"
			dialog "Looking for romance, eh? Life can always use a little more excitement."
			wait()
			dialog "[Psychic Advisor]"
			dialog "That's strange, I foresee a Love Triangle in your future. No, wait! A Love..."
			dialog "Decagon?"
			wait()
			dialog "[Psychic Advisor]"
			dialog "What's the shape with eleven sides? Now, you can't expect me to know that off the top of my head. I'm a psychic, not a mathematician!"
			wait()
		end
		dialog "[Psychic Advisor]"
		dialog "Love is always fun! Even in this bleak world, love surrounds us in its inviting glow. Treasure that person who is special to you, and come back for another reading!"
		close()
	elseif mresult == 3 then
		local guide_zeny_random = math.random(1,3)
		if guide_zeny_random == 1 then
			dialog "[Psychic Advisor]"
			dialog "Money? Well, you must be more fortunate in money than I am. After all, I sit here all day and give this service for free!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Well..."
			dialog "Um, the spirits tell me that you might not win the lottery, no matter how many tickets you buy. I'm sorry, but it's true."
			wait()
			dialog "[Psychic Advisor]"
			dialog "But I just saved you a lifetime's worth of lottery tickets! That could be quite a hefty sum of money!"
			wait()
		end
		if guide_zeny_random == 2 then
			dialog "[Psychic Advisor]"
			dialog "Ah yes. Let me contact the spirit world. They usually have sound financial advice, despite the fact that don't have any sort of economy over there."
			wait()
			dialog "[Psychic Advisor]"
			dialog "First off, be accountable for your own money and use a budget that works for you. A good rule of thumb? For every ten zeny you earn, put one zeny aside and either save it or invest it for later."
			wait()
			dialog "[Psychic Advisor]"
			dialog "And whatever you do, don't work as a psychic advisor in Rune-Midgard. The real cash, apparently, is in discovering new countries. Why didn't I do that?!"
			wait()
		end
		if guide_zeny_random == 3 then
			dialog "[Psychic Advisor]"
			dialog "So you want to know about money, eh? Let me commune with the spirits of the supernatural realm..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Ah yes. They are telling me that it's best to be moderate in all things. Certainly, you must make sure that your expeditures don't exceed your budget."
			wait()
			dialog "[Psychic Advisor]"
			dialog "However, you should also avoid gambling with your money. By that, I mean you should save and invest carefully. Don't be tempted into risky get-rich-quick schemes!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "On the other hand, get-rich-not-as-quick schemes are okay, so long as you know what you are doing. I'm right, aren't I?"
			wait()
		end
		dialog "[Psychic Advisor]"
		dialog "Well, you need money to live, but having money alone isn't living. Don't forget that there are other important things. And try not to stress out, okay?"
		close()
	elseif mresult == 4 then
		local guide_study_random = math.random(1,4)
		if guide_study_random == 1 then
			dialog "[Psychic Advisor]"
			dialog "Your grades? You're still in school? I'm impressed! Your eyes tell me you are rather mature for your age. Alright, let me contact the spirits..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Hm? All the spirits said was 'Did you study?' Well, I guess I answered your question with yet another question!"
			wait()
		end
		if guide_study_random == 2 then
			dialog "[Psychic Advisor]"
			dialog "You're asking me about your grades? That's weird. I mean, they only ask about your report card at school, right?"
			wait()
			dialog "[Psychic Advisor]"
			dialog "An education is really important, but don't be discouraged if your grades aren't as good as you'd like."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Perhaps your style of learning isn't really supported by your school, or maybe you're not that interested in academics. Understandable."
			wait()
			dialog "[Psychic Advisor]"
			dialog "The spirits tell me that you should experiment with different learning styles, so that you can make sure that you get the grades that you want."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Yeah..."
			dialog "The spirits are"
			dialog "awfully lazy today."
			wait()
		end
		if guide_study_random == 3 then
			dialog "[Psychic Advisor]"
			dialog "^FF0000F MINUS^000000!"
			dialog "Hahahahahahaha~!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Oh, I'm sorry, I just love doing that. Okay, let me ask the spirits for real this time. Hmmmm..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Hmm. The spirits are being awfully rude today. They're saying, 'If you're so worried about your grades, why don't you ask your teacher?'"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Now that I think about it, they do have a point. Why don't you ask your teacher, professor or whatever to see if you have any problems?"
			wait()
			dialog "[Psychic Advisor]"
			dialog "I mean, they're being paid to help you. And well, my service is free. So... Yeah."
			wait()
		end
		if guide_study_random == 4 then
			dialog "[Psychic Advisor]"
			dialog "Oh cool!"
			dialog "I sense that you will soon be receiving straight A's..."
			dialog "In Effort!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Now, I couldn't tell you what your real grades are. You might be destined to get an A in every class or subject, but if I told you that..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "You'd probably get cocky, slack off on studying, fail your classes and cause a time paradox. I mean, I have to actually be in the future to actually see it, you know?"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Instead of worrying about time paradoxes, why don't you make your own destiny?"
			wait()
		end
		dialog "[Psychic Advisor]"
		dialog "Well, in any case, concentrating on your studies is tough, but it can be rewarding. I hope you do well in whatever you choose to do~"
		close()
	elseif mresult == 5 then
		dialog "[Psychic Advisor]"
		dialog "The future? I thought it was implied that any fortune I tell you is about the future in the specific field that you choose."
		wait()
		dialog "[Psychic Advisor]"
		dialog "I guess you want to know about the future in general. Let me commune with the spirits, and we'll see what they have to say, okay?"
		wait()
		local guide_future_random = math.random(1,4)
		if guide_future_random == 1 then
			dialog "[Psychic Advisor]"
			dialog "Hmm..."
			dialog "In the future, Sex, Violence, and Rock and Roll are completely abolished. Mankind experiences an era of complete peace and utter boredom."
			wait()
			dialog "[Psychic Advisor]"
			dialog "I don't know how far in the future that will occur, but it better not happen soon!"
			wait()
		end
		if guide_future_random == 2 then
			dialog "[Psychic Advisor]"
			dialog "In the future, Earth is protected by a single giant robot: Plutonium Overdrive Ignition Negatron G a.k.a POING."
			wait()
			dialog "[Psychic Advisor]"
			dialog "POING fights off many Kylorian invasions for years, until it is finally defeated by Dr. Hubris' Mechanical Overlord: Nyxltron 47."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Luckily, Doctor Pyeus finishes the Gravitron Oblivion Drive for the Plutonium Overdrive Ignition Negatron G system just in time."
			wait()
			dialog "[Psychic Advisor]"
			dialog "And so, POING rises again, reborn as the Automatic Hero: GOD-POING. Of course, Nyxltron 47 is destroyed."
			wait()
			dialog "[Psychic Advisor]"
			dialog "That's probably the most important thing you'll ever learn about the future. Trust me, the rest of it's boring."
			wait()
		end
		if guide_future_random == 3 then
			dialog "[Psychic Advisor]"
			dialog "In the future, believe it or not, the internet will be replaced by a giant brain. I don't know how, but trust me, this brain's huge."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Thanks to the number of internet web journals, this brain becomes peaceful, and decides not to take over the world as it originally planned."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Yes..."
			dialog "This weird brain thing definitely becomes a source for good, a loving benefactor to the human race, so long as people keep writing personal entries on the internet."
			wait()
		end
		if guide_future_random == 4 then
			dialog "[Psychic Advisor]"
			dialog "In the future, they genetically engineer all sorts of plants."
			dialog "So many kinds! It's crazy I tell you!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Eventually, they create trees that grow celebrity impersonators. Today, it looks like a miracle of science, and a threat to Hollywood starlets."
			wait()
			dialog "[Psychic Advisor]"
			dialog "However, the people who buy these trees are the same kind who who wear those really tacky shirts..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "You know, the kind with a lame sense of humor where it will have the word 'Cat-o-strophic' and there's this little kitten dressed like a mad scientist or something."
			wait()
		end
		dialog "[Psychic Advisor]"
		dialog "Well..."
		dialog "That's my prediction. Can you really argue with the wisdom of the spirit world?"
		close()
	elseif mresult == 6 then
		dialog "[Psychic Advisor]"
		dialog "Fashion...?"
		dialog "What does that have to do with matters of the supernatural? Well, um, let me contact the spirits. Ah! Here we go..."
		wait()
		local guide_fashion_random = math.random(1,5)
		if guide_fashion_random == 1 then
			dialog "[Psychic Advisor]"
			dialog "..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "..."
			dialog "......"
			wait()
			dialog "[Psychic Advisor]"
			dialog "I'm seeing something..."
			dialog "It looks like, a..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "A..."
			dialog "A... Fish?"
			dialog "On someone's head?"
			wait()
			dialog "[Psychic Advisor]"
			dialog "..."
			dialog "It was the most horrible vision!"
			wait()
		end
		if guide_fashion_random == 2 then
			dialog "[Psychic Advisor]"
			dialog "It feels nice to wear expensive headgears! And it's nice to wear fancy clothing too! But remember..."
			wait()
			dialog "[Psychic Advisor]"
			dialog "No matter how much zeny you may put into your wardrobe, you'll look silly unless you match the things you wear."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Now, here's a good example of a mismatched outfit. Imagine some Crusader wearing a Crown, Elven ears and an Iron Cain."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Instead of looking cool, they look sort of like an Evil Keebler Prince. Spooky, huh?"
			wait()
		end
		if guide_fashion_random == 3 then
			dialog "[Psychic Advisor]"
			dialog "I predict..."
			dialog "That Cowboy Hats will be very popular among female"
			dialog "Super Novices"
			dialog "very soon!"
			wait()
			dialog "[Psychic Advisor]"
			dialog "Come on, wouldn't you agree? Cowboy Hats look great on Super Novices!"
			wait()
		end
		if guide_fashion_random == 4 then
			dialog "[Psychic Advisor]"
			dialog "Sometimes, it's a cute idea to follow a theme. Like, if you wear both Angel Wing and Angel Wing Ears at the same time."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Of course, that might be too expensive for most people, but you get the idea."
			wait()
		end
		if guide_fashion_random == 5 then
			dialog "[Psychic Advisor]"
			dialog "I now predict that the Sombrero will be come very popular when a mass group of Bards form a guild in which the members only wear Sombreros."
			wait()
			dialog "[Psychic Advisor]"
			dialog "Or was it the Feathered Bonnet that's supposed to skyrocket in popularity? Both of those hats are just sooo stylish, especially on Bards..."
			wait()
		end
		dialog "[Psychic Advisor]"
		dialog "Well..."
		dialog "We psychic consultants aren't really trained for fashion matters, but I hope I was at least a little bit of help to you."
	end
end


npc("geffen_in","Monster Scholar",spr_4_F_01,109,72,2,5,5,"geffen_in_Monster_Scholar_10972")
function geffen_in_Monster_Scholar_10972()
	dialog "[Estheres]"
	dialog "Hello, I'm the resident expert of Monsterology here in Geffen. Is there anything in particular that you're curious about?"
	wait()
	local mresult = menu("Monsters in the Area.","Recent Monster News.","Era of Monsters","Jellopy Theory.")
	if mresult == 1 then
		dialog "[Estheres]"
		dialog "Well, as you may already know, since Wizards and Mages train in Geffen, monsters tend to stay away from the city. So tired adventurers are welcome to rest here."
		wait()
		dialog "[Estheres]"
		dialog "Still, if you want to seek out strong monsters, you can cross the bridge to the West and fight Kobolds."
		wait()

		if getvar(VAR_CLEVEL) > 40 then
			dialog "[Estheres]"
			dialog "You look strong enough for that kind of challenge. But if you see anyone more reckless cross the Western bridge, you might want to give them a warning."
		end
		if getvar(VAR_CLEVEL) < 40 then
			dialog "[Estheres]"
			dialog "Um, but if you're planning to go there, you better not go alone. I really recommend that you be well prepared if you're gonna fight those kinds of monsters."
		end
	elseif mresult == 2 then
		dialog "[Estheres]"
		dialog "Recent news?"
		dialog "Well, the Juno Monster Musuem is now open to the public. They have a fascinating exhibit and various monsters are now on display!"
		wait()
		dialog "[Estheres]"
		dialog "I mean, I've read about all sorts of monsters in the Prontera and Juno Libraries, and encountered a few in the wild, but now I get a chance to see some strong monsters in real life!"
		wait()
		dialog "[Estheres]"
		dialog "What's also exciting is the exploration achieved by you adventurers for the Rune-Midgarts Kingdom."
		wait()
		dialog "[Estheres]"
		dialog "When a new land is discovered, there are usually unique monsters that are indigenous to that area."
		wait()
		dialog "[Estheres]"
		dialog "So new monsters are basically being discovered all the time! The variety of creatures that roam this world is really quite fascinating."
	elseif mresult == 3 then
		dialog "[Estheres]"
		dialog "The truth is that monsters have existed since ancient times. The Era of Monsters was when the power of the monsters was at its peak."
		wait()
		dialog "[Estheres]"
		dialog "They've plagued humans for a long time, but were completely annihilated in a great war between mankind and the monsters."
		wait()
		dialog "[Estheres]"
		dialog "However, as the balance of nature has changed, the monsters have inevitably returned. Not too many people know this, but most monsters were gentle creatures at one time. It's sad, really..."
	elseif mresult == 4 then
		dialog "[Estheres]"
		dialog "Ah yes, Jellopy."
		dialog "It seems that almost every monster around is composed of Jellopy. But is it just a crystallization made by some monsters, or is it... More?"
		wait()
		dialog "[Estheres]"
		dialog "From our research of ancient monsters and studies of recently discovered monsters, it seems that that traces of Jellopy cannot be found in stronger beasts."
		wait()
		dialog "[Estheres]"
		dialog "Still, may of us believe that there might be some relation to Jellopy and monsters, although it may be hard to believe that there is any."
		wait()
		dialog "[Estheres]"
		dialog "It's possible that Jellopy may be linked to a monster's personality and strength. So, if you mixed Jellopy with something, you'd create a stronger monster."
		wait()
		dialog "[Estheres]"
		dialog "Of course, doing that kind of experimentation just seems dangerous. You might be able to unleash some really scary monsters into the world..."
	end
end

npc("geffen_in","Inn Employee",spr_1_M_INNKEEPER,70,64,3,0,0,"geffen_in_Inn_Employee_7064")
function geffen_in_Inn_Employee_7064()
	dialog "[Employee Cena]"
	dialog "Welcome to 'Ifrit,'"
	dialog "the one and only Inn"
	dialog "in the city of Geffen."
	dialog "How may I help you?"
	wait()
	local mresult = menu("Save","Take a Rest -> 5,000 zeny","Cancel")
	if mresult == 1 then
		dialog "[Employee Cena]"
		dialog "Your respawn point"
		dialog "has been saved."
		dialog "Thank you,"
		dialog "please come again."
		checkpoint("geffen_in",70,59)
		close()
	elseif mresult == 2 then
		if getvar(VAR_MONEY) > 4999 then
			dialog "[Employee Cena]"
			dialog "Thank you."
			dialog "I hope you"
			dialog "enjoy your rest~"
			close()
			dropgold(5000)
			hpheal(100)
			spheal(100)
			moveto("geffen_in",31,31)
		else
			dialog "[Employee Cena]"
			dialog "I'm sorry, but the service charge is 5,000 zeny. Please make sure that you have enough money to check in next time, okay?"
			close()
		end
	elseif mresult == 3 then
	end
end
