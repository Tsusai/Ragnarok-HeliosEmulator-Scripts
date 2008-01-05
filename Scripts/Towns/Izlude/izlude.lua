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
--| 29/12/2007                                      |--
--|   -First Version for Helios  [Spre]             |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("izlude","Sailor",SPRITE_4W_SAILOR,201,181,2,5,5,"izlude_Sailor_201181")
function izlude_Sailor_201181()
	dialog "[Sailor]"
	dialog "Hey everybody!"
	dialog "Attention, attention!"
	dialog "Come and ride the wind"
	dialog "on a fascinating Ship!"
	dialog "Hurry, hurry!"
	wait()
	local mresulta = menu("Byalan Island -> 150 Zeny.","Alberta Marina  -> 500 Zeny.","Cancel.")
	if mresulta == 1 then
		if getvar(VAR_MONEY) < 15 then
			dialog "[Sailor]"
			dialog "150 Zeny!"
			dialog "Only 150 Zeny to ride!"
			close()
			return
		end
		dropgold(150)
		moveto("izlu2dun",107,50)
	elseif mresulta == 2 then
		if getvar(VAR_MONEY) < 500 then
			dialog "[Sailor]"
			dialog "500 Zeny!"
			dialog "Only 500 Zeny to ride!"
			close()
			return
		end
		dropgold(500)
		moveto("alberta",188,169)
	elseif mresulta == 3 then
	end
end

npc("izlu2dun","Sailor",SPRITE_4W_SAILOR,108,27,0,5,5,"izlu2dun_Sailor_10827")
function izlu2dun_Sailor_10827()
	dialog "[Sailor]"
	dialog "Wanna"
	dialog "head back?"
	wait()
	local mresulta = menu("Yeah, I'm tired to death.","Nope, I love this place!")
	if mresulta == 1 then
		moveto("izlude",176,182)
	elseif mresulta == 2 then
	end
end

npc("izlude","Bonne",SPRITE_4_F_01,55,74,2,5,5,"izlude_Bonne_5574")
function izlude_Bonne_5574()
	dialog "[Bonne]"
	dialog "Greetings!"
	dialog "Izlude welcomes you."
	wait()
	dialog "[Bonne]"
	dialog "Izlude is the satellite city of Prontera, capital of the Rune-Midgarts kingdom."
	wait()
	dialog "[Bonne]"
	dialog "Izlude is key to our kingdom because of the Swordsman Association located here, as well as the fact that Izlude is in charge of protecting the Rune-Midgard coastline."
	wait()
	dialog "[Bonne]"
	dialog "I know, this bridge might look weak and fragile, but it is actually state of the art, built with the most sophisticated technology."
	wait()
	dialog "[Bonne]"
	dialog "No matter how strong storms may be, or how many people may stand on it, this bridge will NEEEEVER collapse."
	wait()
	dialog "[Bonne]"
	dialog "Please enjoy"
	dialog "your visit"
	dialog "here in Izlude."
	close()
end

npc("izlude","Charfri",SPRITE_4_F_02,135,78,2,5,5,"izlude_Charfri_13578")
function izlude_Charfri_13578()
	local mresult = math.random(1,2)
	if mresult == 1 then
		dialog "[Charfri]"
		dialog "Some people may think Izlude is just a satellite city of Prontera, and not really that important..."
		wait()
		dialog "[Charfri]"
		dialog "But Izlude is a beautiful town right next to the ocean, as well as beautiful Bylan Island."
		wait()
		dialog "[Charfri]"
		dialog "You'll have to board on a ship at the port to get to Byalan Island. There are dangerous dungeons on that island, so don't go snooping around just anywhere."
		close()
	elseif mresult == 2 then
		dialog "[Charfri]"
		dialog "Though it is very beautiful, Byalan Island has a mysterious dungeon that extends deep under the sea."
		wait()
		dialog "[Charfri]"
		dialog "People who've actually been there have said that if you go deep enough, the dungeon actually descends underwater."
		wait()
		dialog "[Charfri]"
		dialog "Surprisingly, once you're underwater, you can breathe just like a fish. Maybe some kind of supernatural force is in effect."
		wait()
		dialog "[Charfri]"
		dialog "Ah..."
		dialog "The people who've seen the underwater view say it is so fantastic that they've kept dreaming of it ever since."
		wait()
		dialog "[Charfri]"
		dialog "But unfortunately, the monsters are too strong for ordinary people to merely go sight seeing there. Still, just once, I'd like to go down there..."
		close()
	end
