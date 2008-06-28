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

npc("ein_in01","Calla",SPRITE_4_F_01,31,138,3,0,0,"ein_in01_Calla_31138")
function ein_in01_Calla_31138()
	local max_max_c = CheckMaxCount 1201 1
	if (max_max_c == 1) then
		dialog "^3355FFWait a second!"
		dialog "Right now, you're carrying"
		dialog "too many things with you."
		dialog "Please come back after"
		dialog "using the Kafra Service"
		dialog "to store some of your items.^000000"
		close()
		return
	end
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
	if (now_weight < 700) then
		dialog "^3355FFWait a second!"
		dialog "Right now, you're carrying"
		dialog "too many things with you."
		dialog "Please come back after"
		dialog "using the Kafra Service"
		dialog "to store some of your items.^000000"
		close()
		return
	end
	if getvar(VAR_CLEVEL) < 60 then
		dialog "[Calla]"
		dialog "Hello adventurer."
		dialog "Our city must just be"
		dialog "another place where"
		dialog "you'll stay no longer"
		dialog "than a few days."
		wait()
		dialog "[Calla]"
		dialog "You must have so much"
		dialog "freedom. I envy you. I can't"
		dialog "do what I want to do. I don't"
		dialog "even have the courage to tell"
		dialog "my family what I really want,"
		dialog "much less change things here..."
		wait()
		dialog "[Calla]"
		dialog "How is it like?"
		dialog "Going wherever you"
		dialog "please, following your"
		dialog "heart's true desire?"
		dialog "What I would give to"
		dialog "be able to do that..."
		close()
		return
	end
	if getvar(ein_love) == 17 then
		dialog "[Calla]"
		dialog "Thank you so much!"
		dialog "I'll try my best to convince"
		dialog "my parents to accept our"
		dialog "relationship. It'll be hard,"
		dialog "but it's a good first step~"
		wait()
		dialog "[Calla]"
		dialog "I hope that we can all"
		dialog "work together to improve"
		dialog "relations between Einbech"
		dialog "and Einbroch. The hatred"
		dialog "between our towns must end..."
		wait()
		dialog "[Calla]"
		dialog "I really appreciate"
		dialog "what you've done for"
		dialog "all of us. I'll be praying"
		dialog "for your safety, adventurer."
		close()
		return
	end
	if getvar(ein_love) == 16 then
		local name = PcName()
		dialog "[Calla]"
		dialog "I just heard from my mother"
		dialog "that she's planning to have"
		dialog "tea with Clitzer! I'm sure that"
		dialog "I have you to thank for this~"
		wait()
		dialog "[Calla]"
		dialog "I never dreamed that"
		dialog "something as wonderful"
		dialog "as this could happen."
		dialog "I'm so happy, I could cry..."
		dialog "I'll always be grateful"
		dialog "for what you've done."
		wait()
		dialog "[Calla]"
		dialog "I feel like such a fool,"
		dialog "thinking it was all hopeless."
		dialog "I'll be doing my best to have"
		dialog "my parents accept Clitzer and"
		dialog "someday we'll be married~"
		wait()
		dialog "[Calla]"
		dialog "There isn't much that I can"
		dialog "give you, but I can show you"
		dialog "one of my family's secrets."
		dialog "It's an invigorating massage"
		dialog "technique that makes you a lot"
		dialog "healthier in only ten seconds."
		wait()
		dialog "[Calla]"
		dialog "Well, please take"
		dialog "off your equipment"
		dialog "and stand still while"
		dialog "I give the massage. It"
		dialog "might hurt a bit at first..."
		nude()
		wait()
		dialog "^3355FF*Rub Rub Rub*"
		dialog "*Knead Knead Knead*"
		dialog "*Crrack C-c-c--c-crack*"
		dialog "*Crack Crack Crrrrrrack*"
		dialog "*Rub Crrraaaaaaaaaack*^000000"
		wait()
		dialog("[","+","name","+"]"")
		dialog "Ooooooooh..."
		dialog "I feel sooo"
		dialog "sore and yet"
		dialog "soooooo good."
		dialog "Wait. Now I just"
		dialog "feel goooood~"
		hpheal(100)
		setitem("ein_love",17)
		if getvar(VAR_CLEVEL) < 41 then
			getexp(610)
		elseif getvar(VAR_CLEVEL) < 61 then
			getexp(6000)
		elseif getvar(VAR_CLEVEL) < 81 then
			getexp(30000)
		elseif getvar(VAR_CLEVEL) < 99 then
			getexp(200000)
		end
		wait()
		dialog "[Calla]"
		dialog "So how was it?"
		dialog "I hope it was refreshing."
		dialog "Please understand that"
		dialog "it's the best thing I can"
		dialog "give you to show my gratitude."
		wait()
		dialog "[Calla]"
		dialog "Once again,"
		dialog "thank you so"
		dialog("much, ","+","name","+"."")
		dialog "I'll always pray for"
		dialog "your safety on your"
		dialog "your adventures~"
		close()
		return
	end
	if ((getvar(ein_love) == 5) and (getvar(Flower) > 0)) then
		dialog "[Calla]"
		dialog "You've spoken"
		dialog "with Clitzer? How"
		dialog "is he? What did he say?"
		wait()
		dialog "[Calla]"
		dialog "Oh...?"
		dialog "He asked you to"
		dialog "deliver this flower"
		dialog "to me? How sweet~"
		dialog "Thank you very much,"
		dialog "kind adventurer~"
		wait()
		dialog "[Calla]"
		dialog "Ah, I'm so rude!"
		dialog "I've been calling you"
		dialog "''adventurer'' this whole"
		dialog "time you've been helping"
		dialog "me! Would you please"
		dialog "tell me your name?"
		wait()
		local name = PcName()
		dlgwritestr()
		if inputstr == name then
			dialog "[Calla]"
			dialog("Ah, ","+","name","+","!")
			dialog "Such a lovely name~"
			dialog "I promise that I won't ever"
			dialog "forget it. Oh, and if you pass by Einbech, would you thank Clitzer for the flower for me please?"
			wait()
			dialog "[Calla]"
			dialog "A-and... And..."
			dialog "Please tell him that"
			dialog "I really miss him a lot."
			dialog "^333333*Sob Sob...*^000000"
			dropitem("Flower",1)
			setitem("ein_love",6)
			close()
			return
		else
			dialog "[Calla]"
			dialog "I'm sorry..."
			dialog "I didn't catch that."
			dialog "Would you please tell"
			dialog "me your name again?"
			close()
			return
		end
	end
	if getvar(ein_love) == 4 then
		dialog "[Calla]"
		dialog "Oh my god..."
		dialog "Are you alright?"
		dialog "I just found out that"
		dialog "you ran into my father!"
		wait()
		dialog "[Calla]"
		dialog "By all means,"
		dialog "try to avoid my dad!"
		dialog "He doesn't trust anyone"
		dialog "who's not considered part"
		dialog "of the upper class, even"
		dialog "adventurers like you!"
		wait()
		dialog "[Calla]"
		dialog "Would you please"
		dialog "take this Violin and"
		dialog "try to make it to Clitzer"
		dialog "this time? Thank you"
		dialog "for your help~"
		setitem("ein_love",3)
		getitem("Violin",1)
		close()
		return
	end
	if ((getvar(ein_love) == 3) or (getvar(ein_love) == 5)) then
		dialog "[Calla]"
		dialog "Oh, please send my"
		dialog "regards to Clitzer for me."
		dialog "I wish I could comfort"
		dialog "him in person, but this"
		dialog "is the best I can do for now."
		close()
		return
	end
	if getvar(ein_love) == 2 then
		dialog "[Calla]"
		dialog "You're the adventurer"
		dialog "from before, aren't you?"
		dialog "Sadly, there isn't much"
		dialog "to do around here. This"
		dialog "place is basically like"
		dialog "a prison to me..."
		wait()
		dialog "[Calla]"
		dialog "Oh, you've met Clitzer?"
		dialog "Isn't he so kind, such"
		dialog "a perfect gentleman?"
		wait()
		dialog "[Calla]"
		dialog "I really wish I could"
		dialog "see him, but it's almost"
		dialog "impossible. My parents think"
		dialog "he's not good enough for me,"
		dialog "but they're wrong! What am"
		dialog "I going to do? Oh, Clitzer..."
		wait()
		dialog "[Calla]"
		dialog "Well, maybe I can't see"
		dialog "him, but would you give"
		dialog "my violin to Clitzer for me?"
		dialog "I used to play this for him"
		dialog "all the time..."
		wait()
		setitem("ein_love",3)
		getitem("Violin",1)
		dialog "[Calla]"
		dialog "I'm sorry to trouble you,"
		dialog "but please understand"
		dialog "that I want to comfort my"
		dialog "Clitzer in any way that"
		dialog "I possibly can. Thank"
		dialog "you so much, adventurer..."
		close()
		return
	end
	if getvar(ein_love) == 1 then
		dialog "[Calla]"
		dialog "Hello adventurer."
		dialog "Our city must just be"
		dialog "another place where"
		dialog "you'll stay no longer"
		dialog "than a few days."
		wait()
		dialog "[Calla]"
		dialog "You must have so much"
		dialog "freedom. I envy you. I can't"
		dialog "do what I want to do. I don't"
		dialog "even have the courage to tell"
		dialog "my family what I really want,"
		dialog "much less change things here..."
		wait()
		dialog "[Calla]"
		dialog "How is it like?"
		dialog "Going wherever you"
		dialog "please, following your"
		dialog "heart's true desire?"
		dialog "What I would give to"
		dialog "be able to do that..."
		close()
		return
	end
	if getvar(ein_love) == 0 then
		dialog "[Calla]"
		dialog "Hello adventurer."
		dialog "Our city must just be"
		dialog "another place where"
		dialog "you'll stay no longer"
		dialog "than a few days."
		wait()
		dialog "[Calla]"
		dialog "You must have so much"
		dialog "freedom. I envy you. I can't"
		dialog "do what I want to do. I don't"
		dialog "even have the courage to tell"
		dialog "my family what I really want,"
		dialog "much less change things here..."
		wait()
		setitem("ein_love",1)
		dialog "[Calla]"
		dialog "How is it like?"
		dialog "Going wherever you"
		dialog "please, following your"
		dialog "heart's true desire?"
		dialog "What I would give to"
		dialog "be able to do that..."
		close()
		return
	end
	dialog "[Calla]"
	dialog "Hello adventurer."
	dialog "Our city must just be"
	dialog "another place where"
	dialog "you'll stay no longer"
	dialog "than a few days."
	wait()
	dialog "[Calla]"
	dialog "You must have so much"
	dialog "freedom. I envy you. I can't"
	dialog "do what I want to do. I don't"
	dialog "even have the courage to tell"
	dialog "my family what I really want,"
	dialog "much less change things here..."
	wait()
	dialog "[Calla]"
	dialog "How is it like?"
	dialog "Going wherever you"
	dialog "please, following your"
	dialog "heart's true desire?"
	dialog "What I would give to"
	dialog "be able to do that..."
	close()
