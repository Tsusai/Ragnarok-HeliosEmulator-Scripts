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

npc("einbroch","Mark",SPRITE_4_M_EINMAN,218,198,5,0,0,"einbroch_Mark_218198")
OnCommand: "on"
	enablenpc "Mark"
end
OnCommand: "off"
	disablenpc "Mark"
end
function einbroch_Mark_218198()
	dialog "[Mark]"
	dialog "Good day~"
	dialog "I'm Mark, your"
	dialog "guide to exploring"
	dialog "the Einbroch Tower."
	wait()
	dialog "[Mark]"
	dialog "Einbroch Tower offers"
	dialog "the best view of our city"
	dialog "and it's a great place to"
	dialog "meet with friends or take"
	dialog "a date. The Einbroch Tower"
	dialog "admission fee is 10 zeny."
	wait()
	dialog "[Mark]"
	dialog "Right now, we're offering"
	dialog "a special promotion called"
	dialog "the Apple Combo Set for only"
	dialog "20 zeny. This set includes"
	dialog "Einbroch Tower admission"
	dialog "and an Apple to snack on."
	wait()
	local mresulta = menu("Tower Admission Only","Apple Combo Set","Cancel")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 10) then
			dialog "[Mark]"
			dialog "I'm sorry, but you"
			dialog "don't have enough"
			dialog "zeny. The Einbroch"
			dialog "Tower Admission"
			dialog "fee is 10 zeny."
			close()
			return
		else
			dialog "[Mark]"
			dialog "Thank you for"
			dialog "using our services."
			dialog "Let me guide you to"
			dialog "the tower right away."
			dropgold(10)
			close()
			moveto("einbroch",181,196)
			return
		end
	elseif mresulta == 2 then
		if (getvar(VAR_MONEY) < 20) then
			dialog "[Mark]"
			dialog "I'm sorry, but you don't"
			dialog "have enough zeny. The"
			dialog "Apple Combo Set is 20 zeny."
			close()
			return
		else
			dialog "[Mark]"
			dialog "Before I guide you to"
			dialog "the tower, let me check"
			dialog "your status to insure"
			dialog "your safety before I give"
			dialog "you the Apple Combo Set."
			wait()
			local KOJIMA = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
			if KOJIMA > 20 then
				dialog "[Mark]"
				dialog "Thank you for"
				dialog "using our services."
				dialog "Let me guide you to"
				dialog "the tower right away."
				dropgold(20)
				getitem("Apple",1)
				close()
				moveto("einbroch",174,204)
				return
			else
				dialog "[Mark]"
				dialog "I'm sorry, but you're carrying"
				dialog "too many items with you. Please store some of your things in your Kafra Storage before purchasing"
				dialog "the Apple Combo Set."
				close()
				return
			end
			close()
			return
		end
	elseif mresulta == 3 then
		dialog "[Mark]"
		dialog "I see."
		dialog "Feel free to"
		dialog "come back any"
		dialog "time. Thank you."
		close()
		return
	end
	close()
end

npc("einbroch","Morei",SPRITE_4_M_EINMAN2,175,196,5,0,0,"einbroch_Morei_175196")
OnCommand: "on"
	enablenpc "Morei"
end
OnCommand: "off"
	disablenpc "Morei"
end
function einbroch_Morei_175196()
	dialog "[Morei]"
	dialog "Greetings,"
	dialog "I am Morei,"
	dialog "Assistant Guide"
	dialog "of Einbroch Tower."
	wait()
	dialog "[Morei]"
	dialog "If you wish to return"
	dialog "to the ground floor,"
	dialog "please let me know."
	dialog "Would you like to go"
	dialog "back to ground level?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		dialog "[Morei]"
		dialog "I see."
		dialog "Let me lead you"
		dialog "to the ground floor."
		dialog "Thank you for using"
		dialog "our services."
		close()
		local gogomen = math.random(1 3
		if gogomen == 1 then
			moveto("einbroch",170,229)
		elseif gogomen == 2 then
			moveto("einbroch",216,188)
		else
			moveto("einbroch",178,167)
		end
		return
	elseif mresulta == 2 then
		dialog "[Morei]"
		dialog "I see."
		dialog "I hope you"
		dialog "enjoy your time"
		dialog "in Einbroch Tower."
		close()
		return
	end
	close()
end

npc("einbroch","Oberu",SPRITE_4_M_EINMAN,173,229,5,0,0,"einbroch_Oberu_173229")
OnCommand: "on"
	enablenpc "Oberu"
end
OnCommand: "off"
	disablenpc "Oberu"
end
function einbroch_Oberu_173229()
	dialog "[Oberu]"
	dialog "Good day~"
	dialog "I'm Oberu, your"
	dialog "guide to exploring"
	dialog "the Einbroch Tower."
	wait()
	dialog "[Oberu]"
	dialog "Einbroch Tower offers"
	dialog "the best view of our city"
	dialog "and it's a great place to"
	dialog "meet with friends or take"
	dialog "a date. The Einbroch Tower"
	dialog "admission fee is 10 zeny."
	wait()
	dialog "[Oberu]"
	dialog "Right now, we're offering"
	dialog "a special promotion called"
	dialog "the Apple Combo Set for only"
	dialog "20 zeny. This set includes"
	dialog "Einbroch Tower admission"
	dialog "and an Apple to snack on."
	wait()
	local mresulta = menu("Tower Admission Only","Apple Combo Set","Cancel")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 10) then
			dialog "[Oberu]"
			dialog "I'm sorry, but you"
			dialog "don't have enough"
			dialog "zeny. The Einbroch"
			dialog "Tower Admission"
			dialog "fee is 10 zeny."
			close()
			return
		else
			dialog "[Oberu]"
			dialog "Thank you for"
			dialog "using our services."
			dialog "Let me guide you to"
			dialog "the tower right away."
			dropgold(10)
			close()
			moveto("einbroch",181,196)
			return
		end
	elseif mresulta == 2 then
		if (getvar(VAR_MONEY) < 20) then
			dialog "[Oberu]"
			dialog "I'm sorry, but you don't"
			dialog "have enough zeny. The"
			dialog "Apple Combo Set is 20 zeny."
			close()
			return
		else
			dialog "[Oberu]"
			dialog "Before I guide you to"
			dialog "the tower, let me check"
			dialog "your status to insure"
			dialog "your safety before I give"
			dialog "you the Apple Combo Set."
			wait()
			local KOJIMA = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
			if KOJIMA > 20 then
				dialog "[Oberu]"
				dialog "Thank you for"
				dialog "using our services."
				dialog "Let me guide you to"
				dialog "the tower right away."
				dropgold(20)
				getitem("Apple",1)
				close()
				moveto("einbroch",174,204)
				return
			else
				dialog "[Oberu]"
				dialog "I'm sorry, but you're carrying"
				dialog "too many items with you. Please store some of your things in your Kafra Storage before purchasing"
				dialog "the Apple Combo Set."
				close()
				return
			end
			close()
			return
		end
	elseif mresulta == 3 then
		dialog "[Oberu]"
		dialog "I see."
		dialog "Feel free to"
		dialog "come back any"
		dialog "time. Thank you."
		close()
		return
	end
	close()
end

npc("einbroch","Khemko",SPRITE_4_M_EINMAN,176,172,5,0,0,"einbroch_Khemko_176172")
OnCommand: "on"
	enablenpc "Khemko"
end
OnCommand: "off"
	disablenpc "Khemko"