end

npc("izlude","Cuskoal",SPRITE_4_F_TELEPORTER,119,121,2,5,5,"izlude_Cuskoal_119121")
function izlude_Cuskoal_119121()
	local mresult = math.random(1,2)
	if mresult == 1 then
		dialog "[Cuskoal]"
		dialog "The Arena here is THE place for capable young people from all over the Rune-Midgarts Kingdom to challenge themselves and test their skills."
		wait()
		dialog "[Cuskoal]"
		dialog "You can battle with monsters of differing levels. So, the number of stages you survive will be a testiment to your battle prowess."
		wait()
		dialog "[Cuskoal]"
		dialog "So, whaddya say?"
		close()
	elseif mresult == 2 then
		dialog "[Cuskoal]"
		dialog "The pubs in Prontera are always full of people from local areas and from out-of-town. It can get pretty busy."
		wait()
		dialog "[Cuskoal]"
		dialog "It's a pretty good place to stop by for general information and to listen to rumors."
		wait()
		dialog "[Cuskoal]"
		dialog "So if you listen carefully, you just might get lucky and learn some very useful information for yourself."
		close()
	end
end

npc("izlude","Dega",SPRITE_4_M_02,150,118,2,5,5,"izlude_Dega_150118")
function izlude_Dega_150118()
	local mresult = math.random(1,3)
	if mresult == 1 then
		dialog "[Dega]"
		dialog "Mt. Mjornir, located north of Prontera, is a tough"
		dialog "and steep climb."
		wait()
		dialog "[Dega]"
		dialog "Aside from the dangers of the mountain itself, insanely vicious insects live there too. I mean, they'll just attack you for no reason."
		wait()
		dialog "[Dega]"
		dialog "If you ever want to visit somewhere past Mt. Mjolnir, then you prepare yourself for the challenge.  Or you could walk around it."
		close()
	elseif mresult == 2 then
		dialog "[Dega]"
		dialog "Some monsters in the world have the unique ability to sense mystical energy, and can detect Magic spells before they are cast."
		wait()
		dialog "[Dega]"
		dialog "Golem of the desert is one of them. Don't underestimate it due to its sluggishness..."
		wait()
		dialog "[Dega]"
		dialog "If you try to cast magic near it, it will notice and saunter over to smash you. So you better watch out for Golem."
		close()
		return
	elseif mresult == 3 then
		dialog "[Dega]"
		dialog "There's a very delightful place where you can find every"
		dialog "type of Poring."
		wait()
		dialog "[Dega]"
		dialog "It's somewhere near the bridge connecting the forest and the desert, on the way to the city of Payon which is Southeast from here."
		wait()
		dialog "[Dega]"
		dialog "There are not only pink Porings but also Drops, which can be found at the desert, and the green Poporing."
		wait()
		dialog "[Dega]"
		dialog "But be careful, before you realize it, you may come face to face with Ghostring, a deadly Poring that floats around in the air like a ghost."
		wait()
		dialog "[Dega]"
		dialog "Well, of course, they are all very cute, but Ghostring is an EXCEPTION. It is very very dangerous."
		wait()
		dialog "[Dega]"
		dialog "If you are lucky enough, you might even bump into Angelring, the Poring with Angel wings."
		wait()
		while(1) do
			local mresult = menu("Ghostring?","Angelring?","End Conversation.")
			if mresult == 1 then
				dialog "[Dega]"
				dialog "Ghostring is a grayish Poring that floats around in the air like a ghost. Just like other ghosts, physical attacks can't do any damage to it."
				wait()
				dialog "[Dega]"
				dialog "Those whose main attack methods are physical like Swordman and Archer might have to run for their lives when facing Ghostrings."
				wait()
				dialog "[Dega]"
				dialog "But don't leave just yet~! There is great news for people with those jobs. Making a weapon of some elemental property is the key."
				wait()
				dialog "[Dega]"
				dialog "This way, even a Swordman or an Archer can inflict damage, the way Magic does, on Ghostrings."
				wait()
			elseif mresult == 2 then
				dialog "[Dega]"
				dialog "Angelrings are immune to Magic attacks. If people who can only attack with Magic face an Angelring, then it's time for"
				dialog "them to run."
				wait()
				dialog "[Dega]"
				dialog "If you've got an extra knife or sword, you could give it a shot. But it will be very difficult alone, don't you think?"
				wait()
			elseif mresult == 3 then
				dialog "[Dega]"
				dialog "Good Luck~"
				close()
				break
			end
		end
	end