end

npc("ein_in01","Clitzer",SPRITE_4_M_EINMAN2,200,101,5,0,0,"ein_in01_Clitzer_200101")
function ein_in01_Clitzer_200101()
	if getvar(ein_love) == 16 then
		dialog "[Clitzer]"
		dialog "Look out, world!"
		dialog "I'm gonna become"
		dialog "worthy of Calla's love!"
		dialog "Someday, maybe even her"
		dialog "parents will approve me!"
		close()
		return
	end
	if ((getvar(ein_love) == 15) and (getvar(Tuxedo) > 0)) then
		dialog "[Clitzer]"
		dialog "Waaaah!"
		dialog "What should I wear?!"
		dialog "I can't for the life of me"
		dialog "figure this out! Something,"
		dialog "um, formal? I've never worn"
		dialog "anything like that before!"
		wait()
		local name = PcName()
		dialog "[Clitzer]"
		dialog("Wait, ","+","name","+",".")
		dialog "What's that you've got"
		dialog "there? I've seen something"
		dialog "like that before. It's called"
		dialog "a Tuxedo, right? Something"
		dialog "like that would be perfect!"
		wait()
		local mresulta = menu("Give it to him.","Ignore Him.")
		if mresulta == 1 then
			dialog "[Clitzer]"
			dialog "I can have this?"
			dialog "Oh, thank you so much!"
			dialog "Finally, I have something"
			dialog "nice enough to wear to meet"
			dialog "Calla's mom! What a relief!"
			wait()
			dialog "[Clitzer]"
			dialog "You've been helping me all"
			dialog "this time and I haven't properly expressed my gratitude. I'm sorry"
			dialog "if I've been too absorbed in my own problems. I may be poor, but I need to repay you somehow..."
			wait()
			dialog "[Clitzer]"
			dialog "Wait..."
			dialog "Why don't you have this"
			dialog "ore? I don't know how"
			dialog "valuable it is, but I know"
			dialog "that it's pretty rare. It may"
			dialog "even be useful to you later~"
			dropitem("Tuxedo",1)
			setitem("ein_love",16)
			local kwang = math.random(1 7
			if kwang == 1 then
				getitem("Olivine",1)
			elseif kwang == 2 then
				getitem("Phlogopite",1)
			elseif kwang == 3 then
				getitem("Agate",1)
			elseif kwang == 4 then
				getitem("Rose_Quartz",1)
			elseif kwang == 5 then
				getitem("Turquoise",1)
			elseif kwang == 6 then
				getitem("Citrine",1)
			elseif kwang == 7 then
				getitem("Pyroxene",1)
			end
			wait()
			dialog "[Clitzer]"
			dialog(,"+","name","+",",")
			dialog "you've really opened"
			dialog "my eyes. From now on,"
			dialog "I'll do my best to earn the"
			dialog "approval of Calla's parents and"
			dialog "become worthy of Calla's love."
			close()
			return
		elseif mresulta == 2 then
			dialog "[Clitzer]"
			dialog "But how can I get"
			dialog "a Tuxedo? Ooh, I hope"
			dialog "it doesn't cost too much"
			dialog "zeny or I won't be able to"
			dialog "get one of those soon..."
			close()
			return
		end
	end
	if getvar(ein_love) == 15 then
		dialog "[Clitzer]"
		dialog "Noooooo!"
		dialog "I've got to find"
		dialog "the perfect thing"
		dialog "to wear or Calla's"
		dialog "mother might ^FF0000hate^000000 me!"
		wait()
		dialog "[Clitzer]"
		dialog "What am I gonna do?!"
		dialog "Okay, nothing too flashy"
		dialog "or revealing. Can't let her"
		dialog "think I'm wild, immature or"
		dialog "unpredictable. Should I"
		dialog "wear suspenders or a belt?!"
		close()
		return
		close()
		return
	end
	if getvar(ein_love) == 14 then
		dialog "[Clitzer]"
		dialog "Noooooo!"
		dialog "I've got to find"
		dialog "the perfect thing"
		dialog "to wear or Calla's"
		dialog "mother might ^FF0000hate^000000 me!"
		wait()
		dialog "[Clitzer]"
		dialog "Think, Clitzer, think!"
		dialog "Okay, no fun colors."
		dialog "I don't want her to"
		dialog "think I'm not serious"
		dialog "about Calla. Stripes"
		dialog "might be bad too..."
		close()
		return
	end
	if getvar(ein_love) == 13 then
		dialog "[Clitzer]"
		dialog "Eh...?"
		dialog "What did you just say?"
		dialog "You did something for"
		dialog "the Kapellthaines?"
		wait()
		dialog "[Clitzer]"
		dialog "What...?"
		dialog "Did you just say"
		dialog "that Calla's mother"
		dialog "wants me to have tea"
		dialog "with her? Holy moley...!"
		wait()
		dialog "[Clitzer]"
		dialog "Okay, okay."
		dialog "I-I I'll need something"
		dialog "nice to wear, right? Oh."
		dialog "Wow. This is so sudden!"
		dialog "W-what should I do?"
		wait()
		setitem("ein_love",14)
		dialog "[Clitzer]"
		dialog "This monkey suit"
		dialog "that I've got on just"
		dialog "won't do! Arrrgh! But I've"
		dialog "already outgrown all of my"
		dialog "nice clothes already. Boy,"
		dialog "am I in a pickle..."
		close()
		return
	end
	if getvar(ein_love) > 6 then
		dialog "[Clitzer]"
		dialog "*Sigh...*"
		dialog "What can I do to"
		dialog "get Calla's parents"
		dialog "to accept me as her"
		dialog "boyfriend? I can't"
		dialog "think of anything..."
		close()
		return
	end
	if getvar(ein_love) == 6 then
		dialog "[Clitzer]"
		dialog "You've given her"
		dialog "the flower? That's"
		dialog "great! Thank you,"
		dialog "thank you so mu--"
		wait()
		dialog "[Clitzer]"
		dialog "...Oh!"
		dialog "Gosh! I was thinking so"
		dialog "much about myself that"
		dialog "I forgot to ask you for your"
		dialog "name! I'm sorry for being"
		dialog "so knuckle-headed..."
		wait()
		dialog "[Clitzer]"
		dialog "So..."
		dialog "What's your name?"
		wait()
		local name = PcName()
		dlgwritestr()
		if inputstr == name then
			dialog "[Clitzer]"
			dialog(,"+","name","+","...")
			dialog "That's very nice. Thank you,"
			dialog "I'm really grateful for your help. Although I can't see Calla in"
			dialog "person, I can at least send"
			dialog "my regards if you help me."
			wait()
			setitem("ein_love",7)
			dialog "[Clitzer]"
			dialog "I feel so much"
			dialog "better now. Oh!"
			dialog "When you have the"
			dialog "time, why don't you talk"
			dialog "to my mother? She always"
			dialog "likes meeting my friends."
			close()
			return
		else
			dialog "[Clitzer]"
			dialog "Hm...?"
			dialog "Oh, don't be"
			dialog "so nervous~"
			dialog "But would you please"
			dialog "tell me your name again?"
			dialog "I couldn't hear you..."
			close()
			return
		end
	end
	if getvar(ein_love) == 5 then
		dialog "[Clitzer]"
		dialog "Have you left to"
		dialog "see Calla for me yet?"
		dialog "I'm sorry if I sound"
		dialog "pretty demanding..."
		wait()
		dialog "[Clitzer]"
		dialog "Anyway, please"
		dialog "remember to bring"
		dialog "Calla ^FF00001 Flower^000000 for me."
		dialog "It doesn't need to be"
		dialog "fancy, an ordinary one"
		dialog "should be just fine."
		close()
		return
	end
	if ((getvar(ein_love) == 3) and (getvar(Violin) == 1)) then
		dialog "[Clitzer]"
		dialog "What brings you here?"
		dialog "Aren't you tired of hearing"
		dialog "me moan and whine about"
		dialog "lost love? ^333333*Siiiiigh...*^000000"
		wait()
		dialog "[Clitzer]"
		dialog "Hey, this violin..."
		dialog "Calla used to play"
		dialog "such beautiful music"
		dialog "on this for me. Did"
		dialog "she give this to you?"
		wait()
		dialog "[Clitzer]"
		dialog "I see. Calla must have"
		dialog "known that I'm all broken up"
		dialog "right now. She's too good to"
		dialog "to me. How can she consider"
		dialog "my feelings before thinking"
		dialog "about herself?"
		wait()
		dialog "[Clitzer]"
		dialog "I know I'm being"
		dialog "shameless, but I have"
		dialog "a favor to ask. Adventurer,"
		dialog "would you please send"
		dialog "Calla a present for me?"
		wait()
		dialog "[Clitzer]"
		dialog "All you need to do is"
		dialog "just give her ^FF00001 Flower^000000."
		dialog "I don't have the zeny and"
		dialog "I don't think I'm welcome"
		dialog "at Kapellthaine Manor."
		wait()
		dialog "[Clitzer]"
		dialog "Here, in return, I'll"
		dialog "give you this health"
		dialog "massage. It's not a"
		dialog "big deal, but when I'm"
		dialog "done, your mind and body"
		dialog "will be refreshed. Here goes!"
		wait()
		dialog "^3355FF*Knead Knead*"
		dialog "*Rub Rub Rub Rub*"
		dialog "*Press Press Press*"
		dialog "*C-c-c-c-c-c-crack!*"
		wait()
		local name = PcName()
		dialog("[","+","name","+"]"")
		dialog "Oh--"
		dialog "Hell yeah!"
		dialog "That's the stuff!"
		hpheal(100)
		dropitem("Violin",1)
		setitem("ein_love",5)
		if getvar(VAR_CLEVEL) < 41 then
			getexp(610)
		elseif getvar(VAR_CLEVEL) < 61 then
			getexp(6000)
		elseif getvar(VAR_CLEVEL) < 81 then
			getexp(30000)
		elseif getvar(VAR_CLEVEL) < 99 then
			getexp(200000)
		end
		wait()
		dialog "[Clitzer]"
		dialog "Would you please bring"
		dialog "1 Flower to Calla for me?"
		dialog "I'm sorry for troubling you... "
		close()
		return
	end
	if getvar(ein_love) == 2 then
		dialog "[Clitzer]"
		dialog "^333333*Sigh*^000000"
		dialog "I really appreciate your"
		dialog "sympathy, but I'm merely"
		dialog "a coward and a fool."
		wait()
		dialog "[Clitzer]"
		dialog "Yeah..."
		dialog "I'm a coward for doing"
		dialog "nothing about my feelings"
		dialog "and an idiot for falling in love with such a high class girl in"
		dialog "the first place... Oh, Calla..."
		close()
		return
	end
	if getvar(ein_love) == 1 then
		dialog "[Clitzer]"
		dialog "That faintly sweet"
		dialog "and pleasant scent..."
		dialog "It's just like the fragrance"
		dialog "they use in Calla's house."
		wait()
		dialog "[Clitzer]"
		dialog "Ah, so you visited"
		dialog "Calla in Einbroch?"
		dialog "I miss her sooo much!"
		dialog "Is she doing alright?"
		wait()
		dialog "[Clitzer]"
		dialog "Calla's so beautiful."
		dialog "And she's so lovely."
		dialog "Every time I close my"
		dialog "eyes, I can still see"
		dialog "her lovely smile."
		wait()
		dialog "[Clitzer]"
		dialog "I'm sorry if I sound"
		dialog "silly, but I can't help"
		dialog "it. I know I'm acting like"
		dialog "a complete idiot. But I'd"
		dialog "give anything to see her..."
		wait()
		setitem("ein_love",2)
		dialog "[Clitzer]"
		dialog "Just..."
		dialog "Just don't listen"
		dialog "to anything I say."
		dialog "I'm just a poor fool"
		dialog "in love with the wrong"
		dialog "person. That has to be it..."
		close()
		return
	end
	if getvar(ein_love) == 0 then
		dialog "[Clitzer]"
		dialog "Is there something"
		dialog "that you really want"
		dialog "in life, but it's just"
		dialog "beyond your grasp?"
		wait()
		dialog "[Clitzer]"
		dialog "I wish I were more"
		dialog "like you adventurers."
		dialog "People like you never"
		dialog "seem to give up, no matter"
		dialog "what the obstacles may be."
		dialog "But I'm so helpless..."
		wait()
		dialog "[Clitzer]"
		dialog "I can't even see"
		dialog "the one person that"
		dialog "I love. We've just so"
		dialog "different that it's not"
		dialog "even possible anymore..."
		close()
		return
	end
	dialog "[Clitzer]"
	dialog "Is there something"
	dialog "that you really want"
	dialog "in life, but it's just"
	dialog "beyond your grasp?"
	wait()
	dialog "[Clitzer]"
	dialog "I wish I were more"
	dialog "like you adventurers."
	dialog "People like you never"
	dialog "seem to give up, no matter"
	dialog "what the obstacles may be."
	dialog "But I'm so helpless..."
	wait()
	dialog "[Clitzer]"
	dialog "I can't even see"
	dialog "the one person that"
	dialog "I love. We've just so"
	dialog "different that it's not"
	dialog "even possible anymore..."
	close()