end
function einbroch_Khemko_176172()
	dialog "[Khemko]"
	dialog "Good day~"
	dialog "I'm Khemko, your"
	dialog "guide to exploring"
	dialog "the Einbroch Tower."
	wait()
	dialog "[Khemko]"
	dialog "Einbroch Tower offers"
	dialog "the best view of our city"
	dialog "and it's a great place to"
	dialog "meet with friends or take"
	dialog "a date. The Einbroch Tower"
	dialog "admission fee is 10 zeny."
	wait()
	dialog "[Khemko]"
	dialog "Right now, we're offering"
	dialog "a special promotion called"
	dialog "the Apple Combo Set for only"
	dialog "20 zeny. This set includes"
	dialog "Einbroch Tower admission"
	dialog "and an Apple to snack on."
	wait()
	local mresulta = menu("Tower Admission Only","Apple Combo Set","Cancel")
	if mresulta == 1 then
		if (getvar(VAR_MONEY) < 10) then
			dialog "[Khemko]"
			dialog "I'm sorry, but you"
			dialog "don't have enough"
			dialog "zeny. The Einbroch"
			dialog "Tower Admission"
			dialog "fee is 10 zeny."
			close()
			return
		else
			dialog "[Khemko]"
			dialog "Thank you for"
			dialog "using our services."
			dialog "Let me guide you to"
			dialog "the tower right away."
			dropgold(10)
			close()
			moveto("einbroch",181,196)
			return
		end
	elseif mresulta == 2 then
		if (getvar(VAR_MONEY) < 20) then
			dialog "[Khemko]"
			dialog "I'm sorry, but you don't"
			dialog "have enough zeny. The"
			dialog "Apple Combo Set is 20 zeny."
			close()
			return
		else
			dialog "[Khemko]"
			dialog "Before I guide you to"
			dialog "the tower, let me check"
			dialog "your status to insure"
			dialog "your safety before I give"
			dialog "you the Apple Combo Set."
			wait()
			local KOJIMA = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
			if KOJIMA > 20 then
				dialog "[Khemko]"
				dialog "Thank you for"
				dialog "using our services."
				dialog "Let me guide you to"
				dialog "the tower right away."
				dropgold(20)
				getitem("Apple",1)
				close()
				moveto("einbroch",174,204)
				return
			else
				dialog "[Khemko]"
				dialog "I'm sorry, but you're carrying"
				dialog "too many items with you. Please store some of your things in your Kafra Storage before purchasing"
				dialog "the Apple Combo Set."
				close()
				return
			end
			close()
			return
		end
	elseif mresulta == 3 then
		dialog "[Khemko]"
		dialog "I see."
		dialog "Feel free to"
		dialog "come back any"
		dialog "time. Thank you."
		close()
		return
	end
	close()
end

npc("einbroch","Train Station Staff#ein-1",SPRITE_4_M_EIN_SOLDIER,232,272,3,0,0,"einbroch_Train_Station_Staff#ein-1_232272")
OnCommand: "on"
	enablenpc "Train Station Staff#ein-1"
end
OnCommand: "off"
	disablenpc "Train Station Staff#ein-1"
end
function einbroch_Train_Station_Staff#ein-1_232272()
	dialog "[Staff]"
	dialog "Welcome to"
	dialog "the Train Station."
	dialog "Trains to Einbech"
	dialog "are always running"
	dialog "so if you miss one,"
	dialog "it's no problem."
	wait()
	dialog "[Staff]"
	dialog "The fare to board the"
	dialog "train that runs the Einbroch"
	dialog "to Einbech line is 200 zeny."
	dialog "Would you like to buy a ticket?"
	wait()
	local mresulta = menu("Yes.","No.","About the Environment...")
	if mresulta == 1 then
		if getvar(VAR_MONEY) > 199 then
			dialog "[Staff]"
			dialog "Thank you"
			dialog "very much."
			dialog "Have a safe trip."
			dialog "^333333*Ahem*^000000 All aboard!"
			close()
			dropgold(200)
			moveto("einbech",43,215)
			return
		else
			dialog "[Staff]"
			dialog "I'm sorry, but this"
			dialog "isn't enough zeny"
			dialog "to pay the train fare."
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Staff]"
		dialog "Very well, then."
		dialog "Please enjoy your"
		dialog "stay in Einbroch."
		close()
		return
	elseif mresulta == 3 then
		dialog "[Staff]"
		dialog "Einbroch is infamous for"
		dialog "its air pollution, no doubt"
		dialog "caused by the industrial"
		dialog "facilities located here."
		dialog "It's really horrible..."
		wait()
		dialog "[Staff]"
		dialog "Sometimes the air pollution"
		dialog "gets so bad that it becomes"
		dialog "hard to breathe. If you hear"
		dialog "the Einbroch Smog Alert, you"
		dialog "should find shelter immediately! ^FFFFFFcob^000000"
		close()
		return
	end
end

npc("einbroch","Train Station Staff#ein-2",SPRITE_4_M_EIN_SOLDIER,252,301,3,0,0,"einbroch_Train_Station_Staff#ein-2_252301")
OnCommand: "on"
	enablenpc "Train Station Staff#ein-2"
end
OnCommand: "off"
	disablenpc "Train Station Staff#ein-2"
end
function einbroch_Train_Station_Staff#ein-2_252301()
	dialog "[Staff]"
	dialog "Welcome to"
	dialog "the Train Station."
	dialog "If you'd like to board"
	dialog "the Einbroch to Einbech"
	dialog "line, please pay the fee of"
	dialog "200 zeny if you'd like to ride."
	wait()
	local mresulta = menu("Yes.","No.","About the Environment...")
	if mresulta == 1 then
		if getvar(VAR_MONEY) > 199 then
			dialog "[Staff]"
			dialog "Thank you for"
			dialog "using our service."
			dialog "Have a safe trip."
			close()
			dropgold(200)
			moveto("einbech",43,215)
			return
		else
			dialog "[Staff]"
			dialog "I'm sorry, but"
			dialog "you need at least"
			dialog "200 Zeny to pay"
			dialog "for so pay your train fare."
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Staff]"
		dialog "Well, there's aways"
		dialog "a train heading towards"
		dialog "Einbech, so feel free to"
		dialog "so please come back"
		dialog "come back at any time.."
		close()
		return
	elseif mresulta == 3 then
		dialog "[Staff]"
		dialog "Oh..."
		dialog "It's not really"
		dialog "a source of city pride,"
		dialog "but the air in Einbroch"
		dialog "is the most polluted in"
		dialog "the entire world. I'm sure"
		dialog "you've noticed by now."
		wait()
		dialog "[Staff]"
		dialog "Because this is a heavily"
		dialog "industrial area, when the"
		dialog "pollution in the air gets so"
		dialog "bad, an emergency Smog"
		dialog "Alert is sent out. If you hear"
		dialog "it, run and find shelter!"
		close()
		return
	end
end

npc("einbroch","Leslie#ein_1",SPRITE_4_F_EINOLD,259,326,3,0,0,"einbroch_Leslie#ein_1_259326")
OnCommand: "on"
	enablenpc "Leslie#ein_1"
end
OnCommand: "off"
	disablenpc "Leslie#ein_1"
end
function einbroch_Leslie#ein_1_259326()
	dialog "[Leslie]"
	dialog "^666666*Cough cough!*^000000"
	dialog "Laaaand sakes!"
	wait()
	dialog "[Leslie]"
	dialog "An old woman like me"
	dialog "can't breathe this air! How"
	dialog "do people even live in all this"
	dialog "smog? Sure, the air in Einbech"
	dialog "isn't pristine, but the air here in Einbroch is much worse! ^333333*Cough~!*^000000"
	wait()
	dialog "[Leslie]"
	dialog "I hate coming here"
	dialog "sometimes! The air is"
	dialog "totally polluted and this"
	dialog "city is full of stuck up"
	dialog "pricks! But they sell stuff"
	dialog "here I can't buy back home..."
	close()
end

npc("einbroch","Tan#ein",SPRITE_4_M_EINMAN,236,191,3,0,0,"einbroch_Tan#ein_236191")
OnCommand: "on"
	enablenpc "Tan#ein"
end
OnCommand: "off"
	disablenpc "Tan#ein"
end
function einbroch_Tan#ein_236191()
	dialog "[Tan]"
	dialog "All the factories"
	dialog "here in Einbroch are"
	dialog "causing a serious air"
	dialog "pollution problem."
	wait()
	dialog "[Tan]"
	dialog "I'm an Airship engineer and"
	dialog "everyday, all day long, I deal"
	dialog "with oil stains and all sorts"
	dialog "of pollutants. I'm surprised"
	dialog "I haven't gotten sick yet..."
	wait()
	dialog "[Tan]"
	dialog "Still, I try to be careful"
	dialog "when I can. Whenever I go"
	dialog "out into the city's red fog,"
	dialog "I always wear my Flu Mask."
	dialog "If you'll be here for a while,"
	dialog "you should carry one with you."
	close()
end