end

npc("izlude","Kylick",SPRITE_4W_M_01,150,143,2,5,5,"izlude_Kylick_150143")
function izlude_Kylick_150143()
	local mresult = math.random(1,2)
	if mresult == 1 then
		dialog "[Kylick]"
		dialog "Don't you think Binoculars"
		dialog "are really COOL?! You can"
		dialog "see all sorts of places...!"
		wait()
		dialog "[Kylick]"
		dialog "Here in Izlude, we are responsible for maintaining peace not only on land but also at sea. That's why this city has a huge telescope."
		wait()
		dialog "[Kylick]"
		dialog "This telecope constantly watches over the sea, so that we can prevent any serious trouble from happening. You know..."
		wait()
		dialog "[Kylick]"
		dialog "An ounce of"
		dialog "prevention is worth"
		dialog "a pound of cure"
		dialog "after all, right?"
		close()
	elseif mresult == 2 then
		dialog "[Kylick]"
		dialog "I was thinking, even though the people of Izlude live so close to the ocean..."
		wait()
		dialog "[Kylick]"
		dialog "There are other cultures that have completely developed by living off of the sea. Of course, I'm talking about Amatsu."
		wait()
		dialog "[Kylick]"
		dialog "I hear the cuisine there is really good! Although the idea of eating raw fish is new to me, I would love to go there, and try it just once!"
		close()
	end
end