end

npc("ein_in01","Megass",SPRITE_4_M_YURI,21,147,3,3,3,"ein_in01_Megass_21147")
function ein_in01_Megass_21147()
	if ((getvar(ein_love) == 4) and (getvar(ein_love) == 5)) then
		dialog "[Megass]"
		dialog "You again?!"
		dialog "What do you"
		dialog "want from me?!"
		wait()
		dialog "[Megass]"
		dialog "Guards...!"
		dialog "Sweep the driveway with"
		dialog "this guy's face and keep"
		dialog "punching the stomach"
		dialog "until there's nothing"
		dialog "left to throw up!"
		close()
		hpdrain(90)
		moveto("einbroch",112,245)
		return
	end
	if ((getvar(ein_love) == 3) and (getvar(Violin) > 0)) then
		dialog "[Megass]"
		dialog "That's..."
		dialog "That's my"
		dialog "daughter's Violin."
		dialog "I gave that to her"
		dialog "for her sweet sixteen..."
		wait()
		dialog "[Megass]"
		dialog "It's bad enough to"
		dialog "intrude into my house,"
		dialog "but to steal from my Calla?!"
		dialog "You've crossed the line, punk!"
		dialog "Guards! Get over here!"
		wait()
		dialog "[Megass]"
		dialog "Men, I want you to"
		dialog "knock the wind out"
		dialog "of this fool and anything"
		dialog "else that might be inside!"
		dialog "Make sure that if this punk"
		dialog "wakes up, it won't be today!"
		dropitem("Violin",1)
		setitem("ein_love",4)
		hpdrain(90)
		close()
		moveto("einbroch",112,245)
		return
	end
	dialog "[Megass]"
	dialog "How dare you..."
	dialog "A vagabond like"
	dialog "you setting foot"
	dialog "into my home!?"
	dialog "Unthinkable!"
	wait()
	dialog "[Megass]"
	dialog "Leave immediately"
	dialog "before I report you"
	dialog "to the authorities"
	dialog "for trespassing!"
	wait()
	moveto("einbroch",112,245)
	close()