npc("einbroch","Little Toby#ein-1",SPRITE_4_M_EINMAN,228,121,5,0,0,"einbroch_Little_Toby#ein-1_228121")
OnCommand: "on"
	enablenpc "Little Toby#ein-1"
end
OnCommand: "off"
	disablenpc "Little Toby#ein-1"
end
function einbroch_Little_Toby#ein-1_228121()
	dialog "[Little Toby]"
	dialog "Excuse me..."
	dialog "But I'm lost!"
	dialog "I can't find my"
	dialog "mom or dad!"
	wait()
	dialog "[Little Toby]"
	dialog "A-am I at the Airport?!"
	dialog "My parents are supposed"
	dialog "to come get me, but I still"
	dialog "haven't found them! We just"
	dialog "moved here, so I don't know"
	dialog "where anything is!"
	wait()
	dialog "[Little Toby]"
	dialog "W-wait!"
	dialog "Where are you"
	dialog "going?! Don't leave"
	dialog "me, I'm all alone...!"
	close()
end

npc("einbroch","Airship Engineer#ein-1",SPRITE_4_M_EINMAN,40,116,1,0,0,"einbroch_Airship_Engineer#ein-1_40116")
OnCommand: "on"
	enablenpc "Airship Engineer#ein-1"
end
OnCommand: "off"
	disablenpc "Airship Engineer#ein-1"
end
function einbroch_Airship_Engineer#ein-1_40116()
	dialog "[Airship Engineer]"
	dialog "H-hey! Don't"
	dialog "touch my precious"
	dialog "Burielle! I just finished"
	dialog "her tune-up and now she's"
	dialog "sleeping! J-just step away!"
	wait()
	local mresulta = menu("Who's Burielle?","Sorry about That.")
	if mresulta == 1 then
		dialog "[Airship Engineer]"
		dialog "Burielle is the prettiest"
		dialog "model among all the Airships"
		dialog "made within the last ten years!"
		dialog "She might be grounded now, but"
		dialog "with my healing hands, she'll"
		dialog "conquer the skies again!"
		wait()
		local mresultb = menu("Ah~","Uh huh...")
		if mresultb == 1 then
			dialog("[","+PcName+"]"")
			dialog "Ah~"
			dialog "I see, so you're"
			dialog "working on restoring"
			dialog "this magnificent specimen"
			dialog "of an Airship. Best of luck~"
			wait()
			dialog "[Airship Engineer]"
			dialog "Yeah. I'd appreciate"
			dialog "it if you'd just be careful."
			dialog "I've put a lot of love into"
			dialog "fixing up Burielle..."
		elseif mresultb == 2 then
			dialog("[","+PcName+"]"")
			dialog "Uh huh..."
			dialog "Right. For a second"
			dialog "there, I thought you were"
			dialog "talking about a person, but"
			dialog "then I also assumed that you"
			dialog "weren't, you know, a nutcase."
			wait()
			dialog("[","+PcName+"]"")
			dialog "Oh, did you say,"
			dialog "''prettiest model?''"
			dialog "All Airships look the"
			dialog "same to me, this one"
			dialog "ain't special at all. You've"
			dialog "gone loony tunes, paley boy."
			wait()
			Emotion("Airship Engineer#ein-1","ET_FRET")
			dialog "[Airship Engineer]"
			dialog "Wh-what...?!"
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Airship Engineer]"
		dialog "Well, at least you know"
		dialog "what you did wrong. Now"
		dialog "quit disturbing her and git!"
		close()
		return
	end
end

npc("einbroch","Centzu",SPRITE_4_M_EINMAN2,294,312,3,0,0,"einbroch_Centzu_294312")
OnCommand: "on"
	enablenpc "Centzu"
end
OnCommand: "off"
	disablenpc "Centzu"
end
function einbroch_Centzu_294312()
	dialog "[Centzu]"
	dialog "I've lived here for"
	dialog "a long time and I see"
	dialog "that this huge city is still"
	dialog "growing bigger everyday."
	wait()
	dialog "[Centzu]"
	dialog "How did Einbroch get so"
	dialog "huge so quickly? I still can't"
	dialog "believe there's been this much"
	dialog "development. Well, I suppose"
	dialog "it's not my concern. Nothing"
	dialog "I do will make a difference... "
	wait()
	dialog "[Centzu]"
	dialog "Even though such"
	dialog "rapid industrialization"
	dialog "can't be good for the"
	dialog "environment or the people,"
	dialog "I'll just sit back, watch what"
	dialog "happens and just enjoy life..."
	close()
end

npc("einbroch","Khowropher",SPRITE_4_M_EINOLD,232,255,5,0,0,"einbroch_Khowropher_232255")
OnCommand: "on"
	enablenpc "Khowropher"
end
OnCommand: "off"
	disablenpc "Khowropher"
end
function einbroch_Khowropher_232255()
	dialog "[Khowropher]"
	dialog "^666666*Cough cough*^000000"
	dialog "Jiminy! The air here"
	dialog "is so thick and grimy!"
	dialog "And it's worse for us old"
	dialog "people with breathing"
	dialog "problems! ^333333*Haaack!*^000000"
	wait()
	dialog "[Khowropher]"
	dialog "I don't care if they keep"
	dialog "building more and more"
	dialog "factories and homes in this"
	dialog "town. Still, I'd like to spend"
	dialog "the rest of my life somewhere"
	dialog "quiet and with clean air..."
	wait()
	dialog "[Khowropher]"
	dialog "Then again, Einbroch is my"
	dialog "hometown and I can't just up"
	dialog "and leave. I suppose it's my"
	dialog "fate to suffer from this foul air until the day I die. ^666666*Sigh...*^000000"
	close()
end

npc("einbroch","Khetine",SPRITE_4_M_EINMAN,143,109,5,0,0,"einbroch_Khetine_143109")
OnCommand: "on"
	enablenpc "Khetine"
end
OnCommand: "off"
	disablenpc "Khetine"
end
function einbroch_Khetine_143109()
	dialog "[Khetine]"
	dialog "Lately, there's been"
	dialog "talk about this empty"
	dialog "building downtown that's"
	dialog "been converted into some"
	dialog "sort of mysterious facility."
	wait()
	dialog "[Khetine]"
	dialog "It all seems pretty"
	dialog "shady, but I guess it's"
	dialog "not really my job to know"
	dialog "about that. I mean, if it"
	dialog "doesn't affect me, why"
	dialog "should I be concerned?"
	close()
end

npc("einbroch","Sleik",SPRITE_4_M_EINMAN2,229,149,3,0,0,"einbroch_Sleik_229149")
OnCommand: "on"
	enablenpc "Sleik"
end
OnCommand: "off"
	disablenpc "Sleik"
end
function einbroch_Sleik_229149()
	dialog "[Sleik]"
	dialog "Surprisingly, we have"
	dialog "a Train Station that everyone"
	dialog "has been calling a victory for"
	dialog "science. I mean, shouldn't we"
	dialog "be more amazed by the Airship?"
	wait()
	dialog "[Sleik]"
	dialog "Now, if you want to know"
	dialog "where the train actually goes,"
	dialog "I wouldn't be able to tell you."
	dialog "After all, I never rode it. But"
	dialog "still, I guess having our own"
	dialog "Train Station is a good thing."
	close()
end

npc("airport","Young Man#air",SPRITE_4W_M_03,174,41,6,0,0,"airport_Young_Man#air_17441")
function airport_Young_Man#air_17441()
	dialog "[Runnan]"
	dialog "...And that's why"
	dialog "I travel around the"
	dialog "globe. My bosses have"
	dialog "a keen eye for the most"
	dialog "exotic goods, so I acquire"
	dialog "them and make deliveries."
	wait()
	dialog "[Runnan]"
	dialog "There even was a time"
	dialog "when they had me collect"
	dialog "Jellopy, though that stuff is"
	dialog "pretty common nowadays."
	dialog "Now that I think about it, why"
	dialog "did they need so much stuff?"
	close()
end