npc("izlude","Red",SPRITE_4_M_03,56,126,2,5,5,"izlude_Red_56126")
function izlude_Red_56126()
	dialog "[Red]"
	dialog "The only skill that's needed for a Swordman is ^FF2400Bash^000000! Bash, Bash and ONLY ^FF2400Bash^000000! No need to waste time and effort for smaller skills! Everything else is for cowards and wusses!"
	wait()
	dialog "[Cebalis]"
	dialog "What are you talking about!? The ideal Swordman resolutely stands alone, surrounded by countless enemies and smashing them all with one awesome attack."
	wait()
	dialog "[Cebalis]"
	dialog "^EE0000MAGNUM BREAK!^000000"
	dialog "That's right, Magnum Break"
	dialog "is the skill that does"
	dialog "the job right~!!"
	wait()
	dialog "[Cebalis]"
	dialog "Well... Sometimes the explosive damage might accidentally hit some wandering monsters, and those guys end up coming after you, but that's a risk a Swordman should be willing to take!!"
	wait()
	dialog "[Red]"
	dialog "That's exactly why you're dumb, you idiot! And what's this about the 'the ideal Swordman?' I still remember the last time you used Magnum Break..."
	wait()
	dialog "[Red]"
	dialog "You ended up running away from all those monsters you hit with that stupid skill! Weakling! All those Porings around you got hit and they all tried to kill you. "
	wait()
	dialog "[Cebalis]"
	dialog "Hmpf. As I recall, you were running away too, apparently too busy to use your precious Bash. In any case, Magnum Break is THE skill for a Swordman~!!"
	wait()
	dialog "[Cebalis]"
	dialog "Something simplistic like Bash"
	dialog "is just one of the little steps towards Magnum Break."
	wait()
	dialog "[Red]"
	dialog "Oh man~"
	dialog "Hey, I know you just"
	dialog "heard everything."
	dialog "So what do you think?"
	wait()
	dialog "[Red]"
	dialog "Which one do you think is better? The critical damage skill, ^FF2400Bash^000000, or the Splash damage skill, ^EE0000Magnum Break^000000?"
	wait()
	local mresult = menu("Bash","Magnum Break")
	if mresult == 1 then
		if getvar(VAR_JOB) == SWORDMAN and KNIGHT then
			dialog "[Red]"
			dialog "Hahahaha!!! I knew you'd see things my way!! You ARE a great guy!! Undoubtedly, only ^FF2400Bash^000000 suits a Swordman. Please tell that to this BONEHEAD over here~ Hahaha!"
			wait()
			dialog "[Red]"
			dialog "Hmm, let me give you a bit of advice. After you achieve level 5 'Bash', the amount of SP consumed by the skill increases greatly, so watch out for your SP."
			close()
		else
			dialog "[Red]"
			dialog "Hahahaha!! See!? Someone who pursues a different job agrees with me~! You really are a great guy! Hahaha!! Undoubtedly, only ^FF2400Bash^000000 suits a Swordman. Please tell that to this NIMROD over here~ Hahaha!"
			close()
		end
	elseif mresult == 2 then
		if getvar(VAR_JOB) == SWORDMAN and KNIGHT then
			dialog "[Cebalis]"
			dialog "Alright!! ^EE0000Magnum Break^000000 is the BEST!! Now you're talking~!! You know the stuff~ HaHaHa!"
			wait()
			dialog "[Cebalis]"
			dialog "You wanna know some useful information? Okay, okay lemme tell ya! Magnum Break has Fire Property."
			wait()
			dialog "[Cebalis]"
			dialog "So it won't be too effective against monsters with the Water property, but this is THE skill to use against Undead and Earth property monsters!"
			wait()
			dialog "[Cebalis]"
			dialog "And most importantly, look around before you use it. Otherwise you'll be in BIG trouble~ "
			close()
		else
			dialog "[Cebalis]"
			dialog "Right?! ^EE0000Magnum Break^000000 is THE BEST!!! You know what you're talking about, eh? I don't know why this jerkface is being sooooo stubborn."
			close()
		end
	end
end