end

npc("ein_in01","Satra",SPRITE_4_F_EINWOMAN,31,151,3,0,0,"ein_in01_Satra_31151")
function ein_in01_Satra_31151()
	if getvar(ein_love) > 12 then
		dialog "[Satra]"
		dialog "I understand that my"
		dialog "home is extravagantly"
		dialog "splendid and to approach"
		dialog "any Kappelthaine is an"
		dialog "honor to most commoners."
		wait()
		dialog "[Satra]"
		dialog "However, Clitzer"
		dialog "has no reason to feel so"
		dialog "intimidated. Tell the poor"
		dialog "boy that he's earned the"
		dialog "honor of speaking with me."
		close()
		return
	end
	if ((getvar(ein_love) == 12) and (getvar(Coal) > 9)) then
		dialog "[Satra]"
		dialog "Ho ho ho ho~"
		dialog "Welcome adventurer,"
		dialog "I so enjoy our little chats."
		dialog "Hors d'oeuvre?"
		wait()
		dialog "[Satra]"
		dialog "Oh! You can't enjoy"
		dialog "any food in that state!"
		dialog "Your hands are atrociously"
		dialog "grimy! May I ask why?"
		wait()
		dialog "[Satra]"
		dialog "Ah~"
		dialog "In my excitement,"
		dialog "I nearly forgot that"
		dialog "I asked you to bring"
		dialog "Coals to me again!"
		dialog "My apologies~"
		wait()
		dialog "[Satra]"
		dialog "You've brought so much Coal"
		dialog "to me, I'm convinced that you're much more diligent than those"
		dialog "languid peasants in Einbech."
		dialog "I appreciate that you've labored so much to win my favor."
		wait()
		dialog "[Satra]"
		dialog "Hm, what was that?"
		dialog "Someone else provided"
		dialog "these Coals and you were"
		dialog "only delivering them? Then"
		dialog "who actually gathered these?"
		wait()
		local dap = "Clitzer"
		dlgwritestr()
		if inputstr == dap then
			dialog "[Satra]"
			dialog "Ah, Clitzer?"
			dialog "I must say, that's"
			dialog "a very humble name."
			dialog "Yet it's so familiar..."
			wait()
			dialog "[Satra]"
			dialog "Ah, I recall there"
			dialog "was a hooligan that"
			dialog "has been pestering my"
			dialog "daughter named Clitzer."
			dialog "Perhaps they are one"
			dialog "and the same. Hmm..."
			wait()
			dialog "[Satra]"
			dialog "I remember that he was"
			dialog "rather shabby looking and"
			dialog "lacked any semblance of"
			dialog "etiquette whatsoever. Clearly,"
			dialog "he is a fool and a coward, but now I see that he is sincere."
			wait()
			dialog "[Satra]"
			dialog "It might not be possible"
			dialog "to let him go out with my"
			dialog "daughter straight away, but"
			dialog "I will invite him for a spot of"
			dialog "tea. And if Calla likes him,"
			dialog "well, he must be special."
			wait()
			dialog "[Satra]"
			dialog "For a humble peasant,"
			dialog "this must be like a dream"
			dialog "come true! And to have tea"
			dialog "with Clitzer. Oh, what would"
			dialog "the girls say? Ah, but I did"
			dialog "marry that oafish Megass~"
			wait()
			dropitem("Coal",10)
			setitem("ein_love",13)
			dialog "[Satra]"
			dialog "Anyway, when you next"
			dialog "meet Clitzer, please tell"
			dialog "him to pay me a visit soon."
			dialog "Oh, and remind him to dress"
			dialog "appropriately for this special"
			dialog "occasion. Ho ho ho ho ho~"
			close()
			return
		else
			dialog "[Satra]"
			dialog "I beg your pardon?"
			dialog(,"+","inputstr","+","? Oh my...")
			dialog "I believe I may have"
			dialog "misheard you. Ho ho ho ho~"
			close()
			return
		end
	end
	if getvar(ein_love) == 12 then
		dialog "[Satra]"
		dialog "Ho ho ho ho~"
		dialog "Welcome adventurer,"
		dialog "I so enjoy our little chats."
		dialog "Hors d'oeuvre?"
		wait()
		dialog "[Satra]"
		dialog "Ah..."
		dialog "It seems you've"
		dialog "forgotten your ^FF0000Coals^000000."
		dialog "A silly mistake, but one"
		dialog "I'm willing to overlook."
		close()
		return
	end
	if ((getvar(ein_love) == 11) and (getvar(Coal) > 9)) then
		dialog "[Satra]"
		dialog "Why hello~"
		dialog "Your visits have"
		dialog "recently been quite"
		dialog "delightful, fair adventurer."
		wait()
		dialog "[Satra]"
		dialog "Continue to show"
		dialog "your appreciation"
		dialog "and dedication to me"
		dialog "and you'll soon be known"
		dialog "to be my most favored"
		dialog "commoner. Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "I'm sure you've noticed"
		dialog "the strained relationship"
		dialog "between Einbroch and Einbech"
		dialog "by now. It's a shame, really."
		wait()
		dialog "[Satra]"
		dialog "As Einbroch grew wealthier"
		dialog "and Einbech became more"
		dialog "destitude, the affluent began"
		dialog "despising the impoverished."
		dialog "I suppose it follows that the ^FFFFFFcobo^000000 poor started to resent the rich."
		wait()
		dialog "[Satra]"
		dialog "It might be said that"
		dialog "both towns have been"
		dialog "trying to take advantage"
		dialog "of each other, but it's"
		dialog "clear that Einbroch has"
		dialog "always had the upper hand."
		wait()
		dialog "[Satra]"
		dialog "In fact, because of"
		dialog "this rift between our"
		dialog "cities, our families are"
		dialog "taught not to associate"
		dialog "with the people of Einbech."
		wait()
		dialog "[Satra]"
		dialog "Now, I believe that most"
		dialog "people who live in Einbech"
		dialog "are peons, but that does not"
		dialog "mean I will not give them a"
		dialog "chance to prove their worth."
		wait()
		dropitem("Coal",10)
		setitem("ein_love",12)
		dialog "[Satra]"
		dialog "Why should I deprive"
		dialog "the lowly of my gracious"
		dialog "presense if they prove"
		dialog "themselves meritable?"
		dialog "Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "Oh, that was scrumptious!"
		dialog "If you wish to pay me another"
		dialog "visit, don't forget to bring some Coal with you. Tah tah~"
		close()
		return
	end
	if getvar(ein_love) == 11 then
		dialog "[Satra]"
		dialog "Why hello~"
		dialog "Your visits have"
		dialog "recently been quite"
		dialog "delightful, fair adventurer."
		wait()
		dialog "[Satra]"
		dialog "Oh, my apologies!"
		dialog "I suppose you're just"
		dialog "here for sight seeing,"
		dialog "or perhaps you're running"
		dialog "some sort of adventurer's"
		dialog "errand. Am I right?"
		wait()
		dialog "[Satra]"
		dialog "I know you well enough"
		dialog "to know that you wouldn't"
		dialog "be so rude as to stop by"
		dialog "and chat without bringing"
		dialog "any ^FF0000Coal^000000. Ho ho ho ho~"
		close()
		return
	end
	if ((getvar(ein_love) == 10) and (getvar(Coal) > 9)) then
		dialog "[Satra]"
		dialog "^333333*Titter~*^000000"
		dialog "Why, if it isn't my"
		dialog "intrepid adventurer."
		dialog "Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "My word!"
		dialog "Why are you carrying"
		dialog "all of that dirty Coal"
		dialog "with you? You poor,"
		dialog "impoverished thing."
		wait()
		dialog "[Satra]"
		dialog "Oh! Dear me,"
		dialog "I've nearly forgotten~"
		dialog "How divinely silly of me!"
		dialog "Once again, I graciously"
		dialog "accept your small gift on"
		dialog "behalf of the Kappellthaines."
		wait()
		dialog "[Satra]"
		dialog "Let me share a little"
		dialog "bit of history concerning"
		dialog "our lovely Einbroch. At one"
		dialog "time, there was only Einbech,"
		dialog "the mining village. You can"
		dialog "imagine how long ago that was."
		wait()
		dialog "[Satra]"
		dialog "However, the minerals"
		dialog "and ores mined in Einbech"
		dialog "need to be processed and"
		dialog "refined in factories that were"
		dialog "all built in a nearby industrial complex which became Einbroch."
		wait()
		dialog "[Satra]"
		dialog "Now every citizen in"
		dialog "Einbroch is wealthy and"
		dialog "it's well known that there"
		dialog "is a higher standard of"
		dialog "living here than in Einbech."
		wait()
		dropitem("Coal",10)
		setitem("ein_love",11)
		dialog "[Satra]"
		dialog "Goodness, I believe"
		dialog "it's time for a spot of tea~"
		dialog "The next time you wish to have"
		dialog "an audience with me, it would"
		dialog "behoove you to bring another"
		dialog "gift of Coal. Toodles~"
		close()
		return
	end
	if getvar(ein_love) == 10 then
		dialog "[Satra]"
		dialog "^333333*Titter~*^000000"
		dialog "Why, if it isn't my"
		dialog "intrepid adventurer."
		dialog "Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "My apologies, but you"
		dialog "must first prove to me"
		dialog "that you are worthy of"
		dialog "conversation. Why don't"
		dialog "you deliver more of those"
		dialog "^FF0000Coals^000000, mmm?"
		wait()
		dialog "[Satra]"
		dialog "After all, I have no other"
		dialog "means of knowing whether"
		dialog "or not you appreciate the time"
		dialog "I sacrifice by socializing with"
		dialog "someone of your status."
		dialog "Ho ho ho ho~"
		close()
		return
	end
	if ((getvar(ein_love) == 9) and (getvar(Coal) > 9)) then
		dialog "[Satra]"
		dialog "My, you've already"
		dialog "brought the Coal?"
		dialog "How charmingly"
		dialog "prompt you are~"
		wait()
		dialog "[Satra]"
		dialog "On behalf of the"
		dialog "Kappellthaine family,"
		dialog "I shall ignore your lowly"
		dialog "status and graciously"
		dialog "accept your small gift."
		dialog "Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "Do you hail from"
		dialog "Einbech, adventurer?"
		dialog "Ah, the Rune-Midgarts"
		dialog "kingdom! I've visited your"
		dialog "country. It's quite quaint"
		dialog "and Jawaii is very lovely."
		wait()
		dropitem("Coal",10)
		setitem("ein_love",10)
		dialog "[Satra]"
		dialog "Well, I shall try to"
		dialog "find some use for these."
		dialog "I'm afraid the gift I've asked"
		dialog "from you isn't very practical."
		dialog "How is Coal usually used?"
		dialog "Ah, I have a novel idea!"
		wait()
		dialog "[Satra]"
		dialog "Wouldn't it be"
		dialog "intoxicatingly wild if"
		dialog "Megass were to hold one"
		dialog "of those social functions that"
		dialog "the lower classes are so fond"
		dialog "of? A 'barbeque,' yes?"
		wait()
		dialog "[Satra]"
		dialog "In any case, if you"
		dialog "bring me more of that"
		dialog "Coal, you would be even"
		dialog "more favored by me and"
		dialog "you'll become a recipient"
		dialog "of my good graces. Ho ho~"
		close()
		return
	end
	if getvar(ein_love) == 9 then
		dialog "[Satra]"
		dialog "A wandering adventurer...?"
		dialog "How ravishingly delightful!"
		dialog "You must have risked life and"
		dialog "limb to sneak past my husband"
		dialog "to enjoy the captivating sights"
		dialog "of my home. Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "Since you're a very"
		dialog "unique guest, I shall"
		dialog "give you a unique honor"
		dialog "and deign to converse"
		dialog "with you, adventurer."
		wait()
		dialog "[Satra]"
		dialog "Einbech exists to provide"
		dialog "my family with coal and"
		dialog "materials from their mines."
		dialog "It's a natural law: workers"
		dialog "must be led by a chosen few."
		wait()
		dialog "[Satra]"
		dialog "It's delightfully"
		dialog "ludicrous to see those"
		dialog "workers aspire to reach"
		dialog "our heights of social"
		dialog "prestige. Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "Oh, I haven't spoken to"
		dialog "someone from a lower"
		dialog "class in ages! It feels"
		dialog "so forbiddenly exciting!"
		wait()
		dialog "[Satra]"
		dialog "Well adventurer, that's "
		dialog "the end of our informal"
		dialog "chat. I'll even grant you"
		dialog "full permission to boast"
		dialog "of the fact that you've"
		dialog "spoken to Lady Satra."
		wait()
		dialog "[Satra]"
		dialog "If you do wish for"
		dialog "me to share words with"
		dialog "you once more, prove to"
		dialog "me that you're worthier"
		dialog "than the other peons of"
		dialog "my graceful presense."
		wait()
		dialog "[Satra]"
		dialog "Oh, I have a marvelous"
		dialog "idea! Why don't you bring"
		dialog "me ^990000Coals^000000? It's not impossible"
		dialog "for someone like yourself, but"
		dialog "this kind of task will require"
		dialog "some effort on your part."
		wait()
		dialog "[Satra]"
		dialog "Tah tah,"
		dialog "adventurer~"
		close()
		return
	end
	if getvar(ein_love) == 8 then
		dialog "[Satra]"
		dialog "A wandering adventurer...?"
		dialog "How ravishingly delightful!"
		dialog "You must have risked life and"
		dialog "limb to sneak past my husband"
		dialog "to enjoy the captivating sights"
		dialog "of my home. Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "Since you're a very"
		dialog "unique guest, I shall"
		dialog "give you a unique honor"
		dialog "and deign to converse"
		dialog "with you, adventurer."
		wait()
		dialog "[Satra]"
		dialog "Einbech exists to provide"
		dialog "my family with coal and"
		dialog "materials from their mines."
		dialog "It's a natural law: workers"
		dialog "must be led by a chosen few."
		wait()
		dialog "[Satra]"
		dialog "It's delightfully"
		dialog "ludicrous to see those"
		dialog "workers aspire to reach"
		dialog "our heights of social"
		dialog "prestige. Ho ho ho ho~"
		wait()
		dialog "[Satra]"
		dialog "Oh, I haven't spoken to"
		dialog "someone from a lower"
		dialog "class in ages! It feels"
		dialog "so forbiddenly exciting!"
		wait()
		dialog "[Satra]"
		dialog "Well adventurer, that's "
		dialog "the end of our informal"
		dialog "chat. I'll even grant you"
		dialog "full permission to boast"
		dialog "of the fact that you've"
		dialog "spoken to Lady Satra."
		wait()
		dialog "[Satra]"
		dialog "If you do wish for"
		dialog "me to share words with"
		dialog "you once more, prove to"
		dialog "me that you're worthier"
		dialog "than the other peons of"
		dialog "my graceful presense."
		wait()
		dialog "[Satra]"
		dialog "Oh, I have a marvelous"
		dialog "idea! Why don't you bring"
		dialog "me ^990000Coals^000000? It's not impossible"
		dialog "for someone like yourself, but"
		dialog "this kind of task will require"
		dialog "some effort on your part."
		setitem("ein_love",9)
		wait()
		dialog "[Satra]"
		dialog "Tah tah,"
		dialog "adventurer~"
		close()
		return
	end
	dialog "[Satra]"
	dialog "A wandering"
	dialog "adventurer...?"
	dialog "How sinfully"
	dialog "intriguing!"
	dialog "Ho ho ho ho~"
	wait()
	dialog "[Satra]"
	dialog "Oh, do not worry."
	dialog "I'm sure the beauty of"
	dialog "my home has captured your"
	dialog "curiosity. My brutish excuse"
	dialog "for a husband would have you"
	dialog "beat if he found you..."
	wait()
	dialog "[Satra]"
	dialog "But I'm far more genteel"
	dialog "than Megass. You're more"
	dialog "than welcome to enjoy the"
	dialog "furnishings. Ho ho ho ho~"
	close()