npc("airport","Old Man#air",SPRITE_4_M_ORIENT01,176,41,4,0,0,"airport_Old_Man#air_17641")
function airport_Old_Man#air_17641()
	dialog "[Zhen Lan]"
	dialog "Now, I hear that the"
	dialog "monsters around here"
	dialog "carry around some ore"
	dialog "that dazzles with a sublimely"
	dialog "beautiful light. Neat, huh?"
	wait()
	dialog "[Zhen Lan]"
	dialog "These ores are a great"
	dialog "material to use in making"
	dialog "flower vases. My friend, who"
	dialog "happens to be a dollmaker,"
	dialog "told me that. He makes these dolls using all sorts of materials."
	wait()
	dialog "[Zhen Lan]"
	dialog "He fashions them out of"
	dialog "Well-Tanned Leather, stuffs"
	dialog "them with Bird Feathers, and"
	dialog "uses Cyfar or Zargon to make"
	dialog "the eyes. He even uses a Jellopy at the bottom to balance the doll."
	wait()
	dialog "[Zhen Lan]"
	dialog "I guess that goes to show"
	dialog "that things that seem useless"
	dialog "might actually be handy in some"
	dialog "way. So don't worry about having too much stuff. Sooner or later, it might be useful to someone."
	close()
end

npc("einbech","Nemuk",SPRITE_4_M_EINMAN,172,113,4,0,0,"einbech_Nemuk_172113")
function einbech_Nemuk_172113()
	dialog "[Nemuk]"
	dialog "You seem to be an"
	dialog "outsider, so let me"
	dialog "ask you something."
	dialog "What do you think "
	dialog "of Einbech?"
	wait()
	local mresulta = menu("It's fine.","It looks tough to live here.")
	if mresulta == 1 then
		dialog "[Nemuk]"
		dialog "Huh...?"
		dialog "I'm not sure what"
		dialog "you've seen, but I'm"
		dialog "surprised to hear you"
		dialog "say something like that."
		wait()
		dialog "[Nemuk]"
		dialog "It's been ten years since"
		dialog "I've started to think about"
		dialog "moving out. However, I'm still"
		dialog "debating it. Now, if I were rich, I'd leave in no time, but it's hard getting the money to move out."
		wait()
		dialog "[Nemuk]"
		dialog "^333333*Sigh...*^000000"
		dialog "Maybe if I had been"
		dialog "an adventurer when I was"
		dialog "younger, I wouldn't have"
		dialog "these problems today..."
		close()
		return
	elseif mresulta == 2 then
		dialog "[Nemuk]"
		dialog "I thought so."
		dialog "Well, I apologize if"
		dialog "I put you on the spot."
		wait()
		dialog "[Nemuk]"
		dialog "Everyone here has been"
		dialog "having a tough time just"
		dialog "living day to day for as long"
		dialog "as I can remember. It's like"
		dialog "things never seem to get any"
		dialog "better, no matter what we do."
		wait()
		dialog "[Nemuk]"
		dialog "I really want to leave,"
		dialog "but it's just an empty"
		dialog "wish. My body is trapped"
		dialog "here while my heart longs"
		dialog "for a much better life. ^333333*Sigh*^000000"
		dialog "Is it hopeless? What can I do?"
		close()
		return
	end


npc("einbech","Young Man#air",SPRITE_4_M_EINMAN,197,139,4,0,0,"einbech_Young_Man#air_197139")
function einbech_Young_Man#air_197139()
	dialog "[Heinz]"
	dialog "Wow..."
	dialog "An adventurer from"
	dialog "Rune-Midgarts, eh?"
	dialog "What brings you here?"
	wait()
	dialog "[Heinz]"
	dialog "Einbech doesn't offer much"
	dialog "in terms of sight-seeing, but"
	dialog "have you come to see the mine?"
	dialog "Right now, it's swarming with"
	dialog "monsters and we can't dig any"
	dialog "ores because it's so dangerous."
	wait()
	dialog "[Heinz]"
	dialog "Now, if some adventurers were"
	dialog "generous enough to hunt down"
	dialog "those evil creatures, we'd be able to mine again and they could earn some extra zeny. It's like killing two birds with one stone. Hahaha!"
	wait()
	dialog "[Heinz]"
	dialog "Oh wait... I'm sorry."
	dialog "I don't know what's wrong"
	dialog "with me, asking complete"
	dialog "strangers to do favors for"
	dialog "me. It's completely rude!"
	dialog "I mean, who would do that?"
	wait()
	dialog "[Heinz]"
	dialog "But... I'm beyond caring"
	dialog "about my pride. For the sake"
	dialog "of all that is good and holy, I'm begging you, please kill those foul and evil creatures. Please~!"
	close()
end

npc("einbech","Mogan",SPRITE_4_M_EINMINER,128,238,5,0,0,"einbech_Mogan_128238")
function einbech_Mogan_128238()
	dialog "[Mogan]"
	dialog "Recently, there were a few"
	dialog "cave-ins where many miners"
	dialog "were injured. It was discussed"
	dialog "in the Town Council and in my"
	dialog "opinion, I think the miners dug"
	dialog "too deep and disturbed... ^FF0000it^000000."
	wait()
	dialog "[Mogan]"
	dialog "Yes, they awoke Ungoliant,"
	dialog "the master of the caves that"
	dialog "has existed since ancient time."
	dialog "I don't know how many more will"
	dialog "be victimized by Ungoliant in the"
	dialog "future. There's no telling..."
	wait()
	dialog "[Mogan]"
	dialog "Adventurer, be careful"
	dialog "if you travel inside the"
	dialog "mines, lest your footsteps"
	dialog "disturb Ungoliant's slumber."
	close()
end

npc("einbech","Hander",SPRITE_4_M_EINMINER,129,234,5,0,0,"einbech_Hander_129234")
function einbech_Hander_129234()
	dialog "[Hander]"
	dialog "Those Einbroch bastards!"
	dialog "Living off the resources we"
	dialog "dig up while we keep working"
	dialog "for them like suckers! Damn!"
	wait()
	dialog "[Hander]"
	dialog "Everyday, we risk our"
	dialog "freakin' lives just so we"
	dialog "can make a living! Why don't"
	dialog "the elders do something about"
	dialog "this, like raise our ore prices?"
	wait()
	dialog "[Hander]"
	dialog "The work schedule's"
	dialog "unreasonable, Cavitar's"
	dialog "wife was attacked by a mine"
	dialog "creature, the hospital's too"
	dialog "far away and we don't have"
	dialog "any food to eat! Why...?!"
	close()
end

npc("einbech","Gushenmu",SPRITE_4_M_EINMINER,105,218,5,0,0,"einbech_Gushenmu_105218")
function einbech_Gushenmu_105218()
	dialog "[Gushenmu]"
	dialog "I've lived here a long time"
	dialog "and, believe it or not, things"
	dialog "weren't as tough in the past"
	dialog "as they are right now."
	wait()
	dialog "[Gushenmu]"
	dialog "For lots of different reasons,"
	dialog "the work is more dangerous"
	dialog "and we're running real low on"
	dialog "manpower. And the factories in"
	dialog "Einbroch make so much smog,"
	dialog "we can't even see sunlight here."
	wait()
	dialog "[Gushenmu]"
	dialog "The sad reality of mining"
	dialog "life right now is that we"
	dialog "wake up, go to work, and at"
	dialog "the end of the day, some of us"
	dialog "are injured while a few others never come to work the next day."
	wait()
	dialog "[Gushenmu]"
	dialog "And as Einbech and Einbroch"
	dialog "have grown, I hear more and"
	dialog "more rumors that unfamiliar"
	dialog "monsters are beginning to"
	dialog "swarm outside of town. This"
	dialog "is really Einbech's worst time..."
	close()
end

npc("einbech","Train Station Staff#ein-3",SPRITE_4_M_EIN_SOLDIER,39,215,5,0,0,"einbech_Train_Station_Staff#ein-3_39215")
function einbech_Train_Station_Staff#ein-3_39215()
	dialog "[Staff]"
	dialog "Welcome to"
	dialog "the Train Station."
	dialog "The fare to take the"
	dialog "train to Einbroch is"
	dialog "200 zeny. Would"
	dialog "you like to ride?"
	wait()
	local mresulta = menu("Yes.","No.")
	if mresulta == 1 then
		if getvar(VAR_MONEY) > 199 then
			dialog "[Staff]"
			dialog "Thank you and"
			dialog "we hope you enjoy"
			dialog "the ride. All aboard!"
			close()
			dropgold(200)
			moveto("einbroch",226,276)
			return
		else
			dialog "[Staff]"
			dialog "I'm sorry,"
			dialog "but you don't"
			dialog "have enough zeny"
			dialog "to pay the train fare."
			close()
			return
		end
	elseif mresulta == 2 then
		dialog "[Staff]"
		dialog "Please enjoy"
		dialog "your stay here"
		dialog "in Einbech."
		close()
		return
	end