npc("izlude","Cebalis",SPRITE_4W_M_02,58,126,2,5,5,"izlude_Cebalis_58126")
function izlude_Cebalis_58126()
	dialog "[Red]"
	dialog "The only skill that's needed for a Swordman is ^FF2400Bash^000000! Bash, Bash and ONLY ^FF2400Bash^000000! No need to waste time and effort on smaller skills~~ Everything else is for cowards and wusses!"
	wait()
	dialog "[Cebalis]"
	dialog "What are you talking about!? The ideal Swordman resolutely stands alone, surrounded by countless foes, smashing them all with one awesome attack..."
	wait()
	dialog "[Cebalis]"
	dialog "^EE0000MAGNUM BREAK!^000000"
	dialog "That's right, Magnum Break"
	dialog "is the perfect"
	dialog "Swordman skill."
	wait()
	dialog "[Cebalis]"
	dialog "Well..."
	dialog "Sometimes the explosion accidentally hits some monsters that are just wandering around."
	wait()
	dialog "[Cebalis]"
	dialog "Then they all end up coming after you, but that's a risk a true Swordman should be willing to take."
	wait()
	dialog "[Red]"
	dialog "That's exactly why you're dumb, you idiot! And what was that about the 'ideal Swordman?' You remember the last time you used Magnum Break?!"
	wait()
	dialog "[Red]"
	dialog "You had to run away from all those Porings hit by that stupid skill! You weakling! All those Porings that you hit tried to kill you! "
	wait()
	dialog "[Cebalis]"
	dialog "Oh shut up. And those were Poporings. As I recall, you were running away too, apparently too busy to use your precious Bash."
	wait()
	dialog "[Cebalis]"
	dialog "In any case, Magnum Break is THE skill for a Swordman~!! Something simplistic like Bash is just one of those little steps towards Magnum Break."
	wait()
	dialog "[Red]"
	dialog "Oh man~"
	dialog "Hey, I know you"
	dialog "heard everything."
	dialog "So what do you think?"
	wait()
	dialog "[Red]"
	dialog "Which one do you think is better? The critical damage skill, ^FF2400Bash^000000, or the Splash damage skill, ^EE0000Magnum Break^000000?"
	wait()
	local mresult = menu("Bash","Magnum Break")
	if mresult == 1 then
		if getvar(VAR_JOB) == SWORDMAN and KNIGHT then
			dialog "[Red]"
			dialog "Hahahaha!!! I knew you'd see things my way!! You ARE a great guy!! Without a doubt, only ^FF2400Bash^000000 suits a Swordman. Please tell that to FUNBOY over here!! Hahaha."
			wait()
			dialog "[Red]"
			dialog "Hmm, let me give you a bit of advice. After you achieve level 5 Bash, the amount of SP consumed by the skill increases greatly, so watch out for your SP."
			close()
		else
			dialog "[Red]"
			dialog "Hahahaha!!"
			dialog "See!? Someone who pursues a different job agrees with me~! You really are a great guy! Hahaha!!"
			wait()
			dialog "[Red]"
			dialog "Without a doubt, only ^FF2400Bash^000000 suits a Swordman. Please tell that to this MORON over here!! Hahaha~"
			close()
		end
	elseif mresult == 2 then
		if getvar(VAR_JOB) == SWORDMAN and KNIGHT then
			dialog "[Cebalis]"
			dialog " Alright!! ^EE0000Magnum Break^000000 is the BEST!! Now you're talking~!! You know your stuff, kid. HaHaHa~!"
			wait()
			dialog "[Cebalis]"
			dialog "You wanna know some useful information? Okay, okay lemme tell ya! The explosion from 'Magnum Break' has the Fire Property."
			wait()
			dialog "[Cebalis]"
			dialog "So it won't be very effective against Water property monsters, but this is THE skill to use against Undead and Earth property monsters.!"
			wait()
			dialog "[Cebalis]"
			dialog "And most importantly, look around before you use it. Otherwise you'll be in BIG trouble~ "
			close()
		else
			dialog "[Cebalis]"
			dialog "I'm right, aren't I?! ^EE0000Magnum Break^000000 is THE BEST!!! You know what you're talking about, eh? I don't know why this LARDFACE is sooooo stubborn."
			close()
		end
	end
end