end

npc("ein_in01","Kaijeta",SPRITE_4_F_EINOLD,191,102,5,0,0,"ein_in01_Kaijeta_191102")
function ein_in01_Kaijeta_191102()
	if getvar(ein_love) > 15 then
		dialog "[Kaijeta]"
		dialog "My son learned"
		dialog "an awful lot from"
		dialog "your good example."
		dialog "As a mother, I really"
		dialog "appreciate everything"
		dialog "you've done for him."
		wait()
		dialog "[Kaijeta]"
		dialog "Well, adventurer,"
		dialog "I will be praying for"
		dialog "your safety wherever"
		dialog "your journeys may"
		dialog "take you."
		close()
		return
	end
	if getvar(ein_love) == 15 then
		dialog "[Kaijeta]"
		dialog "Thank you for helping"
		dialog "my son Clitzer. Sadly, the"
		dialog "little fool doesn't have any"
		dialog "clue when it comes to certain"
		dialog "things like choosing clothing."
		dialog "He gets so nervous about it!"
		wait()
		dialog "[Kaijeta]"
		dialog "A man should wear nice"
		dialog "clothes, like a Formal Suit"
		dialog "or a Tuxedo, for important"
		dialog "meetings and special occasions."
		dialog "Hopefully, he'll learn that soon. ^FFFFFFcobo^000000"
		close()
		return
	end
	if getvar(ein_love) == 14 then
		dialog "[Kaijeta]"
		dialog "Thank you for helping"
		dialog "my son Clitzer. Sadly, the"
		dialog "little fool doesn't have any"
		dialog "clue when it comes to certain"
		dialog "things like choosing clothing."
		dialog "He gets so nervous about it!"
		wait()
		setitem("ein_love",15)
		dialog "[Kaijeta]"
		dialog "A man should wear nice"
		dialog "clothes, like a Formal Suit"
		dialog "or a Tuxedo, for important"
		dialog "meetings and special occasions."
		dialog "Hopefully, he'll learn that soon. ^FFFFFFcobo^000000"
		close()
		return
	end
	if getvar(ein_love) == 8 then
		dialog "[Kaijeta]"
		dialog "I can't bear to see the"
		dialog "petty hatred between our"
		dialog "two towns stop my son from"
		dialog "seeing the woman he loves..."
		close()
		return
	end
	if getvar(ein_love) == 7 then
		dialog "[Kaijeta]"
		dialog "Thank you for helping my"
		dialog "son. He may look like a fool"
		dialog "for falling in love with someone from Einbroch, but he's an honest"
		dialog "hard working man."
		wait()
		dialog "[Kaijeta]"
		dialog "Then again, it was bound to"
		dialog "happen sometime. Einbech is"
		dialog "a very poor town while Einbroch"
		dialog "is a very rich town. I'd understand if you don't agree, but opposites attract sooner or later."
		wait()
		dialog "[Kaijeta]"
		dialog "^666666*Sigh...*^000000"
		dialog "If my son and Calla can"
		dialog "work things out, maybe it"
		dialog "would improve relations"
		dialog "between our two towns."
		dialog "I certainly hope so..."
		wait()
		dialog "[Kaijeta]"
		dialog "Still, I'm quite baffled!"
		dialog "I raised my son to have more"
		dialog "guts than to wallow in misery"
		dialog "when his heart's broken. And"
		dialog "I still have no idea how he got together with such a rich woman."
		wait()
		setitem("ein_love",8)
		dialog "[Kaijeta]"
		dialog "Do you have any idea"
		dialog "how we can put an end"
		dialog "to the hate between our"
		dialog "two towns? I don't want to"
		dialog "see this couple separated"
		dialog "because of such pettiness."
		close()
		return
	end
	dialog "[Kaijeta]"
	dialog "Welcome to my humble"
	dialog "abode, adventurer. I'm"
	dialog "sorry if I'm a poor host."
	wait()
	dialog "[Kaijeta]"
	dialog "As you can see, we have"
	dialog "to share this house with"
	dialog "other families so we don't"
	dialog "have much open space or"
	dialog "privacy. I'm afraid we can't"
	dialog "afford even basic comfort."
	wait()
	dialog "[Kaijeta]"
	dialog "For now, this is the best"
	dialog "we can do. We don't have"
	dialog "the zeny to buy a house or"
	dialog "land, so we have no choice"
	dialog "but to endure through this..."
	close()