end

npc("einbech","Train Station Manager#ein",SPRITE_4_M_EIN_SOLDIER,157,215,3,0,0,"einbech_Train_Station_Manager#ein_157215")
function einbech_Train_Station_Manager#ein_157215()
	dialog "[Train Station Manager]"
	dialog "This train station"
	dialog "is strictly for trains"
	dialog "running from Einbech"
	dialog "to Einbroch. Please speak"
	dialog "to the staff in the 11 'o clock direction if you'd like to board."
	close()
end

npc("airplane","Airship Crew#ein-1",SPRITE_4_M_EIN_SOLDIER,100,69,3,0,0,"airplane_Airship_Crew#ein-1_10069")
function airplane_Airship_Crew#ein-1_10069()
	dialog "[Airship Crew]"
	dialog "If we've landed at"
	dialog "your destination and"
	dialog "you'd like to leave the"
	dialog "Airship, please use the"
	dialog "stairs up ahead. Thank"
	dialog "you for your patronage."
	close()
end

npc("airplane","Umbala Kid#ein_p",SPRITE_4_M_UMKID,64,94,1,0,0,"airplane_Umbala_Kid#ein_p_6494")
function airplane_Umbala_Kid#ein_p_6494()
	if getvar(um_trans) == 10 then
		Emotion("Umbala Kid#ein_p","ET_PROFUSELY_SWAT")
		dialog "[Kid]"
		dialog "Wow, mom!"
		dialog "L-look at this!"
		dialog "We're flying! W-we're..."
		dialog "We're in the freakin' sky!"
		close()
		return
	else
		Emotion("Umbala Kid#ein_p","ET_PROFUSELY_SWAT")
		dialog "[Kid]"
		dialog "Makumalagu!"
		dialog "Saampa joojimbo"
		dialog "kaku na jedi Solo."
		dialog "Bwahahahahahahaah!"
		close()
		return
	end
end

npc("airplane","Umbala Lady#ein_p",SPRITE_4_F_UMWOMAN,66,93,3,0,0,"airplane_Umbala_Lady#ein_p_6693")
function airplane_Umbala_Lady#ein_p_6693()
	if getvar(um_trans) == 10 then
		Emotion("Umbala Lady#ein_p","ET_THINK")
		dialog "[Lady]"
		dialog "Shush..."
		dialog "Honey, behave~"
		dialog "Don't act so excited"
		dialog "when we're out in a"
		dialog "public place like this!"
		close()
		return
	else
		Emotion("Umbala Lady#ein_p","ET_THINK")
		dialog "[Lady]"
		dialog "Chooktu!"
		dialog "Sacraup matii!"
		dialog "Shaka gurftalfi"
		dialog "huntiki manjoo!"
		close()
		return
	end
end

npc("airplane","Umbala Man#ein_p",SPRITE_4_M_UMSOLDIER,71,91,7,0,0,"airplane_Umbala_Man#ein_p_7191")
function airplane_Umbala_Man#ein_p_7191()
	if getvar(um_trans) == 10 then
		dialog "[Chrmlim]"
		dialog "Hey there~"
		dialog "From that look on"
		dialog "your face, I see that"
		dialog "you can understand"
		dialog "me. ^333333*Whew...!*^000000"
		wait()
		Emotion("Umbala Man#ein_p","ET_HNG")
		dialog "[Chrmlim]"
		dialog "I've been helping the"
		dialog "Airship enterprise by"
		dialog "having the Airship Crewmen"
		dialog "train in Umbala to overcome"
		dialog "any acrophobia they might have through bungee jumping. Neat, eh?"
		wait()
		dialog "[Chrmlim]"
		dialog "But..."
		dialog "Some of them couldn't"
		dialog "overcome their fear of"
		dialog "heights. And a few even"
		dialog "ended up, um, ^333333in Nifflheim^000000."
		close()
		return
	else
		dialog "[Chrmlim]"
		dialog "Bajoo ga"
		dialog "nukta Airship."
		wait()
		dialog "[Chrmlim]"
		dialog "..."
		dialog "......"
		wait()
		Emotion("Umbala Man#ein_p","ET_HNG")
		dialog "[Chrmlim]"
		dialog "Shabala moow bajama"
		dialog "Airship kulaha googoona "
		dialog "salu. Dama, kookoo na nu"
		dialog "yukuta. Um, fashuku na ret!"
		close()
		return
	end
end

npc("einbech","Tollaf",SPRITE_4_M_EINMAN,151,168,3,0,0,"einbech_Tollaf_151168")
function einbech_Tollaf_151168()
	dialog "[Tollaf]"
	dialog "Ah...!"
	dialog "This is killing me!"
	dialog "I don't have the money"
	dialog "to move, but I don't wanna"
	dialog "live in this town anymore!"
	wait()
	dialog "[Tollaf]"
	dialog "People everywhere else"
	dialog "live so much better than we"
	dialog "do, especially those snobs in"
	dialog "Einbroch! Einbech must be the"
	dialog "worst town Schwaltzvalt Republic. No, it's the worst in the world!"
	close()
end

npc("einbech","Raust",SPRITE_4_M_EINOLD,93,139,5,0,0,"einbech_Raust_93139")
function einbech_Raust_93139()
	dialog "[Raust]"
	dialog "I don't get it!"
	dialog "Einbroch gets bigger"
	dialog "and fancier and our"
	dialog "town gets dirtier and"
	dialog "nastier. What the hell?!"
	wait()
	dialog "[Raust]"
	dialog "Not only do the people"
	dialog "here look more ragged, we're"
	dialog "more tired and older looking"
	dialog "even! It's dirty, it's crowded,"
	dialog "everything in this city is total crap! What, you want a list?!"
	wait()
	dialog "[Raust]"
	dialog "The food, literally, is"
	dialog "garbage! The jobs here have"
	dialog "to be violations of human rights. There's barely any women here and the ones we do have are all stank anyway! Are you convinced yet?!"
	wait()
	dialog "[Raust]"
	dialog "Why is everything"
	dialog "that's good over in"
	dialog "Einbroch?! I hate this!"
	dialog "^333333*Grumble*^000000"
	close()
end

npc("einbech","Mjunia",SPRITE_4_F_EINWOMAN,149,154,3,0,0,"einbech_Mjunia_149154")
function einbech_Mjunia_149154()
	dialog "[Mjunia]"
	dialog "It's hard being a woman"
	dialog "in this town. By being born"
	dialog "here, it's like fate just decided to be especially cruel to me."
	wait()
	dialog "[Mjunia]"
	dialog "My skin and hands are"
	dialog "rough from all the work"
	dialog "I have to do. But worst of"
	dialog "all... I... I... I've developed"
	dialog "bigger muscles than most"
	dialog "guys! Waaaaaah~!"
	wait()
	dialog "[Mjunia]"
	dialog "I wish I could find"
	dialog "a nice guy from Einbroch"
	dialog "and get married so I can"
	dialog "get away from this town."
	dialog "But it doesn't look like"
	dialog "that will happen..."
	wait()
	dialog "[Mjunia]"
	dialog "And I'd never marry"
	dialog "anyone from Einbech!"
	dialog "I'd rather die cold and"
	dialog "alone than cold and married"
	dialog "to some Einbech hooligan."
	wait()
	dialog "[Mjunia]"
	dialog "Look at these"
	dialog "muscles. What do"
	dialog "you think? Am I pretty?"
	dialog "^333333*Sniff*^000000 I gave up trying"
	dialog "to be feminine years ago."
	dialog "I have to work so hard..."
	close()
end