npc("izlude_in","Aaron",SPRITE_1_M_YOUNGKNIGHT,125,164,2,5,5,"izlude_in_Aaron_125164")
function izlude_in_Aaron_125164()
	dialog "[Aaron]"
	dialog "Don't you think Strong VIT and training in a unique breathing method which enables quick HP recovery are the greatest advantages for a Swordman?"
	wait()
	dialog "[Aaron]"
	dialog "If you train your skills very hard, you can even see your HP recovering. The amount"
	dialog "recovered depends"
	dialog "vitality, or VIT."
	wait()
	dialog "[Aaron]"
	dialog "So if you invest more of your stats in VIT, you'll recover more HP overall when resting."
	wait()
	dialog "[Aaron]"
	dialog "But of course, it'd be good to have high Attack, wouldn't it? You can either acquire a good weapon or bring up your STR to support you Attack."
	wait()
	dialog "[Aaron]"
	dialog "You know you'll need some strength anyway to swing good weapons easily, anyway."
	wait()
	dialog "[Aaron]"
	dialog "Another important thing is how accurate you can hit your opponents. DEX is the key here. If you train DEX, then the gap between the MIN and MAX damage will also decrease."
	wait()
	dialog "[Aaron]"
	dialog "Hm..."
	dialog "Are you bored by all this talk? Or do you want me to go on?"
	wait()
	local mresult = menu("Tell me more please.","End conversation. ")
	if mresult == 1 then
		dialog "[Aaron]"
		dialog "Hmm..."
		dialog "In that case, I'll explain about the other attributes to you briefly. In order to attack and evade quickly, you've gotta pay attention to AGI. "
		wait()
		dialog "[Aaron]"
		dialog "In case you want to make more critical hits, it's a good idea to invest in LUK. INT also increases Max SP, which is needed to use various skills... But it's really up to you."
		close()
	elseif mresult == 2 then
		dialog "[Aaron]"
		dialog "Okay then,"
		dialog "train hard~~"
		close()
	end
end

npc("izlude","Soldier",SPRITE_8W_SOLDIER,124,178,2,5,5,"izlude_Soldier_124178")
function izlude_Soldier_124178()
	dialog "[Soldier]"
	dialog "HeHeHeHe..HaHaHaHa "
	dialog "Huh? Why am I so happy?"
	dialog "You wanna know?"
	wait()
	local mresult = menu("Sure, why?","Not really, I don't care. ")
	if mresult == 1 then
		dialog "[Soldier]"
		dialog "Ah~~ There's not much for us to do these days. You see, Merchants buy items dropped by monsters.  But you knew that, right? "
		wait()
		local mresult = menu("Of course","Eh? Really?")
		if mresult == 1 then
			dialog "[Soldier]"
			dialog "HaHa~ In fact, that was actually part of our job. But there were more and more hunters who came to us in order to get paid and it became too much to handle."
			wait()
			dialog "[Soldier]"
			dialog "We had to work overtime every day. Ah, it was a nightmare...! Anyway, the government eventually made a wise decision in creating the Registration System."
			wait()
			dialog "[Soldier]"
			dialog "The Office of Prize Compensation only pays those who have the Registration. Of course, you'd have to be a merchant and stay in the same place all day long."
			wait()
			dialog "[Soldier]"
			dialog "The Office gives away the registration to any merchant who fulfills those requirements. So nowadays, the hunters sell their goods to the registered merchants."
			wait()
			dialog "[Soldier]"
			dialog "So nowadays, the hunters sell their goods to the registered merchants.  Not too many people come to us for that anymore."
			wait()
			dialog "[Soldier]"
			dialog "I mean we are still busy, but that's nothing compared to how it was before. People who have felt suffering know how to appreciate even the slightest comfort."
			close()
		elseif mresult == 2 then
			dialog "[Soldier]"
			dialog "What?! What do you mean you didn't know?! Well, you know you can get items by killing monsters. If you bring and sell those to a merchant, you can make some money. "
			wait()
			dialog "[Soldier]"
			dialog "HaHa, in fact, that used to be part of our job. But there were more and more hunters who come in order to get paid, so it became too much to handle."
			wait()
			dialog "[Soldier]"
			dialog "We had to work overtime every day. Ah, it was a nightmare...! Anyway, the government eventually made a wise decision in creating the Registration System."
			wait()
			dialog "[Soldier]"
			dialog "The Office of Prize Compensation only pays those who have the Registration. Of course, you'd have to be a merchant and stay in the same place all day long."
			wait()
			dialog "[Soldier]"
			dialog "The Office gives away the registration to any merchant who fulfills those requirements. So nowadays, the hunters sell their goods to the registered merchants."
			wait()
			dialog "[Soldier]"
			dialog "So nowadays, the hunters sell their goods to the registered merchants.  Not too many people come to us for that anymore."
			wait()
			dialog "[Soldier]"
			dialog "I mean we are still busy, but that's nothing compared to how it was before. People who have felt suffering know how to appreciate even the slightest comfort."
			close()
		end
	elseif mresult == 2 then
		dialog "[Soldier]"
		dialog "Okay Good Bye~~"
		close()
	end