end

npc("einbroch","Keneshiotz",SPRITE_4_M_EINMAN,188,72,3,0,0,"einbroch_Keneshiotz_18872")
OnCommand: "on"
	enablenpc "Keneshiotz"
end
OnCommand: "off"
	disablenpc "Keneshiotz"
end
function einbroch_Keneshiotz_18872()
	dialog "[Keneshiotz]"
	dialog "This city is full of sky"
	dialog "high smokestacks and"
	dialog "the droning hum of machines."
	wait()
	dialog "[Keneshiotz]"
	dialog "Sure, the air is polluted,"
	dialog "but I think it's a fair price"
	dialog "to pay for wealth and a"
	dialog "modern life of comfort."
	dialog "Screw the environment!"
	wait()
	dialog "[Keneshiotz]"
	dialog "I'd much rather live like"
	dialog "this than end up like those"
	dialog "backwards vagrants in that"
	dialog "filthy Einbech. Don't they"
	dialog "know that money makes"
	dialog "the world go 'round?"
	close()
end

npc("einbech","Catzllanpu",SPRITE_4_M_EINMAN2,216,118,3,0,0,"einbech_Catzllanpu_216118")
function einbech_Catzllanpu_216118()
	dialog "[Catzllanpu]"
	dialog "^333333*Sigh...*^000000"
	dialog "Simple pleasures."
	dialog "They're what make"
	dialog "life worth living,"
	dialog "you know?"
	wait()
	dialog "[Catzllanpu]"
	dialog "It's enough for me just to"
	dialog "live a normal and happy life,"
	dialog "but everyone around me wants"
	dialog "to work harder and harder. If"
	dialog "you never take a rest, you're"
	dialog "killing yourself pretty slowly."
	wait()
	dialog "[Catzllanpu]"
	dialog "I guess you can tell that"
	dialog "I don't have the worries"
	dialog "other people have about"
	dialog "money. It's great, but it's"
	dialog "not worth sacrificing the"
	dialog "quality of your life, right?"
	close()