npc("einbech","Ekuri",SPRITE_4_M_EINMINER,130,253,1,0,0,"einbech_Ekuri_130253")
function einbech_Ekuri_130253()
	dialog "[Ekuri]"
	dialog "Yo-heave-ho!"
	dialog "Yo-heave-ho~!"
	wait()
	dialog "[Ekuri]"
	dialog "What am I doing here?"
	dialog "Heck, I'm scared to death"
	dialog "of entering the mine! But"
	dialog "I can make a living here at"
	dialog "the entrance by gathering"
	dialog "scrap metal! Smart, huh?"
	wait()
	dialog "[Ekuri]"
	dialog "Sometimes, I get lucky"
	dialog "and score an entire ore!"
	dialog "Sure, I'm a coward, but"
	dialog "at least I'm alive. Well,"
	dialog "for the time being."
	wait()
	dialog "[Ekuri]"
	dialog "Now you know what"
	dialog "I'm doing here. So why"
	dialog "don't you leave me to"
	dialog "my work? Heave-ho!"
	dialog "Ores, come to me!"
	close()
end

npc("ein_in01","Teinz",SPRITE_4_M_REPAIR,113,211,3,0,0,"ein_in01_Teinz_113211")
function ein_in01_Teinz_113211()
	dialog "[Teinz]"
	dialog "If you just pay me money,"
	dialog "I'll be your slave! There's"
	dialog "nothing I won't do! Anything"
	dialog "is fair game. Hell, I'll get buck naked if you pay me enough."
	wait()
	dialog "[Teinz]"
	dialog "If you pay me what I'm"
	dialog "worth, I'll work hard at"
	dialog "any task you set me to."
	dialog "Sure, mining's rough, but"
	dialog "as long as the zeny's coming"
	dialog "in, I'm happy. Heh heh heh~"
	close()
end

npc("ein_in01","Lowe",SPRITE_4_M_REPAIR,48,220,5,0,0,"ein_in01_Lowe_48220")
function ein_in01_Lowe_48220()
	dialog "[Lowe]"
	dialog "..."
	dialog "......"
	wait()
	dialog "[Lowe]"
	dialog "..."
	dialog "......"
	dialog "........."
	wait()
	dialog "[Lowe]"
	dialog "Hey. Why are you"
	dialog "looking at me like"
	dialog "that? There's no idle"
	dialog "chatting allowed at work."
	dialog "If Canphotii catches"
	dialog "you, you'll be punished..."
	wait()
	dialog "[Lowe]"
	dialog "Oh wait..."
	dialog "You don't work here."
	dialog "I apologize, that kind"
	dialog "of reaction's an old"
	dialog "habit for me, adventurer."
	close()
end

npc("ein_in01","Dinje",SPRITE_4_F_EINWOMAN,87,237,5,0,0,"ein_in01_Dinje_87237")
function ein_in01_Dinje_87237()
	dialog "[Dinje]"
	dialog "Do you know why a woman"
	dialog "like me has to work in this"
	dialog "factory? I'll tell you why... "
	wait()
	dialog "[Dinje]"
	dialog "My lazy husband, Gesin,"
	dialog "is just lying there on the"
	dialog "ground! So I have to work"
	dialog "in order to support us!"
	wait()
	dialog "[Dinje]"
	dialog "We can't rest for even"
	dialog "a second if we want to save"
	dialog "enough money to become"
	dialog "wealthy and powerful some"
	dialog "day. Don't you understand?"
	wait()
	dialog "[Dinje]"
	dialog "Well, my husband obviously"
	dialog "doesn't! How can he not know"
	dialog "how the real world works?!"
	dialog "Hey, kick his ass for me if"
	dialog "he doesn't wake up soon!"
	close()
end

npc("ein_in01","Tsuen",SPRITE_4_M_REPAIR,84,218,3,0,0,"ein_in01_Tsuen_84218")
function ein_in01_Tsuen_84218()
	dialog "[Tsuen]"
	dialog "There was a time"
	dialog "when I dreamed of"
	dialog "being an adventurer,"
	dialog "just like you. But that"
	dialog "was a long time ago..."
	wait()
	dialog "[Tsuen]"
	dialog "Now, I'm nothing but"
	dialog "a factory manager. Still,"
	dialog "even if my job's not that"
	dialog "great, I'm pretty satisfied."
	dialog "I'm sure people enjoy the"
	dialog "products I oversee and all..."
	wait()
	dialog "[Tsuen]"
	dialog "Maybe my life was meant"
	dialog "to be this way, even if it's"
	dialog "not how I planned it. But the"
	dialog "time will come when I up and"
	dialog "leave and travel the world"
	dialog "once I get my chance!"
	wait()
	dialog "[Tsuen]"
	dialog "I hope the day will"
	dialog "come when I can meet"
	dialog "you out in that big wide"
	dialog "world and greet you as"
	dialog "a fellow adventurer."
	close()
end

npc("ein_in01","Gesin",SPRITE_4_M_DIEMAN,103,239,1,0,0,"ein_in01_Gesin_103239")
function ein_in01_Gesin_103239()
	dialog "[Gesin]"
	dialog "Arrrgh!"
	dialog "This is killing me!"
	dialog "Why should I be rich?"
	dialog "What's wrong with living"
	dialog "within our means?"
	wait()
	dialog "[Gesin]"
	dialog "I've got no problem"
	dialog "with my current way"
	dialog "of life, but the old ball"
	dialog "and chain disagrees."
	dialog "Why is she so obsessed"
	dialog "with riches and power?"
	wait()
	dialog "[Gesin]"
	dialog "Well, in any case, I'd"
	dialog "like to help her, but I can't"
	dialog "get up! I'm exhausted and"
	dialog "my body is just overtaxed."
	dialog "I have no strength at all."
	wait()
	dialog "[Gesin]"
	dialog "This is horrible~"
	dialog "I should be resting"
	dialog "instead of worrying"
	dialog "about making money..."
	close()
end

npc("ein_in01","Pevtatin",SPRITE_4_M_EINMINER,33,275,1,0,0,"ein_in01_Pevtatin_33275")
function ein_in01_Pevtatin_33275()
	dialog "[Pevtatin]"
	dialog "Good god!"
	dialog "I'm so stressed!"
	dialog "It's been nonstop"
	dialog "since I moved here!"
	wait()
	dialog "[Pevtatin]"
	dialog "The work is tough and"
	dialog "already the boss hates"
	dialog "me! I didn't move here"
	dialog "for this! Still, the pay is"
	dialog "decent so I guess I should"
	dialog "endure just a little longer."
	wait()
	dialog "[Pevtatin]"
	dialog "Here goes...!"
	dialog "Yo-heave-ho!"
	dialog "Yo-heave-ho~!"
	close()
end

npc("ein_in01","Rombell",SPRITE_4_M_REPAIR,36,204,3,0,0,"ein_in01_Rombell_36204")
function ein_in01_Rombell_36204()
	dialog "[Rombell]"
	dialog "It's great that the"
	dialog "factory is making good"
	dialog "business and drawing"
	dialog "in a lot of profit, but I still"
	dialog "have one major concern."
	wait()
	dialog "[Rombell]"
	dialog "The amount of pollution"
	dialog "that this place is causing"
	dialog "is horrific! We've got these"
	dialog "machines blowing out toxic"
	dialog "gas all day long! The air"
	dialog "can't be safe for very long..."
	wait()
	dialog "[Rombell]"
	dialog "I mean, the air we're"
	dialog "breathing right now is"
	dialog "pretty foul and things"
	dialog "are only going to get"
	dialog "worse. How can we"
	dialog "solve this problem?"
	close()
end

npc("ein_in01","Vonstein",SPRITE_4_M_EINMAN,64,271,3,0,0,"ein_in01_Vonstein_64271")
function ein_in01_Vonstein_64271()
	dialog "[Vonstein]"
	dialog "Staring at this"
	dialog "bubbling hot liquid"
	dialog "metal gives me a good"
	dialog "feeling inside. It's like"
	dialog "that stuff can melt anything!"
	wait()
	dialog "[Vonstein]"
	dialog "Imagine covering an"
	dialog "entire street of people"
	dialog "with that stuff! Bwahah--"
	dialog "Oh, I'm sorry if I'm talking"
	dialog "crazy talk! I'm just kidding~"
	close()
end