end

npc("izlude","Edgar",SPRITE_1_M_03,182,186,2,5,5,"izlude_Edgar_182186")
function izlude_Edgar_182186()
	if getvar("iz_move_alberta") == 0 then
		dialog "[Edgar]"
		dialog "My town, Izlude,  is connected to Alberta by the harbor in the West. There is so much traffic between us, I almost become an Albertian.  Hehehe~"
		wait()
		dialog "[Edgar]"
		dialog "There's this guy I know pretty well, Phelix, who lives in Alberta. That guy is really stingy... He charges for everything!"
		wait()
		dialog "[Edgar]"
		dialog "But he's really a nice guy and likes helping other people. He has a good heart and will give you his support if you meet his price."
		wait()
		dialog "[Edgar]"
		dialog "Lately, people in Alberta say that he is really trying to help folks and that his demand for Jellopies is just a coverup.  Well, you should take a look at what he has to offer."
		wait()
		local mresult = menu("Can you tell me how to get to Alberta?","End Conversation")
		if mresult == 1 then
			dialog "[Edgar]"
			dialog "Huh? Well, you can use your feet and just walk.  But if you have money, I'd like to suggest that you take a ship."
			wait()
			local mresult = menu("Okay, gotcha.","But I'm sick of walking and I'm broke!")
			if mresult == 1 then
				dialog "[Edgar]"
				dialog "Alrighty, take care~"
				close()
			elseif mresult == 2 then
				dialog "[Edgar]"
				dialog "Okay..."
				dialog "You don't want to walk AND you've got no cash, but you still want to go there? Oh geez..."
				wait()
				dialog "[Edgar]"
				dialog "Fine fine. Me, being the captain of a ship, can afford to bring you there at a lower price. How does 250 Zeny sound?"
				wait()
				local mresult = menu("Alrighty~!","Bah, what a rip off!!")
				if mresult == 1 then
					setitem("iz_move_alberta",1)
					if getvar(VAR_MONEY) < 250 then
						dialog "[Edgar]"
						dialog "Um..."
						dialog "This isn't"
						dialog "enough money."
						dialog "Go and get"
						dialog "some more."
						close()
						return
					else
						dropgold(250)
						moveto("alberta",195,164)
					end
				elseif mresult == 2 then
					dialog "[Edgar]"
					dialog "Boy oh boy,"
					dialog "if you think"
					dialog "that's a rip off..."
					close()
				end
			end
		elseif mresult == 2 then
			dialog "[Edgar]"
			dialog "Yeah, alright."
			dialog "See you later~"
			close()
		end
	elseif getvar(iz_move_alberta) == 1 then
		dialog "[Edgar]"
		dialog "So are you heading to Alberta again? Let me give you the same discount and only charge 250 Zeny, just like the last time."
		dialog "How's that sound?"
		wait()
		local mresult = menu("Alrighty~!","Why are you being so nice to me?!")
		if mresult == 1 then
			if getvar(VAR_MONEY) < 250 then
				dialog "[Edgar]"
				dialog "Um..."
				dialog "This isn't"
				dialog "enough money."
				dialog "Why don't you go"
				dialog "get some more cash?"
				close()
				return
			else
				dropgold(250)
				moveto("alberta",195,164)
			end
		elseif mresult == 2 then
			dialog "[Edgar]"
			dialog "It's just the way I am. That, and your devilish smile reminds me of my beloved blond haired son who left home years ago to become a Sailor on his own ship. Bless his soul, wherever he is."
			close()
		end
	end
end