end

npc("einbroch","Kesunboss",SPRITE_4_F_EINWOMAN,208,208,3,0,0,"einbroch_Kesunboss_208208")
OnCommand: "on"
	enablenpc "Kesunboss"
end
OnCommand: "off"
	disablenpc "Kesunboss"
end
function einbroch_Kesunboss_208208()
	dialog "[Kesunboss]"
	dialog "Lady Calla is the"
	dialog "epitome of elegance,"
	dialog "a veritable goddess"
	dialog "of Einbroch."
	wait()
	dialog "[Kesunboss]"
	dialog "Her gentle voice,"
	dialog "that angelic smile, her"
	dialog "kindness and warmth"
	dialog "towards other people"
	dialog "and above all..."
	wait()
	dialog "[Kesunboss]"
	dialog "Calla's family"
	dialog "is wealthy beyond"
	dialog "imagination! She's"
	dialog "perfect! I don't know who"
	dialog "she'll marry, but he'd be"
	dialog "a lucky gentleman, I'm sure."
	wait()
	dialog "[Kesunboss]"
	dialog "Lady Calla lives in a magnificent mansion that makes other houses"
	dialog "look like shacks in comparison."
	dialog "Head north and then west from"
	dialog "here if you wish to marvel in its"
	dialog "beauty and elegance."
	close()