npc("ein_in01","Dorf",SPRITE_4_M_REPAIR,49,202,3,0,0,"ein_in01_Dorf_49202")
function ein_in01_Dorf_49202()
	dialog "[Dorf]"
	dialog "Machines are sooo"
	dialog "convenient. Just look"
	dialog "at this contraption easily"
	dialog "do tasks that'd be tough"
	dialog "for me to finish alone."
	wait()
	dialog "[Dorf]"
	dialog "Now this is what"
	dialog "I call technology!"
	dialog "Sure, it takes effort and"
	dialog "money to make one of"
	dialog "these, but what do I care?"
	wait()
	dialog "[Dorf]"
	dialog "I've got no problems,"
	dialog "so long as this freaking"
	dialog "thing keeps working the"
	dialog "way I want it to!"
	close()
end

npc("ein_in01","Khashurantze",SPRITE_4_M_EIN_SOLDIER,68,209,5,0,0,"ein_in01_Khashurantze_68209")
function ein_in01_Khashurantze_68209()
	dialog "[Khashurantze]"
	dialog "I'm sorry, but you need"
	dialog "special authority in order"
	dialog "to enter this place. I'll have"
	dialog "to ask you to leave right now."
	close()
	moveto("einbroch",179,63)
end

npc("ein_in01","Zherin",SPRITE_4_M_REPAIR,85,261,3,0,0,"ein_in01_Zherin_85261")
function ein_in01_Zherin_85261()
	dialog "[Zherin]"
	dialog "I'm in charge of this"
	dialog "blast furnace which"
	dialog "contains all of this"
	dialog "boiling magma."
	wait()
	dialog "[Zherin]"
	dialog "Even though it doesn't"
	dialog "require actual labor, this"
	dialog "job is pretty tiring. I've got"
	dialog "to pay careful attention all"
	dialog "the time. It's pretty stressful. ^FFFFFFcobo^000000"
	wait()
	dialog "[Zherin]"
	dialog "Still, I'm proud of my job"
	dialog "since I have the responsibility"
	dialog "of ensuring employee safety."
	dialog "Anyway, don't get too close"
	dialog "to the furnace. It won't do if"
	dialog "you get burned on accident!"
	close()
end

npc("ein_in01","Canphotii",SPRITE_4_M_EIN_SOLDIER,43,252,3,0,0,"ein_in01_Canphotii_43252")
function ein_in01_Canphotii_43252()
	dialog "[Canphotii]"
	dialog "Hustle, hustle!"
	dialog "Pick up the pace!"
	dialog "Anyone working too"
	dialog "slowly will be punished!"
	wait()
	dialog "[Canphotii]"
	dialog "Can't you understand"
	dialog "that?! Now go to your"
	dialog "station and get back to"
	dialog "work! Wait, are you even"
	dialog "an employee? If not, then"
	dialog "stop wandering around!"
	wait()
	dialog "[Canphotii]"
	dialog "You're not supposed"
	dialog "to be able to get in here!"
	dialog "I can't believe they let you"
	dialog "in! This requires extreme"
	dialog "disciplinary action!"
	close()
end

npc("ein_in01","Hotel Employee",SPRITE_4_M_EINMAN,206,224,3,0,0,"ein_in01_Hotel_Employee_206224")
function ein_in01_Hotel_Employee_206224()
	dialog "[Hotel Employee]"
	dialog "Good day, welcome to the"
	dialog "Einbroch Hotel. The staff is"
	dialog "always striving to accomodate"
	dialog "our guests with the highest"
	dialog "standards in cleanliness,"
	dialog "service and convenience~"
	wait()
	if (getvar(ein_tre) == 5) then
		dialog "[Hotel Employee]"
		dialog "Are you looking"
		dialog "for Mr. Defru Ark?"
		dialog "Oh right, he did mention"
		dialog "waiting for some package"
		dialog "from the Airport. Now let"
		dialog "me pull up that information..."
		wait()
		dialog "[Hotel Employee]"
		dialog "Ah, here we are."
		dialog "Mr. Defru Ark is"
		dialog "staying in Room 201."
		wait()
	else
		local mresulta = menu("Save","Take Rest - 5,000 zeny","Cancel")
		if mresulta == 1 then
			dialog "[Hotel Employee]"
			dialog "Your Respawn Point"
			dialog "has been saved here"
			dialog "in the Einbroch Hotel."
			dialog "Thank you, and please"
			dialog "come again."
			checkpoint("ein_in01",200,224)
			wait()
		elseif mresulta == 2 then
			if getvar(VAR_MONEY) > 4999 then
				dialog "[Hotel Employee]"
				dialog "Thank you."
				dialog "Please enjoy"
				dialog "your rest~"
				close()
				dropgold(5000)
				hpheal(100)
				spheal(100)
				moveto("ein_in01",272,167)
				return
			else
				dialog "[Hotel Employee]"
				dialog "I'm sorry, but the"
				dialog "acommodation fee is"
				dialog "5,000 zeny. Next time,"
				dialog "please make sure that you"
				dialog "bring enough zeny, okay?"
				close()
				return
			end
		elseif mresulta == 3 then
			dialog "[Hotel Employee]"
			dialog "Thank you and"
			dialog "please come again~"
			close()
			return
		end
	end
	dialog "[Hotel Employee]"
	dialog "Have a good day."
	close()
end

npc("einbech","Bulletin Board#einbech11",SPRITE_4_BULLETIN_BOARD2,135,250,5,0,0,"einbech_Bulletin_Board#einbech11_135250")
function einbech_Bulletin_Board#einbech11_135250()
	dialog " "
	dialog "    Mine Dungeon Entrance    "
	dialog " "
	close()
end

npc("einbech","Bulletin Board#einbech22",SPRITE_4_BULLETIN_BOARD2,90,214,5,0,0,"einbech_Bulletin_Board#einbech22_90214")
function einbech_Bulletin_Board#einbech22_90214()
	dialog " "
	dialog "    Train Station    "
	dialog " "
	close()
end

npc("einbech","Bulletin Board#einbech33",SPRITE_4_BULLETIN_BOARD2,158,189,4,0,0,"einbech_Bulletin_Board#einbech33_158189")
function einbech_Bulletin_Board#einbech33_158189()
	dialog " "
	dialog "    Freight Train Station    "
	dialog " "
	close()
end

npc("einbech","Bulletin Board#einbech44",SPRITE_4_BULLETIN_BOARD2,180,136,5,0,0,"einbech_Bulletin_Board#einbech44_180136")
function einbech_Bulletin_Board#einbech44_180136()
	dialog " "
	dialog "    Tool Shop    "
	dialog " "
	close()
end

npc("einbech","Bulletin Board#einbech55",SPRITE_4_BULLETIN_BOARD2,133,114,5,0,0,"einbech_Bulletin_Board#einbech55_133114")
function einbech_Bulletin_Board#einbech55_133114()
	dialog " "
	dialog "    Tavern    "
	dialog " "
	close()
end

npc("einbech","Bulletin Board#einbech01",SPRITE_4_BULLETIN_BOARD2,77,105,5,0,0,"einbech_Bulletin_Board#einbech01_77105")
function einbech_Bulletin_Board#einbech01_77105()
	dialog "Welcome to 'Einbech'."
	wait()
	dialog "East - Tavern, Tool Shop"
	dialog "North - Train Station, Mine Dungeon"
	close()
end

npc("einbech","Bulletin Board#einbech03",SPRITE_4_BULLETIN_BOARD2,181,127,5,0,0,"einbech_Bulletin_Board#einbech03_181127")
function einbech_Bulletin_Board#einbech03_181127()
	dialog "Northwest - Train Station"
	dialog "South - Tavern"
	dialog "North - Tool Shop, Mine Dungeon"
	close()
end

npc("einbroch","Bulletin Board",SPRITE_4_BULLETIN_BOARD2,244,255,5,0,0,"einbroch_Bulletin_Board_244255")
function einbroch_Bulletin_Board_244255()
	dialog " "
	dialog "    Train Station    "
	dialog " "
	close()
end

npc("einbroch","Bulletin Board",SPRITE_4_BULLETIN_BOARD2,253,203,5,0,0,"einbroch_Bulletin_Board_253203")
function einbroch_Bulletin_Board_253203()
	dialog " "
	dialog "    Hotel    "
	dialog " "
	close()
end

npc("einbroch","Bulletin Board",SPRITE_4_BULLETIN_BOARD2,68,206,5,0,0,"einbroch_Bulletin_Board_68206")
function einbroch_Bulletin_Board_68206()
	dialog " "
	dialog "    Airship Airport    "
	dialog " "
	close()