end

npc("einbech","Ellhenje",SPRITE_4_F_EINWOMAN,176,125,3,0,0,"einbech_Ellhenje_176125")
function einbech_Ellhenje_176125()
	dialog "[Ellhenje]"
	dialog "Things might be"
	dialog "bad in this town"
	dialog "with the pollution"
	dialog "and the bullying"
	dialog "from Einbroch..."
	wait()
	dialog "[Ellhenje]"
	dialog "But somehow, people"
	dialog "are able to get by. That's"
	dialog "because there's a guy"
	dialog "that everyone here likes..."
	wait()
	dialog "[Ellhenje]"
	dialog "I'm talking about Clitzer!"
	dialog "He's almost too honest and"
	dialog "almost too diligent. But most"
	dialog "of all, he's the nicest guy~"
	wait()
	dialog "[Ellhenje]"
	dialog "Clitzer was born in one of"
	dialog "Einbech's poorest families,"
	dialog "but he's usually happy and always thinks about others. I guess that's why people like to think of him"
	dialog "as representing all of Einbech."
	wait()
	dialog "[Ellhenje]"
	dialog "Recently, something's"
	dialog "been bothering him. I'm"
	dialog "not sure, but I think only"
	dialog "woman troubles could make"
	dialog "a guy feel so glum. I hope he"
	dialog "feels better soon..."
	close()
end

npc("ein_in01","Decii",SPRITE_4_M_EINMAN,208,86,3,0,0,"ein_in01_Decii_20886")
function ein_in01_Decii_20886()
	dialog "[Decii]"
	dialog "This is so"
	dialog "frustrating!"
	dialog "I'm surrounded"
	dialog "by all these ^FF0000people^000000!"
	wait()
	dialog "[Decii]"
	dialog "There's absolutely"
	dialog "no privacy in a city"
	dialog "this crowded! I guess"
	dialog "I should try to move"
	dialog "out as soon as I can."
	close()
end

npc("ein_in01","Supineque",SPRITE_4_M_DIEMAN,192,90,3,0,0,"ein_in01_Supineque_19290")
function ein_in01_Supineque_19290()
	dialog "[Supineque]"
	dialog "Ugh..."
	dialog "I'm starving!"
	wait()
	dialog "[Supineque]"
	dialog "I haven't had food for so"
	dialog "long that my stomach is"
	dialog "beginning to digest itself!"
	dialog "This is horrible..."
	wait()
	dialog "[Supineque]"
	dialog "I mean, I have"
	dialog "food that I can"
	dialog "eat today. But if"
	dialog "I finish it, what am"
	dialog "I gonna eat tomorrow?"
	close()
end