end

npc("einbroch","Bulletin Board#einbroch03",SPRITE_4_BULLETIN_BOARD2,90,84,5,0,0,"einbroch_Bulletin_Board#einbroch03_9084")
function einbroch_Bulletin_Board#einbroch03_9084()
	dialog " "
	dialog "    Laboratory    "
	dialog " "
	close()
end

npc("einbroch","Bulletin Board#einbroch04",SPRITE_4_BULLETIN_BOARD2,101,106,5,0,0,"einbroch_Bulletin_Board#einbroch04_101106")
function einbroch_Bulletin_Board#einbroch04_101106()
	dialog " "
	dialog "    Airship Repair Shop    "
	dialog " "
	close()
end

npc("einbroch","Bulletin Board#einbroch05",SPRITE_4_BULLETIN_BOARD2,220,208,5,0,0,"einbroch_Bulletin_Board#einbroch05_220208")
function einbroch_Bulletin_Board#einbroch05_220208()
	dialog " "
	dialog "    Weapon Shop    "
	dialog " "
	close()
end

npc("einbroch","Bulletin Board#einbroch06",SPRITE_4_BULLETIN_BOARD2,132,76,5,0,0,"einbroch_Bulletin_Board#einbroch06_13276")
function einbroch_Bulletin_Board#einbroch06_13276()
	dialog " "
	dialog "    Factory    "
	dialog " "
	close()
end

npc("einbroch","Bulletin Board#einbroch11",SPRITE_4_BULLETIN_BOARD2,152,46,5,0,0,"einbroch_Bulletin_Board#einbroch11_15246")
function einbroch_Bulletin_Board#einbroch11_15246()
	dialog "West - Laboratory, Airship Repair Shop"
	dialog "South - Einbroch Front Gate"
	dialog "North - Airport"
	dialog "Northeast - Train Station, Hotel, Weapon Shop"
	close()
end

npc("einbroch","Bulletin Board#einbroch22",SPRITE_4_BULLETIN_BOARD2,235,141,5,0,0,"einbroch_Bulletin_Board#einbroch22_235141")
function einbroch_Bulletin_Board#einbroch22_235141()
	dialog "Southwest - Airship Repair Shop, Laboratory"
	dialog "Northwest - Airport"
	dialog "North - Weapon Shop, Hotel, Train Station"
	close()
end

npc("einbroch","Bulletin Board#einbroch33",SPRITE_4_BULLETIN_BOARD2,162,256,5,0,0,"einbroch_Bulletin_Board#einbroch33_162256")
function einbroch_Bulletin_Board#einbroch33_162256()
	dialog "East - Train Station"
	dialog "Southeast - Hotel"
	dialog "South - Weapon Shop,Factory"
	dialog "Southwest - Airport, Airship Repair Shop, Laboratory"
	close()
end

npc("einbroch","Bulletin Board#einbroch44",SPRITE_4_BULLETIN_BOARD2,183,174,5,0,0,"einbroch_Bulletin_Board#einbroch44_183174")
function einbroch_Bulletin_Board#einbroch44_183174()
	dialog "East - Weapon Shop, Hotel"
	dialog "South - Factory"
	dialog "Southwest - Airship Repair Shop, Laboratory"
	dialog "Northwest - Airport"
	close()
end

npc("einbroch","Bulletin Board#einbroch55",SPRITE_4_BULLETIN_BOARD2,104,202,5,0,0,"einbroch_Bulletin_Board#einbroch55_104202")
function einbroch_Bulletin_Board#einbroch55_104202()
	dialog "Northeast - Train Station"
	dialog "East - Weapon Shop,Hotel"
	dialog "South - Airship Repair Shop, Laboratory"
	close()
end

npc("ein_in01","Cendadt",SPRITE_4_M_REPAIR,31,217,3,0,0,"ein_in01_Cendadt_31217")
function ein_in01_Cendadt_31217()
	dialog "[Cendadt]"
	dialog "This factory has a lot"
	dialog "of things that need fixing,"
	dialog "pronto! I'm amazed that"
	dialog "the place is still operating!"
	wait()
	dialog "[Cendadt]"
	dialog "Lucky for us, I hear that"
	dialog "some altruistic adventurers"
	dialog "have been donating materials"
	dialog "to help keep this factory from"
	dialog "falling apart... Or worse."
	dialog "But that's just a rumor."
	wait()
	dialog "[Cendadt]"
	dialog "^666666*Sigh*^000000"
	dialog "Even if it is true,"
	dialog "there's nothing no one"
	dialog "here can do. Nobody has"
	dialog "the courage to challenge"
	dialog "the system, you know?"
	wait()
	dialog "[Cendadt]"
	dialog "I..."
	dialog "I better get"
	dialog "back to work"
	dialog "before I get"
	dialog "in trouble..."
	close()
end

npc("ein_in01","Tavern Lady",SPRITE_4_M_EINMAN2,279,92,3,0,0,"ein_in01_Tavern_Lady_27992")
function ein_in01_Tavern_Lady_27992()
	dialog "[Tavern Lady]"
	dialog "Most Einbech men are"
	dialog "crude and primitive male"
	dialog "chauvinists! They disgust me!"
	wait()
	dialog "[Tavern Lady]"
	dialog "I mean, there's nothing"
	dialog "good about them! They're"
	dialog "wild, violent, simple minded"
	dialog "and ignorant. They settle all"
	dialog "their arguments with brawn"
	dialog "and they're so... close minded!"
	wait()
	dialog "[Tavern Lady]"
	dialog "How can they not know"
	dialog "that women want gentle,"
	dialog "sensitive men with whom"
	dialog "they can share their feelings"
	dialog "and drink chamoille tea over"
	dialog "freshly knit doilies?"
	close()
end

npc("ein_in01","Ryan Danger#air#einbech_bar",SPRITE_4_M_EINMAN,277,95,7,0,0,"ein_in01_Ryan_Danger#air#einbech_bar_27795")
function ein_in01_Ryan_Danger#air#einbech_bar_27795()
	dialog "[R.D. Kim]"
	dialog "Oooh..."
	wait()
	dialog "[R.D. Kim]"
	dialog "Oooh..."
	dialog "Momma."
	wait()
	dialog "[R.D. Kim]"
	dialog "Oooh..."
	dialog "Momma."
	dialog "You are so..."
	wait()
	dialog "[R.D. Kim]"
	dialog "Oooh..."
	dialog "Momma."
	dialog "You are so..."
	dialog "^FF0000Hot^000000!"
	wait()
	dialog "[R.D. Kim]"
	dialog "Why don't you take off"
	dialog "those heavy, uncomfortable"
	dialog "clothes? I'll buy you whatever"
	dialog "you want, it's on me! C'mon~"
	wait()
	dialog("[","+PcName+"]"")
	dialog "N-no...!"
	dialog "I-I-I-I..."
	dialog "^666666(This is the"
	dialog "shadiest guy"
	dialog "I've ever seen!)^000000"
	wait()
	dialog "[R.D. Kim]"
	dialog "Hm? No...?"
	dialog "Absolutely no?"
	dialog "Are you sure?"
	dialog "Alright, alright."
	dialog "I'm sorry, I apologize."
	dialog "I was totally out of line."
	wait()
	dialog "[R.D. Kim]"
	dialog "..."
	dialog "Or am I?"
	dialog "Bwahahahaha!"
	wait()
	dialog("[","+PcName+"]"")
	dialog "(Th-this guy"
	dialog "must be drunk out"
	dialog "of his freakin' mind!)"
	close()
end

npc("ein_in01","Drunken Man#einbech_bar",SPRITE_4_M_DIEMAN,281,85,3,0,0,"ein_in01_Drunken_Man#einbech_bar_28185")
function ein_in01_Drunken_Man#einbech_bar_28185()
	dialog "[Drunken Man]"
	dialog "...^333333*Hiccup*^000000..."
	dialog "^333333*Hiccup*^000000..."
	dialog "^333333*Yawn*^000000....."
	dialog "................."
	dialog "..^333333*Hiccup*^000000....."
	dialog "^333333*Hiccup*^000000.."
	close()
end
