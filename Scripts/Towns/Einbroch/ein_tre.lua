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

npc("airplane","Crewman_ein",spr_4_M_ZONDAOYAJI,47,61,7,0,0,"airplane_Crewman_ein_4761")
function airplane_Crewman_ein_4761()
	if getvar(ein_tre) == 4 then
		dialog "[Kain Himere]"
		dialog "Ah..."
		dialog "Here it is!"
		wait()
		dialog "[Kain Himere]"
		dialog "A few days ago, a customer"
		dialog "from Einbroch left this on the"
		dialog "Airship. He called and let us"
		dialog "know that he can't come back"
		dialog "to get it, but he is staying"
		dialog "over at the Einbroch Hotel."
		wait()
		dialog "[Kain Himere]"
		dialog "I know it's a strange"
		dialog "favor to ask, but would"
		dialog "you deliver this to Defru"
		dialog "Ark at the Einbroch Hotel?"
		dialog "Of course, I'll repay you"
		dialog "upon your return."
		wait()
		setitem("ein_tre",5)
		dialog "^3355FFKain Himere has"
		dialog "given you a small box.^000000"
		close()
		return
	else
		dialog "[Kain Himere]"
		dialog "Welcome to the Airship~"
		dialog "If you have questions or"
		dialog "need any assistance, please"
		dialog "don't hesitate to ask me or"
		dialog "any one of the other crewmen."
		wait()
		if getvar(ein_tre) == 0 then
			local mresulta = menu("About the Airship...","Leave a Comment")
			if mresulta == 1 then
				setitem("ein_tre",1)
				dialog "[Kain Himere]"
				dialog "Is this your first time flying?"
				dialog "I understand if you feel nervous. Before I worked here, I used to feel the same way. Still, this"
				dialog "Airship is pretty amazing. It's incredible what science can do..."
				wait()
				dialog "[Kain Himere]"
				dialog "I hear from the scholars"
				dialog "who developed the Airship"
				dialog "technology that just a little"
				dialog "piece of the heart of Ymir"
				dialog "generates the power for"
				dialog "this ship to fly. Incredible..."
				wait()
				dialog "[Kain Himere]"
				dialog "You know, scientific research"
				dialog "has made living easier and more"
				dialog "comfortable in the Schwaltzvalt"
				dialog "Republic, much in the way magic"
				dialog "research has changed life in the Rune-Midgarts Kingdom."
				wait()
				local mresultb = menu("What else is used for transportation?")
				if mresultb == 1 then
					dialog "[Kain Himere]"
					dialog "Transportation?"
					dialog "Well, there's a train that"
					dialog "runs between Einbech and"
					dialog "Einbroch. Aside from riding"
					dialog "Airship and the Train, there's"
					dialog "walking and that's it. Hahaha~"
					close()
					return
				end
			elseif mresulta == 2 then
				dialog "[Kain Himere]"
				dialog "You wish to leave"
				dialog "a comment about our"
				dialog "service? Tell me your"
				dialog "message and I'll report"
				dialog "it to the higher ups. To"
				dialog "cancel, enter ''0.''"
				wait()
				dlgwritestr()
				local ans1 = inputstr
				local ans2 = "kafra"
				--local temp = StrStr ans1 ans2
				if (temp == 1) then
					dialog "[Kain Himere]"
					dialog "K-Kafra...?"
					dialog "Hmm, maybe I better"
					dialog "not send this up after all..."
					Emotion("Crewman_ein","ET_FRET")
					close()
					return
				else
					if (ans1 == 0) then
						dialog "[Kain Himere]"
						dialog "Ah, well, if you have any"
						dialog "helpful criticism about our"
						dialog "service, feel free to leave"
						dialog "me a comment at any time."
						close()
						return
					else
						dialog("[","+PcName+"]"")
						dialog inputstr
						wait()
						dialog "[Kain Himere]"
						dialog "Hmmmm..."
						dialog "I see. Well, I'll"
						dialog "send your message"
						dialog "to my superiors as"
						dialog "soon as possible."
						dialog "Thank you very much."
						close()
						return
					end
				end
			end
		elseif getvar(ein_tre) == 1 then
			local mresulta = menu("About the Airship...","Leave a comment")
			if mresulta == 1 then
				setitem("ein_tre",2)
				dialog "[Kain Himere]"
				dialog "You want to hear more"
				dialog "about the Airship? Hmm,"
				dialog "there's not too much that"
				dialog "I know, but let me see..."
				wait()
				dialog "[Kain Himere]"
				dialog "Well, it's rumored that this"
				dialog "really big corporation runs"
				dialog "this Airship. Supposedly,"
				dialog "they've got their hands in"
				dialog "all sorts of enterprises."
				wait()
				dialog "[Kain Himere]"
				dialog "Since the Airships are our"
				dialog "form of national transportation,"
				dialog "the higher-ups must be making"
				dialog "a ton of money. It's pretty crazy."
				close()
				return
			elseif mresulta == 2 then
				dialog "[Kain Himere]"
				dialog "You wish to leave"
				dialog "a comment about our"
				dialog "service? Tell me your"
				dialog "message and I'll report"
				dialog "it to the higher ups. To"
				dialog "cancel, enter ''0.''"
				wait()
				dlgwritestr()
				local ans1 = inputstr
				local ans2 = "kafra"
				local temp = StrStr ans1 ans2
				if (temp == 1) then
					dialog "[Kain Himere]"
					dialog "K-Kafra...?"
					dialog "Hmm, maybe I better not"
					dialog "send this up after all..."
					Emotion("Crewman_ein","ET_FRET")
					close()
					return
				else
					if (ans1 == 0) then
						dialog "[Kain Himere]"
						dialog "Ah, well, if you have any"
						dialog "helpful criticism about our"
						dialog "service, feel free to leave"
						dialog "me a comment at any time."
						close()
						return
					else
						dialog("[","+PcName+"]"")
						dialog inputstr
						wait()
						dialog "[Kain Himere]"
						dialog "Hmmmm..."
						dialog "I see. Well, I'll"
						dialog "send your message"
						dialog "to my superiors as"
						dialog "soon as possible."
						dialog "Thank you very much."
						close()
						return
					end
				end
			end
		elseif getvar(ein_tre) == 2 then
			local mresulta = menu("About the Airship...")
			if mresulta == 1 then
				dialog "[Kain Himere]"
				dialog "You must really want"
				dialog "to know all about the"
				dialog "Airship, don't you? I'm"
				dialog "sorry, but I don't know"
				dialog "much more than what"
				dialog "I've already told you."
				wait()
				dialog "[Kain Himere]"
				dialog "I guess if you'd want to know more, you should study to become a Sage in Juno and do your own Airship research..."
				wait()
				dialog "[Kain Himere]"
				dialog "^666666*Sob...*^000000"
				dialog "E-excuse me..."
				dialog "^666666*Sniff*^000000"
				wait()
				local mresultb = menu("What the hell...?","What's wrong?")
				if mresultb == 1 then
					dialog "[Kain Himere]"
					dialog "I-I'm sorry..."
					dialog "That was so"
					dialog "unprofessional."
					dialog "H-have a safe trip"
					dialog "and th-thank you for"
					dialog "using the Airship! ^333333*Sob*^000000"
					close()
					return
				elseif mresultb == 2 then
					dialog "[Kain Himere]"
					dialog "I'm sorry, but it's"
					dialog "a long story. Plus,"
					dialog "you wouldn't understand..."
					wait()
					local mresultc = menu("I have time for a long story.")
					if mresultc == 1 then
					end
					dialog "[Kain Himere]"
					dialog "Alright, I might as well get"
					dialog "this off my chest. I guess it"
					dialog "all started when I was a young"
					dialog "man living in Einbech."
					wait()
					dialog "[Kain Himere]"
					dialog "Those days, I was pretty hot"
					dialog "headed and short tempered,"
					dialog "but working as a miner used to"
					dialog "always bring me a sense of peace. Staking my life with my friends, mining pick in hand. Yeah..."
					wait()
					dialog "[Kain Himere]"
					dialog "It might have been dangerous,"
					dialog "but it was good, hard and honest work. You know, the mines that connected to the Einbech lode"
					dialog "used to be everything to our little town. But then, things changed..."
					wait()
					dialog "[Kain Himere]"
					dialog "The factories started popping"
					dialog "up and all the ores were moved"
					dialog "to where the smokestacks never"
					dialog "stopped churning. More miners"
					dialog "started working in the factories and the mines became lonelier..."
					wait()
					dialog "[Kain Himere]"
					dialog "But I loved working on the"
					dialog "land so much, I kept at it"
					dialog "until the accident happened."
					dialog "Now I can't use my right arm"
					dialog "the way I used to, so I had to"
					dialog "quit my job as a miner..."
					wait()
					local mresultc = menu("I'm sorry to hear that.")
					if mresultc == 1 then
						dialog "[Kain Himere]"
						dialog "Yeah..."
						dialog "I was really devastated"
						dialog "when it happened. Those"
						dialog "were probably the worst"
						dialog "years of my entire life."
					end
					wait()
					dialog "[Kain Himere]"
					dialog "I couldn't think about"
					dialog "life without mining and"
					dialog "I just lost all enthusiasm"
					dialog "for life. I developed a drinking problem and started shutting out my family. I was so stupid..."
					wait()
					dialog "[Kain Himere]"
					dialog "I still can't believe how"
					dialog "supportive my wife was during"
					dialog "those days. Even when I was at"
					dialog "my lowest, she tried to sooth my sorrow and even took on a job"
					dialog "to support me and our daughter."
					wait()
					dialog "[Kain Himere]"
					dialog "^666666*Sob*^000000 It was only after she"
					dialog "died that I realized how much"
					dialog "she must have suffered. To make"
					dialog "matters worse, I had to leave my daughter behind with a neighbor"
					dialog "while I searched for work..."
					wait()
					dialog "[Kain Himere]"
					dialog "I spent years wandering"
					dialog "from town to town, living"
					dialog "a pretty wild life until I could pick myself up again. And finally, I became an Airship crewman."
					wait()
					dialog "[Kain Himere]"
					dialog "It's been twenty years"
					dialog "since I've lost my family."
					dialog "My daughter is somewhere"
					dialog "out there, but I can't even"
					dialog "remember her name..."
					wait()
					local mresultc = menu("Have you tried looking for her?")
					if mresultc == 1 then
					end
					dialog "[Kain Himere]"
					dialog "I tried going to the house"
					dialog "where my neighbor had lived,"
					dialog "but they moved out years ago."
					dialog "I really have no clue where she"
					dialog "could be. But I don't deserve to see her. I was a horrible father!"
					wait()
					dialog "[Kain Himere]"
					dialog "^666666*Sob*^000000 I'm sorry you"
					dialog "had to hear all of that,"
					dialog "but I really appreciate that"
					dialog "you've listened to me. Now"
					dialog "tell me, where are you headed?"
					wait()
					local mresultc = menu("Einbroch","Juno")
					if mresultc == 1 then
						setitem("ein_tre",4)
						dialog("[","+PcName+"]"")
						dialog "I'm heading"
						dialog "to Einbroch."
						wait()
						dialog "[Kain Himere]"
						dialog "Perfect...!"
						dialog "If you don't mind,"
						dialog "would you do a favor"
						dialog "for me? First, let me"
						dialog "find that package..."
						close()
						return
					elseif mresultc == 2 then
						setitem("ein_tre",3)
						dialog("[","+PcName+"]"")
						dialog "I'm heading"
						dialog "to Juno."
						wait()
						dialog "[Kain Himere]"
						dialog "Ah, I see..."
						dialog "There was something"
						dialog "I needed sent to Einbroch."
						dialog "Anyway, have a good trip."
						dialog "Oh, and thanks for listening."
						close()
						return
					end
				end
			end
		elseif getvar(ein_tre) == 3 then
			dialog "[Kain Himere]"
			dialog "Oh, how are you?"
			dialog "If you don't mind me"
			dialog "asking, where are you"
			dialog "headed this time?"
			wait()
			local mresulta = menu("Einbroch","Juno")
			if mresulta == 1 then
				setitem("ein_tre",4)
				dialog("[","+PcName+"]"")
				dialog "I'm heading"
				dialog "to Einbroch."
				wait()
				dialog "[Kain Himere]"
				dialog "Perfect...!"
				dialog "If you don't mind,"
				dialog "would you do a favor"
				dialog "for me? First, let me"
				dialog "find that package..."
				close()
				return
			elseif mresulta == 2 then
				dialog("[","+PcName+"]"")
				dialog "I am heading"
				dialog "to Juno."
				wait()
				dialog "[Kain Himere]"
				dialog "Ah, I see..."
				dialog "There was something"
				dialog "I needed sent to Einbroch."
				dialog "Anyway, have a good trip."
				dialog "Oh, and thanks for listening."
				close()
				return
			end
		elseif ((getvar(ein_tre) > 4) and (getvar(ein_tre) < 10 )) then
			dialog "[Kain Himere]"
			dialog "Oh hello!"
			dialog "Things are a little"
			dialog "hectic right now, but"
			dialog "did you delive-- Oh!"
			dialog "Wait, excuse me! Sir--!"
			wait()
			dialog "^3355FFKain seems too"
			dialog "busy to speak to"
			dialog "you right now...^000000"
			close()
			return
		elseif (getvar(ein_tre) == 10) then
			dialog "[Kain Himere]"
			dialog "Welcome back"
			dialog "to the Airship."
			dialog "So did you deliver"
			dialog "that little box safely?"
			wait()
			dialog("[","+PcName+"]"")
			dialog "No, unfortunately."
			dialog "He was away when"
			dialog "I got there. Let me give"
			dialog "this box back to you."
			wait()
			dialog "[Kain Himere]"
			dialog "Oh..."
	("		dialog","What should I do now?")
			dialog "Oh well, sorry for putting"
			dialog "you through so much trouble."
			wait()
			local mresulta = menu("Casually mention Miner's Song","Suavely mention Tarsha")
			if mresulta == 1 then
				dialog("[","+PcName+"]"")
				dialog "While we're on the topic"
				dialog "of boxes and deliveries,"
				dialog "have you ever heard of"
				dialog "the ''Miner's Song?''"
				wait()
				dialog "[Kain Himere]"
				dialog "''Miner's Song...''"
				dialog "I miss singing that"
				dialog "while working the mines."
				dialog "I used to sing it all the time"
				dialog "when I was younger, actually."
				wait()
				dialog "[Kain Himere]"
				dialog "I think I sang it so"
				dialog "much, I even got my little"
				dialog "daughter to sing it with me~"
				dialog "(But what was her name?!)"
				wait()
			elseif mresulta == 2 then
				dialog("[","+PcName+"]"")
				dialog "^333333*Cough cough*"
				dialog "*Cou--TARSHA--Cough*^000000"
				wait()
				dialog "[Kain Himere]"
				dialog "What the...?"
				dialog "Wait. T-Tarsha..."
				dialog "Why does it feel like that"
				dialog "name means something?"
				wait()
			end
			dialog("[","+PcName+"]"")
			dialog "You know..."
			dialog "I met a little girl in Einbroch"
			dialog "who was singing the ''Miner's"
			dialog "Song.'' It seems her mother"
			dialog "Tarsha had taught it to her."
			wait()
			dialog "[Kain Himere]"
			dialog "Interesting. But usually,"
			dialog "only miners would know "
			dialog "that song. Does this have"
			dialog "anything to do with me?"
			wait()
			dialog("[","+PcName+"]"")
			dialog "Well, this little girl's mother, Tarsha, learned the song from"
			dialog "her father who might have been"
			dialog "a miner. But he mysteriously"
			dialog "disappeared years ago..."
			wait()
			dialog "[Kain Himere]"
			dialog "Poor girl...!"
			dialog "Her father just"
			dialog "left her?! Why,"
			dialog "she's just like..."
			wait()
			dialog "[Kain Himere]"
			dialog "Wait..."
			dialog "Sweet Christ..."
			dialog "The miner who taught"
			dialog "Tarsha that song might"
			dialog "have been... ^0000FFme^000000."
			wait()
			dialog("[","+PcName+"]"")
			dialog "Well, for now, we can't"
			dialog "be too sure. Do you have"
			dialog "anything that might prove"
			dialog "you're Tarsha's father?"
			wait()
			dialog "[Kain Himere]"
			dialog "Ehhmmm..."
			dialog "Before I left own, I buried"
			dialog "some of my stuff underneath"
			dialog "a tree in Einbech. I can't exactly remember where, but my wife's"
			dialog "journal should be there."
			wait()
			dialog "[Kain Himere]"
			dialog "Since my wife kept track"
			dialog "of everything in her journal,"
			dialog "she should have written enough"
			dialog "about our daughter for us to know whether or not this Tarsha could be my long lost daughter."
			wait()
			dialog "[Kain Himere]"
			dialog "Now, I can't really leave"
			dialog "the Airship, so would you help"
			dialog "me by finding that journal and"
			dialog "seeing if Tarsha is really related to me somehow? I'd be grateful"
			dialog "if you could do that for me..."
			setitem("ein_tre",11)
			close()
			return
		elseif ((getvar(ein_tre) == 11) or (getvar(ein_tre) == 12)) then
			dialog "[Kain Himere]"
			dialog "Would you find my wife's"
			dialog "journal and see if Tarsha"
			dialog "is really my daughter? The"
			dialog "journal should be buried"
			dialog "underneath a tree in Einbech."
			close()
			return
		elseif (getvar(ein_tre) == 13) then
			dialog "^3355FFYou better fulfill Kain's"
			dialog "request by finding his wife's"
			dialog "journal and confronting Tarsha"
			dialog "before you speak to him again.^000000"
			close()
			return
		elseif (getvar(ein_tre) == 14) then
			if (getvar(Picture_Letter) > 0) then
				dialog "^3355FFYou give his wife's"
				dialog "journal to Kain and tell"
				dialog "him that you learn that Tarsha"
				dialog "is really his daughter and that"
				dialog "she is happily married and is"
				dialog "an inventor in Einbroch.^000000"
				wait()
				dialog "^3355FFKain's eyes well"
				dialog "with tears and his"
				dialog "entire body trembles"
				dialog "with unrestrainable joy."
				wait()
				dialog "[Kain Himere]"
				dialog "She must have"
				dialog "had a hard time..."
				dialog "But she doesn't"
				dialog "hate me at all."
				wait()
				dialog "[Kain Himere]"
				dialog "Rashelle?"
				dialog "Can you see me?"
				dialog "Can I really be this"
				dialog "happy? I'm so sorry,"
				dialog "my love... ^666666*Sob...*^000000"
				wait()
				dialog "[Kain Himere]"
				dialog "Thank you for all of"
				dialog "your help, youngster."
				dialog "And please, take this"
				dialog "as a token of my gratitude."
				wait()
				dialog "[Kain Himere]"
				dialog "I know this isn't"
				dialog "much, but please"
				dialog "understand that it's"
				dialog "all I have to give you."
				dialog "God bless you for all"
				dialog "you've done for me~"
				close()
				dropitem("Picture_Letter",1)
				setitem("ein_tre",15)
				getitem("Free_Flying_Ship_Ticket",4)
				return
			else
				dialog "^3355FFHmmm..."
				dialog "It would be better"
				dialog "if you approached"
				dialog "Kain with the Doodled"
				dialog "Letter that you received.^000000"
				close()
				return
			end
		elseif v([ein_tre] > 15) then
			dialog "[Kain Himere]"
			dialog "Oh, how are you"
			dialog "lately, my friend?"
			dialog "I've been doing great,"
			dialog "especially since you've"
			dialog "helped me find my daughter."
			dialog "Enjoy your travels~"
			close()
			return
		end
	end
end

npc("ein_in01","_door_ein",spr_HIDDEN_NPC,227,279,3,5,5,"ein_in01__door_ein_227279")
function ein_in01__door_ein_227279()
	if (getvar(ein_tre) == 5) then
		setitem("ein_tre",6)
		dialog("[","+PcName+"]"")
		dialog "Excuse me...?"
		wait()
		dialog "^3355FFNo one's here!^000000"
		wait()
		dialog("[","+PcName+"]"")
		dialog "This must be the room..."
		dialog "But where the hell is he?"
		dialog "I can't just leave this stuff"
		dialog "here if he won't come back."
		wait()
		dialog("[","+PcName+"]"")
		dialog "Oh well..."
		dialog "I guess I can"
		dialog "just give this"
		dialog "back to Kain"
		dialog "on the Airship."
		wait()
		dialog("[","+PcName+"]"")
		dialog "While I'm in Einbroch,"
		dialog "I may as well take a look"
		dialog "around here and see if I can"
		dialog "find anything interesting. Still, I can't help but think of Kain"
		dialog "Himere's long lost daughter... "
		wait()
		dialog("[","+PcName+"]"")
		dialog "Maybe..."
		dialog "Just maybe..."
		dialog "I can find some"
		dialog "sort of clue about"
		dialog "where she is. She might"
		dialog "even live here in Einbroch."
		wait()
		dialog("[","+PcName+"]"")
		dialog "I think I'll do that."
		dialog "Maybe even right this"
		dialog "minute. Treat it like"
		dialog "sort of quest or something."
		dialog "Yeah, that could work."
		close()
		return
	else
	end
end

npc("ein_in01","Elle Cherno",spr_4_F_KID2,261,241,3,3,3,"ein_in01_Elle_Cherno_261241")
function ein_in01_Elle_Cherno_261241()
	dialog "[Elle Cherno]"
	dialog "Let's get to work"
	dialog "fear-less comraaades~!"
	dialog "Do our best! Nothing"
	dialog "can stop us, lads~!"
	if getvar(ein_tre) == 6 then
		wait()
		local mresulta = menu("Hello!","What are you singing?")
		if mresulta == 1 then
			dialog "[Elle Cherno]"
			dialog "Let's get to work"
			dialog "fear-less comraaades~!"
			dialog "Do our best! Nothing"
			dialog "can stop us, lads~!"
			wait()
			dialog "[Elle Cherno]"
			dialog "I like this song lots!"
			dialog "Especially when I yell out"
			dialog "''comrades!'' COMRADES!"
			close()
			return
		elseif mresulta == 2 then
			setitem("ein_tre",7)
			dialog "[Elle Cherno]"
			dialog "This...?"
			dialog "It's the ''Miner's Song!''"
			dialog "My mommy taught it to me"
			dialog "and she sings it a lot. Daddy"
			dialog "says it's too noisy, though."
			wait()
			dialog "[Elle Cherno]"
			dialog "Mmm, when my mommy sings"
			dialog "this song, sometimes she looks"
			dialog "a little sad. Jus' today she sang it a little and looked like she was gonna cry. ^666666*Gasp!*^000000 Wait, do you"
			dialog "think maybe Mommy's sick?"
			wait()
			dialog "[Elle Cherno]"
			dialog "Oh no, oh no..."
			dialog "Hey, will you go see"
			dialog "if my mommy's okay for me?"
			dialog "Please? Our house is behind"
			dialog "the Hotel, so tell me if she's"
			dialog "not feeling good, promise?"
			close()
			return
		end
	elseif getvar(ein_tre) == 7 then
		wait()
		dialog "[Elle Cherno]"
		dialog "Our house is right"
		dialog "behind of the Hotel."
		dialog "Will you go there and"
		dialog "see my mommy for me,"
		dialog "please? I'm worried..."
		close()
		return
	elseif (getvar(ein_tre) == 13) then
		wait()
		local max_max_c1 = CheckMaxCount 1201 1
		if (max_max_c1 == 1) then
			dialog "[Elle Cherno]"
			dialog "Hey! I have something"
			dialog "to give you, but you have"
			dialog "tooooo much stuff! Hey,"
			dialog "come back later so I can"
			dialog "give it to you, okay?"
			close()
			return
		else
			dialog "[Elle Cherno]"
			dialog "You saw my grandpa?"
			dialog "You're his friend, right?"
			dialog "A-are you gonna see"
			dialog "him later? 'Cuz... cuz..."
			wait()
			dialog "[Elle Cherno]"
			dialog "I made this for him."
			dialog "I don't know how to write,"
			dialog "but I made Grampa a letter"
			dialog "as best as I can. Will you"
			dialog "promise to give this to him"
			dialog "for me, pleeeeeease?"
			wait()
			dialog "^3355FFElle put a big"
			dialog "doodled message"
			dialog "into your hands.^000000"
			close()
			setitem("ein_tre",14)
			getitem("Picture_Letter",1)
			return
		end
	else
		close()
		return
	end
end
function ein_in01_Elle_Cherno_261241()
	dialog "[Elle Cherno]"
	dialog "Let's get to work"
	dialog "fear-less comraaades~!"
	dialog "Do our best! Nothing"
	dialog "can stop us, lads~!"
	if getvar(ein_tre) == 6 then
		wait()
		local mresulta = menu("Hello!","What are you singing?")
		if mresulta == 1 then
			dialog "[Elle Cherno]"
			dialog "Let's get to work"
			dialog "fear-less comraaades~!"
			dialog "Do our best! Nothing"
			dialog "can stop us, lads~!"
			wait()
			dialog "[Elle Cherno]"
			dialog "I like this song lots!"
			dialog "Especially when I yell out"
			dialog "''comrades!'' COMRADES!"
			close()
			return
		elseif mresulta == 2 then
			setitem("ein_tre",7)
			dialog "[Elle Cherno]"
			dialog "This...?"
			dialog "It's the ''Miner's Song!''"
			dialog "My mommy taught it to me"
			dialog "and she sings it a lot. Daddy"
			dialog "says it's too noisy, though."
			wait()
			dialog "[Elle Cherno]"
			dialog "Mmm, when my mommy sings"
			dialog "this song, sometimes she looks"
			dialog "a little sad. Jus' today she sang it a little and looked like she was gonna cry. ^666666*Gasp!*^000000 Wait, do you"
			dialog "think maybe Mommy's sick?"
			wait()
			dialog "[Elle Cherno]"
			dialog "Oh no, oh no..."
			dialog "Hey, will you go see"
			dialog "if my mommy's okay for me?"
			dialog "Please? Our house is behind"
			dialog "the Hotel, so tell me if she's"
			dialog "not feeling good, promise?"
			close()
			return
		end
	elseif getvar(ein_tre) == 7 then
		wait()
		dialog "[Elle Cherno]"
		dialog "Our house is right"
		dialog "behind of the Hotel."
		dialog "Will you go there and"
		dialog "see my mommy for me,"
		dialog "please? I'm worried..."
		close()
		return
	elseif (getvar(ein_tre) == 13) then
		wait()
		local max_max_c1 = CheckMaxCount 1201 1
		if (max_max_c1 == 1) then
			dialog "[Elle Cherno]"
			dialog "Hey! I have something"
			dialog "to give you, but you have"
			dialog "tooooo much stuff! Hey,"
			dialog "come back later so I can"
			dialog "give it to you, okay?"
			close()
			return
		else
			dialog "[Elle Cherno]"
			dialog "You saw my grandpa?"
			dialog "You're his friend, right?"
			dialog "A-are you gonna see"
			dialog "him later? 'Cuz... cuz..."
			wait()
			dialog "[Elle Cherno]"
			dialog "I made this for him."
			dialog "I don't know how to write,"
			dialog "but I made Grampa a letter"
			dialog "as best as I can. Will you"
			dialog "promise to give this to him"
			dialog "for me, pleeeeeease?"
			wait()
			dialog "^3355FFElle put a big"
			dialog "doodled message"
			dialog "into your hands.^000000"
			close()
			setitem("ein_tre",14)
			getitem("Picture_Letter",1)
			return
		end
	else
		close()
		return
	end
end

npc("ein_in01","Theo Cherno",spr_4_M_REPAIR,123,94,7,0,0,"ein_in01_Theo_Cherno_12394")
function ein_in01_Theo_Cherno_12394()
	if (getvar(ein_tre) == 7) then
		ShowEffect("_exp_ein","EF_COMBOATTACK1")
		dialog "^3355FF*Bang*^000000"
		wait()
		ShowEffect("_exp_ein","EF_COMBOATTACK2")
		dialog "^3355FF*Bang*^000000"
		dialog "^3355FF*Beeeeeep*^000000"
		wait()
		ShowEffect("_exp_ein","EF_COMBOATTACK3")
		dialog "^3355FF*Bang*^000000"
		dialog "^3355FF*Beeeeeep*^000000"
		dialog "^3355FF*Boop Boop Boop*^000000"
		wait()
		ShowEffect("_exp_ein","EF_POISONATTACK")
		dialog "^3355FF*Crash!*^000000"
		dialog "....."
		Emotion("Theo Cherno","ET_SWEAT")
		Emotion("Tarsha Cherno","ET_SWEAT")
		wait()
		dialog "[Theo Cherno]"
		dialog "Honey..."
		dialog "I think there's"
		dialog "a critical structural"
		dialog "problem with the joint."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "They must not"
		dialog "be connected right."
		dialog "Maybe if we... Hmmm."
		wait()
		dialog "[Theo Cherno]"
		dialog "Well, let's call"
		dialog "it a day and finish"
		dialog "this tomorrow, yeah?"
		wait()
		Emotion("Tarsha Cherno","ET_QUESTION")
		dialog "[Tarsha Cherno]"
		dialog "Oh~"
		dialog "I didn't know we"
		dialog "had a guest. Hello,"
		dialog "how are you doing?"
		dialog "Are you interested in"
		dialog "any of our inventions?"
		wait()
		local mresulta = menu("Inventions...?","Your daughter asked me to visit you.")
		if mresulta == 1 then
			dialog "[Theo Cherno]"
			dialog "Oh yes, my wife are"
			dialog "I are keeping ourselves"
			dialog "busy by conducting research."
			dialog "We're trying to invent new"
			dialog "things for better living."
			dialog "It's what we do..."
			close()
			return
		elseif mresulta == 2 then
			Emotion("Tarsha Cherno","ET_SMILE")
			Emotion("Theo Cherno","ET_SMILE")
			dialog "[Tarsha Cherno]"
			dialog "Hahaha, Elle?"
			dialog "Why would our"
			dialog "daughter send"
			dialog "you to visit us?"
			wait()
		end
		dialog("[","+PcName+"]"")
		dialog "Well, uh..."
		dialog "She wanted me to"
		dialog "check if her mom"
		dialog "was sick or sad"
		dialog "...Or something?"
		wait()
		Emotion("Tarsha Cherno","ET_PROFUSELY_SWAT")
		dialog "[Tarsha Cherno]"
		dialog "Oh my god...!"
		dialog "What is she thinking?"
		dialog "I apologize for troubling"
		dialog "you over this kind of silly"
		dialog "mistake, adventurer!"
		wait()
		dialog "[Theo Cherno]"
		dialog "But wait, darling."
		dialog "I agree that sometimes"
		dialog "you look like the loneliest"
		dialog "person in the world, gazing"
		dialog "out that window with those"
		dialog "impossibly wistful eyes."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Oh, I must be"
		dialog "making my family"
		dialog "very anxious. But"
		dialog "don't you worry, love."
		dialog "I'm very happy with"
		dialog "you and Elle."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "And..."
		dialog "Kind adventurer,"
		dialog "may I ask your name?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "I am called,"
		dialog(,"+PcName+"."")
		Emotion(,"ET_SMILE")
		wait()
		dialog "[Tarsha Cherno]"
		dialog(,"+PcName+","")
		dialog "I appreciate your"
		dialog "concern for us. Would"
		dialog "you stay for a cup of tea?"
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Now, please pardon the"
		dialog "mess. My husband and I are"
		dialog "mechanical engineers focused"
		dialog "on creating machines that would"
		dialog "reduce the risk of mining ores."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Since we work at home, we"
		dialog "can't avoid having machine"
		dialog "parts lying here and there"
		dialog "sometimes. In any case, we're"
		dialog "hoping we create a machine that could make miners' lives safer..."
		wait()
		dialog("[","+PcName+"]"")
		dialog "Ah..."
		dialog "So that's why"
		dialog "there's so many"
		dialog "interesting things"
		dialog "in your house..."
		wait()
		dialog "^3355FFYou begin to"
		dialog "take a look around"
		dialog "the Cherno household.^000000"
		setitem("ein_tre",8)
		close()
		return
	elseif ((getvar(ein_tre) > 7) and (getvar(ein_tre) < 10)) then
		dialog "[Theo Cherno]"
		dialog "You're very kind,"
		dialog "adventurer. There"
		dialog "should be more people"
		dialog "in the world like you."
		close()
		return
	elseif ((getvar(ein_tre) > 9) and (getvar(ein_tre) < 13)) then
		dialog "[Theo Cherno]"
		dialog "Are you sure"
		dialog "that you can find"
		dialog "Tarsha's father? Oh,"
		dialog "you must be a godsend!"
		close()
		return
	elseif (getvar(ein_tre) > 12) then
		Emotion("Theo Cherno","ET_SMILE")
		dialog "[Theo Cherno]"
		dialog "I'm so happy"
		dialog "for my wife. I...."
		dialog "I don't know how"
		dialog "I can thank you..."
		close()
		return
	else
		dialog "[Theo Cherno]"
		dialog "Hmm..."
		dialog "Can we talk later?"
		dialog "I'm pretty busy trying"
		dialog "to fix this thing at"
		dialog "the moment."
		close()
		return
	end
end

npc("ein_in01","Tarsha Cherno",spr_4_F_EINWOMAN,125,99,5,0,0,"ein_in01_Tarsha_Cherno_12599")
function ein_in01_Tarsha_Cherno_12599()
	if (getvar(ein_tre) == 7) then
		ShowEffect("_exp_ein","EF_COMBOATTACK1")
		dialog "^3355FF*Bang*^000000"
		wait()
		ShowEffect("_exp_ein","EF_COMBOATTACK2")
		dialog "^3355FF*Bang*^000000"
		wait()
		ShowEffect("_exp_ein","EF_COMBOATTACK3")
		dialog "^3355FF*Bang*^000000"
		wait()
		ShowEffect("_exp_ein","EF_POISONATTACK")
		dialog "^3355FF*Crash!*^000000"
		dialog "....."
		Emotion("Theo Cherno","ET_SWEAT")
		Emotion("Tarsha Cherno","ET_SWEAT")
		wait()
		dialog "[Theo Cherno]"
		dialog "Honey..."
		dialog "I think there's"
		dialog "a critical structural"
		dialog "problem with the joint."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "They must not"
		dialog "be connected right."
		dialog "Maybe if we... Hmmm."
		wait()
		dialog "[Theo Cherno]"
		dialog "Well, let's call"
		dialog "it a day and finish"
		dialog "this tomorrow, yeah?"
		wait()
		Emotion("Tarsha Cherno","ET_QUESTION")
		dialog "[Tarsha Cherno]"
		dialog "Oh~"
		dialog "I didn't know we"
		dialog "had a guest. Hello,"
		dialog "how are you doing?"
		dialog "Are you interested in"
		dialog "any of our inventions?"
		wait()
		local mresulta = menu("Inventions...?","Your daughter asked me to visit you.")
		if mresulta == 1 then
			dialog "[Theo Cherno]"
			dialog "Oh yes, my wife are"
			dialog "I are keeping ourselves"
			dialog "busy by conducting research."
			dialog "We're trying to invent new"
			dialog "things for better living."
			dialog "It's what we do..."
			close()
			return
		elseif mresulta == 2 then
			Emotion("Tarsha Cherno","ET_SMILE")
			Emotion("Theo Cherno","ET_SMILE")
			dialog "[Tarsha Cherno]"
			dialog "Hahaha, Elle?"
			dialog "Why would our"
			dialog "daughter send"
			dialog "you to visit us?"
			wait()
		end
		dialog("[","+PcName+"]"")
		dialog "Well, uh..."
		dialog "She wanted me to"
		dialog "check if her mom"
		dialog "was sick or sad"
		dialog "...Or something?"
		wait()
		Emotion("Tarsha Cherno","ET_PROFUSELY_SWAT")
		dialog "[Tarsha Cherno]"
		dialog "Oh my god...!"
		dialog "What is she thinking?"
		dialog "I apologize for troubling"
		dialog "you over this kind of silly"
		dialog "mistake, adventurer!"
		wait()
		dialog "[Theo Cherno]"
		dialog "But wait, darling."
		dialog "I agree that sometimes"
		dialog "you look like the loneliest"
		dialog "person in the world, gazing"
		dialog "out that window with those"
		dialog "impossibly wistful eyes."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Oh, I must be"
		dialog "making my family"
		dialog "very anxious. But"
		dialog "don't you worry, love."
		dialog "I'm very happy with"
		dialog "you and Elle."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "And..."
		dialog "Kind adventurer,"
		dialog "may I ask your name?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "I am called,"
		dialog(,"+PcName+"."")
		Emotion(,"ET_SMILE")
		wait()
		dialog "[Tarsha Cherno]"
		dialog(,"+PcName+","")
		dialog "I appreciate your"
		dialog "concern for us. Would"
		dialog "you stay for a cup of tea?"
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Now, please pardon the"
		dialog "mess. My husband and I are"
		dialog "mechanical engineers focused"
		dialog "on creating machines that would"
		dialog "reduce the risk of mining ores."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Since we work at home, we"
		dialog "can't avoid having machine"
		dialog "parts lying here and there"
		dialog "sometimes. In any case, we're"
		dialog "hoping we create a machine that could make miners' lives safer..."
		wait()
		dialog("[","+PcName+"]"")
		dialog "Ah..."
		dialog "So that's why"
		dialog "there's so many"
		dialog "interesting things"
		dialog "in your house..."
		wait()
		dialog "^3355FFYou begin to"
		dialog "take a look around"
		dialog "the Cherno household.^000000"
		setitem("ein_tre",8)
		close()
		return
	elseif (getvar(ein_tre) == 8) then
		dialog "[Tarsha Cherno]"
		dialog "Although most of these"
		dialog "contraptions aren't worth"
		dialog "showing off, we've put a lot"
		dialog "of work in inventing these"
		dialog "machines. So, of course,"
		dialog "they give us pride~"
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Maybe all these little"
		dialog "projects might not be"
		dialog "that impressive, but I like"
		dialog "to think of them as stepping"
		dialog "stones to future achievements."
		close()
		return
	elseif (getvar(ein_tre) == 9) then
		dialog("[","+PcName+"]"")
		dialog "Excuse me, ma'am,"
		dialog "but you have a scar"
		dialog "on your shoulder. Is"
		dialog "that from an accident?"
		wait()
		dialog "[Tarsha Cherno]"
		dialog "Oh, that's an old"
		dialog "injury that happened"
		dialog "years ago. I suppose"
		dialog "I was quite the trouble"
		dialog "maker to the people"
		dialog "who raised me..."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "You see, I lost my parents"
		dialog "when I was very young. It"
		dialog "was only later when I realized"
		dialog "I was raised by foster parents."
		dialog "I learned that my real mother"
		dialog "died a long time ago..."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "As for my father, no"
		dialog "one knows if he's dead"
		dialog "or alive. I tried my best"
		dialog "to my foster parents happy,"
		dialog "but I ended up being too rebellious and giving them grief."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "I finally left home and"
		dialog "studied mechanics. I met"
		dialog "my husband in school and"
		dialog "it was the greatest thing that"
		dialog "ever happened to me~"
		Emotion("Theo Cherno","ET_THROB")
		wait()
		dialog("[","+PcName+"]"")
		dialog "By the way, I heard"
		dialog "your daughter singing"
		dialog "some sort of Miner's Song."
		dialog "Did you teach her that?"
		Emotion("Tarsha Cherno","ET_HUK")
		Emotion("Theo Cherno","ET_HUK")
		wait()
		dialog "[Theo Cherno]"
		dialog "I don't understand"
		dialog "why little Elle likes"
		dialog "such a rowdy, man song."
		dialog "This is all your fault, Tarsha!"
		Emotion("Theo Cherno","ET_ANGER")
		wait()
		Emotion("Tarsha Cherno","ET_SMILE")
		dialog "[Tarsha Cherno]"
		dialog "Oh~hohohoho~"
		dialog "I was too young to"
		dialog "remember it clearly,"
		dialog "but I'm sure my real"
		dialog "father loved that song."
		wait()
		dialog "[Tarsha Cherno]"
		dialog "I barely recall that"
		dialog "he used to sing it while"
		dialog "cleaning our old house."
		dialog "Yes, I don't remember what"
		dialog "he looked like, but he must"
		dialog "have been a miner at one time."
		wait()
		dialog("[","+PcName+"]"")
		dialog "A miner...?"
		dialog "(Wait, that crewman,"
		dialog "Kain Himere! He was"
		dialog "a miner who lost his"
		dialog "daughter! Just maybe...)"
		wait()
		Emotion(,"ET_SURPRISE")
		dialog("[","+PcName+"]"")
		dialog "...!"
		dialog "Tarsha..."
		dialog "Your father"
		dialog "may still be alive!"
		wait()
		dialog "[Tarsha Cherno]"
		dialog "...What?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "I've got to go check"
		dialog "something now, but"
		dialog "hopefully I'll be back"
		dialog "soon with good news!"
		setitem("ein_tre",10)
		close()
		return
	elseif ((getvar(ein_tre) == 10) or (getvar(ein_tre) == 11)) then
		dialog("[","+PcName+"]"")
		dialog "Tarsha, I know someone"
		dialog "who might be your father!"
		dialog "Just wait for me and hopefully"
		dialog "I'll bring back good news soon!"
		close()
		return
	elseif (getvar(ein_tre) == 12) then
		dialog "[Tarsha Cherno]"
		dialog "Oh, welcome back~"
		dialog "So were you able to"
		dialog "bring back good news?"
		Emotion("Tarsha Cherno","ET_SMILE")
		wait()
		dialog("[","+PcName+"]"")
		dialog "Why, yes."
		dialog "Speaking of which,"
		dialog "allow me to... check"
		dialog "something first..."
		wait()
		local mresulta = menu("Check her neck.","Check her hands.","Check her legs.","Check her forehead.")
		if mresulta == 1 then
			dialog "^3355FFUh oh..."
			dialog "Nothing's there!^000000"
			wait()
			dialog "[Theo Cherno]"
			dialog "H-how rude!"
			dialog "Touching another"
			dialog "man's wife...?!"
			ShowEffect(,"EF_PIERCE")
			hpdrain(10)
			close()
			return
		elseif mresulta == 2 then
			dialog "^3355FFYou found"
			dialog "a burn mark"
			dialog "on her hand.^000000"
			wait()
			dialog("[","+PcName+"]"")
			dialog "That's it!"
			dialog "Tarsha, your"
			dialog "father's name is"
			dialog "Kain Himere and he's"
			dialog "working on the Airship"
			dialog "as one of the crewmen."
			wait()
			dialog("[","+PcName+"]"")
			dialog "He misses you"
			dialog "a lot and hopes"
			dialog "that you can forgive"
			dialog "him... Someday."
			wait()
			dialog "[Tarsha Cherno]"
			dialog "Are..."
			dialog "Are you serious?"
			dialog "My father's alive!"
			dialog "Oh thank god! Thank"
			dialog "you so much, adventurer!"
			wait()
			dialog "[Tarsha Cherno]"
			dialog "..........."
			dialog "So that means, my"
			dialog "real name would be"
			dialog "^3131FFTarsha Himere Cherno^000000."
			wait()
			dialog "[Tarsha Cherno]"
			dialog "Oh, you're a godsend!"
			dialog "I'll never forget what you've"
			dialog "done for me! I must repay"
			dialog "you somehow! But all I know"
			dialog "is mechanical engineering..."
			wait()
			dialog "[Tarsha Cherno]"
			dialog "Oh, I know~"
			dialog "If you have any"
			dialog "^3131FFbroken equipment^000000,"
			dialog "I can fix it with this"
			dialog "Expert Repairman. It's"
			dialog "one of our best inventions!"
			wait()
			dialog "[Tarsha Cherno]"
			dialog "I must go and see"
			dialog "my real father soon!"
			dialog "I've missed him for years!"
			dialog "Thank you again for all"
			dialog "you've done for my family~"
			wait()
			dialog "[Tarsha Cherno]"
			dialog "Oh, and before you"
			dialog "go, would you go see"
			dialog "Elle again? She wanted to"
			dialog "talk to you for some reason."
			setitem("ein_tre",13)
			close()
			return
		elseif mresulta == 3 then
			dialog "^3355FFUh oh..."
			dialog "Nothing's there!^000000"
			wait()
			dialog "[Theo Cherno]"
			dialog "H-how rude!"
			dialog "Touching another"
			dialog "man's wife...?!"
			ShowEffect(,"EF_PIERCE")
			hpdrain(20)
			close()
			return
		elseif mresulta == 4 then
			dialog "^3355FFUh oh..."
			dialog "Nothing's there!^000000"
			wait()
			dialog "[Theo Cherno]"
			dialog "H-how rude!"
			dialog "Touching another"
			dialog "man's wife...?!"
			ShowEffect(,"EF_PIERCE")
			hpdrain(10)
			close()
			return
		end
	elseif (getvar(ein_tre) > 12) then
		dialog "[Tarsha Cherno]"
		dialog "I've been feeling great"
		dialog "after all you've done for"
		dialog "us. Once again, I'd like to"
		dialog "thank you, kind adventurer."
		close()
		return
	else
		dialog "[Tarsha Cherno]"
		dialog "I'm sorry, but"
		dialog "we're pretty busy."
		dialog "Please excuse us~"
		close()
		return
	end
end

npc("ein_in01","_exp_ein",spr_HIDDEN_NPC,127,94,3,0,0,"ein_in01__exp_ein_12794")

npc("ein_in01","Unidentified Machine_ein",spr_HIDDEN_NPC,122,103,3,0,0,"ein_in01_Unidentified_Machine_ein_122103")
function ein_in01_Unidentified_Machine_ein_122103()
	dialog "^3355FFIt's..."
	dialog "It's a really"
	dialog "strange looking"
	dialog "machine. Does it"
	dialog "even do anything?^000000"
	close()
end

npc("ein_in01","Mirror_ein",spr_HIDDEN_NPC,121,99,3,0,0,"ein_in01_Mirror_ein_12199")
function ein_in01_Mirror_ein_12199()
	if getvar(ein_tre) == 8 then
		dialog "^3355FFIt's a mirror."
		dialog "So, of course the"
		dialog "first thing you'll"
		dialog "see is yourself."
		wait()
		local benimaru = math.random(1 5
		if getvar(VAR_SEX) == 1 then
			choose benimaru
			if mresult` == 1 then
				dialog("[","+PcName+"]"")
				dialog "Man..."
				dialog "I didn't know"
				dialog "I was so good"
				dialog "looking! Ooh yah~"
			elseif mresult` == 2 then
				dialog("[","+PcName+"]"")
				dialog "Whoa..."
				dialog "So that's why the"
				dialog "ladies keep looking"
				dialog "at me. I'm a walking"
				dialog "free gun show!"
			elseif mresult` == 3 then
				dialog("[","+PcName+"]"")
				dialog "It's a shame I can't job"
				dialog "change to Male Model."
				dialog "Clearly, I'd be like, Job"
				dialog "Level 87 or something."
				dialog "Man, I'm beautiful..."
			elseif mresult` == 4 then
				dialog("[","+PcName+"]"")
				dialog "This is my reflection?!"
				dialog "No one can be this good"
				dialog "looking, not without special"
				dialog "effects! I mean, it's not"
				dialog "fair to everyone else..."
			elseif mresult` == 5 then
				dialog("[","+PcName+"]"")
				dialog "Oh wow..."
				dialog "I look pretty good."
				dialog "No wait. Really, really"
				dialog "good. So this must be"
				dialog "why I get such great"
				dialog "service at restaurants..."
			end
		else
			choose benimaru
			if mresult_ == 1 then
				dialog("[","+PcName+"]"")
				dialog "Oh. Wow."
				dialog "I never realized..."
				dialog "Everything is in"
				dialog "perfect proportion!"
				dialog "No wonder people"
				dialog "want to party with me~"
			elseif mresult_ == 2 then
				dialog("[","+PcName+"]"")
				dialog "Oh my gosh~"
				dialog "How can I look this"
				dialog "good without any makeup?"
				dialog "I-It isn't fair to all the other"
				dialog "girls... Wow, is this really me?"
			elseif mresult_ == 3 then
				dialog("[","+PcName+"]"")
				dialog "Am I going crazy?"
				dialog "Is that girl in the"
				dialog "mirror really me...?"
				dialog "How did I not realize"
				dialog "how gorgeous I look?"
			elseif mresult_ == 4 then
				dialog("[","+PcName+"]"")
				dialog "So..."
				dialog "What did you do with"
				dialog "this mirror? Because I'm"
				dialog "looking at my reflection"
				dialog "and I can't seem to find"
				dialog "any flaws with my figure..."
				wait()
				Emotion("Tarsha Cherno","ET_PROFUSELY_SWAT")
				dialog "[Tarsha Cherno]"
				dialog "Actually..."
				dialog "That's not one"
				dialog "of our inventions."
				dialog "It's just a normal mirror..."
				wait()
				dialog("[","+PcName+"]"")
				dialog "Well now...!"
				dialog "Are you sure?"
				dialog "Because my face looks"
				dialog "freakin' immaculate! And"
				dialog "it's like, I'm almost too sexy!"
			elseif mresult_ == 5 then
				dialog("[","+PcName+"]"")
				dialog "Oh wow..."
				dialog "I look pretty good."
				dialog "No wait. Really, really"
				dialog "good. So this must be"
				dialog "why I get such great"
				dialog "service at restaurants..."
			end
		end
		wait()
		dialog "^3355FFAfter enjoying that"
		dialog "little epiphany, you"
		dialog "see a reflection of"
		dialog "Tarsha's neck as you"
		dialog "set the mirror back down.^000000"
		wait()
		dialog "^3355FFAs you take a closer"
		dialog "look, you find that there's"
		dialog "a strange mark around her"
		dialog "neck. What ever could it mean?^000000"
		setitem("ein_tre",9)
		close()
		return
	else
	end
end

npc("einbech","Tree_ein-1",spr_HIDDEN_NPC,45,113,3,0,0,"einbech_Tree_ein-1_45113")
function einbech_Tree_ein-1_45113()
	if (getvar(ein_tre) == 11) then
		dialog "^3355FFYou crouch down"
		dialog "under the tree and"
		dialog "begin digging into"
		dialog "the ground.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "..."
		dialog "......"
		dialog "........."
		wait()
		local find_diary = math.random(1 100
		if (find_diary > 10) then
			dialog "^3355FFUnfortunately,"
			dialog "you weren't able"
			dialog "to find anything.^000000"
			close()
			return
		else
			dialog "^3355FFYou have found a journal"
			dialog "among some other articles"
			dialog "that have been buried by Kain."
			dialog "You open the journal and begin"
			dialog "to read what's written inside.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I'm sooo happy"
			dialog "to be with Kain."
			dialog "He's such an honest,"
			dialog "sincere man, even if"
			dialog "he is quiet sometimes."
			wait()
			dialog "^856363Although he's a very"
			dialog "good husband to me,"
			dialog "I'm not so good at being"
			dialog "a housewife. But I'll do"
			dialog "my very best for us both."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I fell asleep while"
			dialog "fixing dinner and burned"
			dialog "all the food. How can I be"
			dialog "so careless? But Kain ate"
			dialog "every bite, even if he had"
			dialog "to pretend that he liked it.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I will be having"
			dialog "a child soon! I'm so happy,"
			dialog "but I'm also a little worried"
			dialog "sometimes. Kain is all smiles"
			dialog "though, and he gives me relief.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363More people have been"
			dialog "leaving the mines to work"
			dialog "for the new factories, many"
			dialog "of them Kain's friends. I think"
			dialog "Kain's pride was pretty hurt."
			dialog "I wonder how I can help him?^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I are now the"
			dialog "proud parents of a beautiful"
			dialog "baby girl. We named her ^000000Tarsha^856363"
			dialog "and she has her father's eyes."
			dialog "I'm going to be the best mother"
			dialog "that I can possibly be for her."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha called me"
			dialog "''Mommy'' for the first"
			dialog "time! It's a miracle!"
			dialog "I want nothing else in"
			dialog "the world but for her to"
			dialog "be happy and healthy.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain got into an accident"
			dialog "at the mine. While they were"
			dialog "digging ores, toxic gas was"
			dialog "released somehow. It wasn't"
			dialog "lethal, but Kain's arm has"
			dialog "been partly paralyzed...^000000"
			wait()
			dialog "^856363When the doctor said that"
			dialog "it may even affect his memories"
			dialog "later, he became so depressed."
			dialog "I tried to make him feel better"
			dialog "by making his favorite soup."
			dialog "He smiled, but I could tell...^000000"
			wait()
			dialog "^856363I could tell he's"
			dialog "not alright with this."
			dialog "I hope he feels better"
			dialog "soon. His despair is"
			dialog "at least as great as his"
			dialog "passion for his job.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain's drinking is"
			dialog "getting worse. He comes"
			dialog "home too often screaming"
			dialog "and yelling. There's too"
			dialog "much anger in him and he's"
			dialog "not the same anymore..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha got her hand"
			dialog "scalded from boiling"
			dialog "water while playing in"
			dialog "the kitchen. Although she"
			dialog "was treated, she'll always"
			dialog "have that ^000000burn mark^856363.^000000"
			wait()
			dialog "^856363After we got home from"
			dialog "the doctor's, Tarsha laughed"
			dialog "and played with her doll as if"
			dialog "nothing ever happened. But for"
			dialog "some reason, I couldn't stop"
			dialog "myself from crying...^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain comes home less"
			dialog "nowadays. I've had to"
			dialog "start working in the store"
			dialog "after we spent all of our"
			dialog "savings. It's tough working"
			dialog "and taking care of the family."
			wait()
			dialog "^856363Still, it's all worth"
			dialog "it to see Tarsha's smile."
			dialog "But I can never stop worrying"
			dialog "about my poor, dear Kain..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Everyday, I feel weaker"
			dialog "and weaker, as if I die"
			dialog "just a little more each day."
			dialog "I wanted to tell Kain about"
			dialog "what the doctor said, but he's"
			dialog "not ready for this news yet...^000000"
			wait()
			dialog "^856363Lately, Tarsha cries"
			dialog "a lot. My poor baby loves"
			dialog "her father, but he's always"
			dialog "so distant. But sometimes,"
			dialog "I see him sadly smile for"
			dialog "Tarsha, if only for a moment.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "^3355FFThat was the last entry"
			dialog "in the journal. You picked"
			dialog "it up so that you can bring"
			dialog "it over to Tarsha.^000000"
			setitem("ein_tre",12)
			close()
			return
		end
	elseif (getvar(ein_tre) == 12) then
		dialog "^3355FFYou open"
		dialog "the journal"
		dialog "and begin to read...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I'm sooo happy"
		dialog "to be with Kain."
		dialog "He's such an honest,"
		dialog "sincere man, even if"
		dialog "he is quiet sometimes."
		wait()
		dialog "^856363Although he's a very"
		dialog "good husband to me,"
		dialog "I'm not so good at being"
		dialog "a housewife. But I'll do"
		dialog "my very best for us both."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I fell asleep while"
		dialog "fixing dinner and burned"
		dialog "all the food. How can I be"
		dialog "so careless? But Kain ate"
		dialog "every bite, even if he had"
		dialog "to pretend that he liked it.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I will be having"
		dialog "a child soon! I'm so happy,"
		dialog "but I'm also a little worried"
		dialog "sometimes. Kain is all smiles"
		dialog "though, and he gives me relief.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363More people have been"
		dialog "leaving the mines to work"
		dialog "for the new factories, many"
		dialog "of them Kain's friends. I think"
		dialog "Kain's pride was pretty hurt."
		dialog "I wonder how I can help him?^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I are now the"
		dialog "proud parents of a beautiful"
		dialog "baby girl. We named her ^000000Tarsha^856363"
		dialog "and she has her father's eyes."
		dialog "I'm going to be the best mother"
		dialog "that I can possibly be for her."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha called me"
		dialog "''Mommy'' for the first"
		dialog "time! It's a miracle!"
		dialog "I want nothing else in"
		dialog "the world but for her to"
		dialog "be happy and healthy.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain got into an accident"
		dialog "at the mine. While they were"
		dialog "digging ores, toxic gas was"
		dialog "released somehow. It wasn't"
		dialog "lethal, but Kain's arm has"
		dialog "been partly paralyzed...^000000"
		wait()
		dialog "^856363When the doctor said that"
		dialog "it may even affect his memories"
		dialog "later, he became so depressed."
		dialog "I tried to make him feel better"
		dialog "by making his favorite soup."
		dialog "He smiled, but I could tell...^000000"
		wait()
		dialog "^856363I could tell he's"
		dialog "not alright with this."
		dialog "I hope he feels better"
		dialog "soon. His despair is"
		dialog "at least as great as his"
		dialog "passion for his job.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain's drinking is"
		dialog "getting worse. He comes"
		dialog "home too often screaming"
		dialog "and yelling. There's too"
		dialog "much anger in him and he's"
		dialog "not the same anymore..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha got her hand"
		dialog "scalded from boiling"
		dialog "water while playing in"
		dialog "the kitchen. Although she"
		dialog "was treated, she'll always"
		dialog "have that ^000000burn mark^856363.^000000"
		wait()
		dialog "^856363After we got home from"
		dialog "the doctor's, Tarsha laughed"
		dialog "and played with her doll as if"
		dialog "nothing ever happened. But for"
		dialog "some reason, I couldn't stop"
		dialog "myself from crying...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain comes home less"
		dialog "nowadays. I've had to"
		dialog "start working in the store"
		dialog "after we spent all of our"
		dialog "savings. It's tough working"
		dialog "and taking care of the family."
		wait()
		dialog "^856363Still, it's all worth"
		dialog "it to see Tarsha's smile."
		dialog "But I can never stop worrying"
		dialog "about my poor, dear Kain..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Everyday, I feel weaker"
		dialog "and weaker, as if I die"
		dialog "just a little more each day."
		dialog "I wanted to tell Kain about"
		dialog "what the doctor said, but he's"
		dialog "not ready for this news yet...^000000"
		wait()
		dialog "^856363Lately, Tarsha cries"
		dialog "a lot. My poor baby loves"
		dialog "her father, but he's always"
		dialog "so distant. But sometimes,"
		dialog "I see him sadly smile for"
		dialog "Tarsha, if only for a moment.^000000"
		close()
		return
	else
	end
end

npc("einbech","Tree_ein-2",spr_HIDDEN_NPC,36,100,3,0,0,"einbech_Tree_ein-2_36100")
function einbech_Tree_ein-2_36100()
	if (getvar(ein_tre) == 11) then
		dialog "^3355FFYou crouch down"
		dialog "under the tree and"
		dialog "begin digging into"
		dialog "the ground.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "..."
		dialog "......"
		dialog "........."
		wait()
		local find_diary = math.random(1 100
		if (find_diary > 10) then
			dialog "^3355FFUnfortunately,"
			dialog "you weren't able"
			dialog "to find anything.^000000"
			close()
			return
		else
			dialog "^3355FFYou have found a journal"
			dialog "among some other articles"
			dialog "that have been buried by Kain."
			dialog "You open the journal and begin"
			dialog "to read what's written inside.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I'm sooo happy"
			dialog "to be with Kain."
			dialog "He's such an honest,"
			dialog "sincere man, even if"
			dialog "he is quiet sometimes."
			wait()
			dialog "^856363Although he's a very"
			dialog "good husband to me,"
			dialog "I'm not so good at being"
			dialog "a housewife. But I'll do"
			dialog "my very best for us both."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I fell asleep while"
			dialog "fixing dinner and burned"
			dialog "all the food. How can I be"
			dialog "so careless? But Kain ate"
			dialog "every bite, even if he had"
			dialog "to pretend that he liked it.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I will be having"
			dialog "a child soon! I'm so happy,"
			dialog "but I'm also a little worried"
			dialog "sometimes. Kain is all smiles"
			dialog "though, and he gives me relief.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363More people have been"
			dialog "leaving the mines to work"
			dialog "for the new factories, many"
			dialog "of them Kain's friends. I think"
			dialog "Kain's pride was pretty hurt."
			dialog "I wonder how I can help him?^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I are now the"
			dialog "proud parents of a beautiful"
			dialog "baby girl. We named her ^000000Tarsha^856363"
			dialog "and she has her father's eyes."
			dialog "I'm going to be the best mother"
			dialog "that I can possibly be for her."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha called me"
			dialog "''Mommy'' for the first"
			dialog "time! It's a miracle!"
			dialog "I want nothing else in"
			dialog "the world but for her to"
			dialog "be happy and healthy.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain got into an accident"
			dialog "at the mine. While they were"
			dialog "digging ores, toxic gas was"
			dialog "released somehow. It wasn't"
			dialog "lethal, but Kain's arm has"
			dialog "been partly paralyzed...^000000"
			wait()
			dialog "^856363When the doctor said that"
			dialog "it may even affect his memories"
			dialog "later, he became so depressed."
			dialog "I tried to make him feel better"
			dialog "by making his favorite soup."
			dialog "He smiled, but I could tell...^000000"
			wait()
			dialog "^856363I could tell he's"
			dialog "not alright with this."
			dialog "I hope he feels better"
			dialog "soon. His despair is"
			dialog "at least as great as his"
			dialog "passion for his job.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain's drinking is"
			dialog "getting worse. He comes"
			dialog "home too often screaming"
			dialog "and yelling. There's too"
			dialog "much anger in him and he's"
			dialog "not the same anymore..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha got her hand"
			dialog "scalded from boiling"
			dialog "water while playing in"
			dialog "the kitchen. Although she"
			dialog "was treated, she'll always"
			dialog "have that ^000000burn mark^856363.^000000"
			wait()
			dialog "^856363After we got home from"
			dialog "the doctor's, Tarsha laughed"
			dialog "and played with her doll as if"
			dialog "nothing ever happened. But for"
			dialog "some reason, I couldn't stop"
			dialog "myself from crying...^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain comes home less"
			dialog "nowadays. I've had to"
			dialog "start working in the store"
			dialog "after we spent all of our"
			dialog "savings. It's tough working"
			dialog "and taking care of the family."
			wait()
			dialog "^856363Still, it's all worth"
			dialog "it to see Tarsha's smile."
			dialog "But I can never stop worrying"
			dialog "about my poor, dear Kain..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Everyday, I feel weaker"
			dialog "and weaker, as if I die"
			dialog "just a little more each day."
			dialog "I wanted to tell Kain about"
			dialog "what the doctor said, but he's"
			dialog "not ready for this news yet...^000000"
			wait()
			dialog "^856363Lately, Tarsha cries"
			dialog "a lot. My poor baby loves"
			dialog "her father, but he's always"
			dialog "so distant. But sometimes,"
			dialog "I see him sadly smile for"
			dialog "Tarsha, if only for a moment.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "^3355FFThat was the last entry"
			dialog "in the journal. You picked"
			dialog "it up so that you can bring"
			dialog "it over to Tarsha.^000000"
			setitem("ein_tre",12)
			close()
			return
		end
	elseif (getvar(ein_tre) == 12) then
		dialog "^3355FFYou open"
		dialog "the journal"
		dialog "and begin to read...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I'm sooo happy"
		dialog "to be with Kain."
		dialog "He's such an honest,"
		dialog "sincere man, even if"
		dialog "he is quiet sometimes."
		wait()
		dialog "^856363Although he's a very"
		dialog "good husband to me,"
		dialog "I'm not so good at being"
		dialog "a housewife. But I'll do"
		dialog "my very best for us both."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I fell asleep while"
		dialog "fixing dinner and burned"
		dialog "all the food. How can I be"
		dialog "so careless? But Kain ate"
		dialog "every bite, even if he had"
		dialog "to pretend that he liked it.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I will be having"
		dialog "a child soon! I'm so happy,"
		dialog "but I'm also a little worried"
		dialog "sometimes. Kain is all smiles"
		dialog "though, and he gives me relief.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363More people have been"
		dialog "leaving the mines to work"
		dialog "for the new factories, many"
		dialog "of them Kain's friends. I think"
		dialog "Kain's pride was pretty hurt."
		dialog "I wonder how I can help him?^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I are now the"
		dialog "proud parents of a beautiful"
		dialog "baby girl. We named her ^000000Tarsha^856363"
		dialog "and she has her father's eyes."
		dialog "I'm going to be the best mother"
		dialog "that I can possibly be for her."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha called me"
		dialog "''Mommy'' for the first"
		dialog "time! It's a miracle!"
		dialog "I want nothing else in"
		dialog "the world but for her to"
		dialog "be happy and healthy.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain got into an accident"
		dialog "at the mine. While they were"
		dialog "digging ores, toxic gas was"
		dialog "released somehow. It wasn't"
		dialog "lethal, but Kain's arm has"
		dialog "been partly paralyzed...^000000"
		wait()
		dialog "^856363When the doctor said that"
		dialog "it may even affect his memories"
		dialog "later, he became so depressed."
		dialog "I tried to make him feel better"
		dialog "by making his favorite soup."
		dialog "He smiled, but I could tell...^000000"
		wait()
		dialog "^856363I could tell he's"
		dialog "not alright with this."
		dialog "I hope he feels better"
		dialog "soon. His despair is"
		dialog "at least as great as his"
		dialog "passion for his job.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain's drinking is"
		dialog "getting worse. He comes"
		dialog "home too often screaming"
		dialog "and yelling. There's too"
		dialog "much anger in him and he's"
		dialog "not the same anymore..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha got her hand"
		dialog "scalded from boiling"
		dialog "water while playing in"
		dialog "the kitchen. Although she"
		dialog "was treated, she'll always"
		dialog "have that ^000000burn mark^856363.^000000"
		wait()
		dialog "^856363After we got home from"
		dialog "the doctor's, Tarsha laughed"
		dialog "and played with her doll as if"
		dialog "nothing ever happened. But for"
		dialog "some reason, I couldn't stop"
		dialog "myself from crying...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain comes home less"
		dialog "nowadays. I've had to"
		dialog "start working in the store"
		dialog "after we spent all of our"
		dialog "savings. It's tough working"
		dialog "and taking care of the family."
		wait()
		dialog "^856363Still, it's all worth"
		dialog "it to see Tarsha's smile."
		dialog "But I can never stop worrying"
		dialog "about my poor, dear Kain..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Everyday, I feel weaker"
		dialog "and weaker, as if I die"
		dialog "just a little more each day."
		dialog "I wanted to tell Kain about"
		dialog "what the doctor said, but he's"
		dialog "not ready for this news yet...^000000"
		wait()
		dialog "^856363Lately, Tarsha cries"
		dialog "a lot. My poor baby loves"
		dialog "her father, but he's always"
		dialog "so distant. But sometimes,"
		dialog "I see him sadly smile for"
		dialog "Tarsha, if only for a moment.^000000"
		close()
		return
	else
	end
end

npc("einbech","Tree_ein-3",spr_HIDDEN_NPC,44,90,3,0,0,"einbech_Tree_ein-3_4490")
function einbech_Tree_ein-3_4490()
	if (getvar(ein_tre) == 11) then
		dialog "^3355FFYou crouch down"
		dialog "under the tree and"
		dialog "begin digging into"
		dialog "the ground.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "..."
		dialog "......"
		dialog "........."
		wait()
		local find_diary = math.random(1 100
		if (find_diary > 10) then
			dialog "^3355FFUnfortunately,"
			dialog "you weren't able"
			dialog "to find anything.^000000"
			close()
			return
		else
			dialog "^3355FFYou have found a journal"
			dialog "among some other articles"
			dialog "that have been buried by Kain."
			dialog "You open the journal and begin"
			dialog "to read what's written inside.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I'm sooo happy"
			dialog "to be with Kain."
			dialog "He's such an honest,"
			dialog "sincere man, even if"
			dialog "he is quiet sometimes."
			wait()
			dialog "^856363Although he's a very"
			dialog "good husband to me,"
			dialog "I'm not so good at being"
			dialog "a housewife. But I'll do"
			dialog "my very best for us both."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I fell asleep while"
			dialog "fixing dinner and burned"
			dialog "all the food. How can I be"
			dialog "so careless? But Kain ate"
			dialog "every bite, even if he had"
			dialog "to pretend that he liked it.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I will be having"
			dialog "a child soon! I'm so happy,"
			dialog "but I'm also a little worried"
			dialog "sometimes. Kain is all smiles"
			dialog "though, and he gives me relief.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363More people have been"
			dialog "leaving the mines to work"
			dialog "for the new factories, many"
			dialog "of them Kain's friends. I think"
			dialog "Kain's pride was pretty hurt."
			dialog "I wonder how I can help him?^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I are now the"
			dialog "proud parents of a beautiful"
			dialog "baby girl. We named her ^000000Tarsha^856363"
			dialog "and she has her father's eyes."
			dialog "I'm going to be the best mother"
			dialog "that I can possibly be for her."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha called me"
			dialog "''Mommy'' for the first"
			dialog "time! It's a miracle!"
			dialog "I want nothing else in"
			dialog "the world but for her to"
			dialog "be happy and healthy.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain got into an accident"
			dialog "at the mine. While they were"
			dialog "digging ores, toxic gas was"
			dialog "released somehow. It wasn't"
			dialog "lethal, but Kain's arm has"
			dialog "been partly paralyzed...^000000"
			wait()
			dialog "^856363When the doctor said that"
			dialog "it may even affect his memories"
			dialog "later, he became so depressed."
			dialog "I tried to make him feel better"
			dialog "by making his favorite soup."
			dialog "He smiled, but I could tell...^000000"
			wait()
			dialog "^856363I could tell he's"
			dialog "not alright with this."
			dialog "I hope he feels better"
			dialog "soon. His despair is"
			dialog "at least as great as his"
			dialog "passion for his job.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain's drinking is"
			dialog "getting worse. He comes"
			dialog "home too often screaming"
			dialog "and yelling. There's too"
			dialog "much anger in him and he's"
			dialog "not the same anymore..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha got her hand"
			dialog "scalded from boiling"
			dialog "water while playing in"
			dialog "the kitchen. Although she"
			dialog "was treated, she'll always"
			dialog "have that ^000000burn mark^856363.^000000"
			wait()
			dialog "^856363After we got home from"
			dialog "the doctor's, Tarsha laughed"
			dialog "and played with her doll as if"
			dialog "nothing ever happened. But for"
			dialog "some reason, I couldn't stop"
			dialog "myself from crying...^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain comes home less"
			dialog "nowadays. I've had to"
			dialog "start working in the store"
			dialog "after we spent all of our"
			dialog "savings. It's tough working"
			dialog "and taking care of the family."
			wait()
			dialog "^856363Still, it's all worth"
			dialog "it to see Tarsha's smile."
			dialog "But I can never stop worrying"
			dialog "about my poor, dear Kain..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Everyday, I feel weaker"
			dialog "and weaker, as if I die"
			dialog "just a little more each day."
			dialog "I wanted to tell Kain about"
			dialog "what the doctor said, but he's"
			dialog "not ready for this news yet...^000000"
			wait()
			dialog "^856363Lately, Tarsha cries"
			dialog "a lot. My poor baby loves"
			dialog "her father, but he's always"
			dialog "so distant. But sometimes,"
			dialog "I see him sadly smile for"
			dialog "Tarsha, if only for a moment.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "^3355FFThat was the last entry"
			dialog "in the journal. You picked"
			dialog "it up so that you can bring"
			dialog "it over to Tarsha.^000000"
			setitem("ein_tre",12)
			close()
			return
		end
	elseif (getvar(ein_tre) == 12) then
		dialog "^3355FFYou open"
		dialog "the journal"
		dialog "and begin to read...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I'm sooo happy"
		dialog "to be with Kain."
		dialog "He's such an honest,"
		dialog "sincere man, even if"
		dialog "he is quiet sometimes."
		wait()
		dialog "^856363Although he's a very"
		dialog "good husband to me,"
		dialog "I'm not so good at being"
		dialog "a housewife. But I'll do"
		dialog "my very best for us both."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I fell asleep while"
		dialog "fixing dinner and burned"
		dialog "all the food. How can I be"
		dialog "so careless? But Kain ate"
		dialog "every bite, even if he had"
		dialog "to pretend that he liked it.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I will be having"
		dialog "a child soon! I'm so happy,"
		dialog "but I'm also a little worried"
		dialog "sometimes. Kain is all smiles"
		dialog "though, and he gives me relief.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363More people have been"
		dialog "leaving the mines to work"
		dialog "for the new factories, many"
		dialog "of them Kain's friends. I think"
		dialog "Kain's pride was pretty hurt."
		dialog "I wonder how I can help him?^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I are now the"
		dialog "proud parents of a beautiful"
		dialog "baby girl. We named her ^000000Tarsha^856363"
		dialog "and she has her father's eyes."
		dialog "I'm going to be the best mother"
		dialog "that I can possibly be for her."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha called me"
		dialog "''Mommy'' for the first"
		dialog "time! It's a miracle!"
		dialog "I want nothing else in"
		dialog "the world but for her to"
		dialog "be happy and healthy.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain got into an accident"
		dialog "at the mine. While they were"
		dialog "digging ores, toxic gas was"
		dialog "released somehow. It wasn't"
		dialog "lethal, but Kain's arm has"
		dialog "been partly paralyzed...^000000"
		wait()
		dialog "^856363When the doctor said that"
		dialog "it may even affect his memories"
		dialog "later, he became so depressed."
		dialog "I tried to make him feel better"
		dialog "by making his favorite soup."
		dialog "He smiled, but I could tell...^000000"
		wait()
		dialog "^856363I could tell he's"
		dialog "not alright with this."
		dialog "I hope he feels better"
		dialog "soon. His despair is"
		dialog "at least as great as his"
		dialog "passion for his job.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain's drinking is"
		dialog "getting worse. He comes"
		dialog "home too often screaming"
		dialog "and yelling. There's too"
		dialog "much anger in him and he's"
		dialog "not the same anymore..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha got her hand"
		dialog "scalded from boiling"
		dialog "water while playing in"
		dialog "the kitchen. Although she"
		dialog "was treated, she'll always"
		dialog "have that ^000000burn mark^856363.^000000"
		wait()
		dialog "^856363After we got home from"
		dialog "the doctor's, Tarsha laughed"
		dialog "and played with her doll as if"
		dialog "nothing ever happened. But for"
		dialog "some reason, I couldn't stop"
		dialog "myself from crying...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain comes home less"
		dialog "nowadays. I've had to"
		dialog "start working in the store"
		dialog "after we spent all of our"
		dialog "savings. It's tough working"
		dialog "and taking care of the family."
		wait()
		dialog "^856363Still, it's all worth"
		dialog "it to see Tarsha's smile."
		dialog "But I can never stop worrying"
		dialog "about my poor, dear Kain..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Everyday, I feel weaker"
		dialog "and weaker, as if I die"
		dialog "just a little more each day."
		dialog "I wanted to tell Kain about"
		dialog "what the doctor said, but he's"
		dialog "not ready for this news yet...^000000"
		wait()
		dialog "^856363Lately, Tarsha cries"
		dialog "a lot. My poor baby loves"
		dialog "her father, but he's always"
		dialog "so distant. But sometimes,"
		dialog "I see him sadly smile for"
		dialog "Tarsha, if only for a moment.^000000"
		close()
		return
	else
	end
end

npc("einbech","Tree_ein-4",spr_HIDDEN_NPC,53,94,3,0,0,"einbech_Tree_ein-4_5394")
function einbech_Tree_ein-4_5394()
	if (getvar(ein_tre) == 11) then
		dialog "^3355FFYou crouch down"
		dialog "under the tree and"
		dialog "begin digging into"
		dialog "the ground.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "..."
		dialog "......"
		dialog "........."
		wait()
		local find_diary = math.random(1 100
		if (find_diary > 10) then
			dialog "^3355FFUnfortunately,"
			dialog "you weren't able"
			dialog "to find anything.^000000"
			close()
			return
		else
			dialog "^3355FFYou have found a journal"
			dialog "among some other articles"
			dialog "that have been buried by Kain."
			dialog "You open the journal and begin"
			dialog "to read what's written inside.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I'm sooo happy"
			dialog "to be with Kain."
			dialog "He's such an honest,"
			dialog "sincere man, even if"
			dialog "he is quiet sometimes."
			wait()
			dialog "^856363Although he's a very"
			dialog "good husband to me,"
			dialog "I'm not so good at being"
			dialog "a housewife. But I'll do"
			dialog "my very best for us both."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363I fell asleep while"
			dialog "fixing dinner and burned"
			dialog "all the food. How can I be"
			dialog "so careless? But Kain ate"
			dialog "every bite, even if he had"
			dialog "to pretend that he liked it.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I will be having"
			dialog "a child soon! I'm so happy,"
			dialog "but I'm also a little worried"
			dialog "sometimes. Kain is all smiles"
			dialog "though, and he gives me relief.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363More people have been"
			dialog "leaving the mines to work"
			dialog "for the new factories, many"
			dialog "of them Kain's friends. I think"
			dialog "Kain's pride was pretty hurt."
			dialog "I wonder how I can help him?^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain and I are now the"
			dialog "proud parents of a beautiful"
			dialog "baby girl. We named her ^000000Tarsha^856363"
			dialog "and she has her father's eyes."
			dialog "I'm going to be the best mother"
			dialog "that I can possibly be for her."
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha called me"
			dialog "''Mommy'' for the first"
			dialog "time! It's a miracle!"
			dialog "I want nothing else in"
			dialog "the world but for her to"
			dialog "be happy and healthy.^000000"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain got into an accident"
			dialog "at the mine. While they were"
			dialog "digging ores, toxic gas was"
			dialog "released somehow. It wasn't"
			dialog "lethal, but Kain's arm has"
			dialog "been partly paralyzed...^000000"
			wait()
			dialog "^856363When the doctor said that"
			dialog "it may even affect his memories"
			dialog "later, he became so depressed."
			dialog "I tried to make him feel better"
			dialog "by making his favorite soup."
			dialog "He smiled, but I could tell...^000000"
			wait()
			dialog "^856363I could tell he's"
			dialog "not alright with this."
			dialog "I hope he feels better"
			dialog "soon. His despair is"
			dialog "at least as great as his"
			dialog "passion for his job.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain's drinking is"
			dialog "getting worse. He comes"
			dialog "home too often screaming"
			dialog "and yelling. There's too"
			dialog "much anger in him and he's"
			dialog "not the same anymore..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Tarsha got her hand"
			dialog "scalded from boiling"
			dialog "water while playing in"
			dialog "the kitchen. Although she"
			dialog "was treated, she'll always"
			dialog "have that ^000000burn mark^856363.^000000"
			wait()
			dialog "^856363After we got home from"
			dialog "the doctor's, Tarsha laughed"
			dialog "and played with her doll as if"
			dialog "nothing ever happened. But for"
			dialog "some reason, I couldn't stop"
			dialog "myself from crying...^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Kain comes home less"
			dialog "nowadays. I've had to"
			dialog "start working in the store"
			dialog "after we spent all of our"
			dialog "savings. It's tough working"
			dialog "and taking care of the family."
			wait()
			dialog "^856363Still, it's all worth"
			dialog "it to see Tarsha's smile."
			dialog "But I can never stop worrying"
			dialog "about my poor, dear Kain..."
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "<Date : OX OX>"
			dialog "^856363Everyday, I feel weaker"
			dialog "and weaker, as if I die"
			dialog "just a little more each day."
			dialog "I wanted to tell Kain about"
			dialog "what the doctor said, but he's"
			dialog "not ready for this news yet...^000000"
			wait()
			dialog "^856363Lately, Tarsha cries"
			dialog "a lot. My poor baby loves"
			dialog "her father, but he's always"
			dialog "so distant. But sometimes,"
			dialog "I see him sadly smile for"
			dialog "Tarsha, if only for a moment.^000000"
			wait()
			dialog "..."
			dialog "......"
			wait()
			dialog "^3355FFThat was the last entry"
			dialog "in the journal. You picked"
			dialog "it up so that you can bring"
			dialog "it over to Tarsha.^000000"
			setitem("ein_tre",12)
			close()
			return
		end
	elseif (getvar(ein_tre) == 12) then
		dialog "^3355FFYou open"
		dialog "the journal"
		dialog "and begin to read...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I'm sooo happy"
		dialog "to be with Kain."
		dialog "He's such an honest,"
		dialog "sincere man, even if"
		dialog "he is quiet sometimes."
		wait()
		dialog "^856363Although he's a very"
		dialog "good husband to me,"
		dialog "I'm not so good at being"
		dialog "a housewife. But I'll do"
		dialog "my very best for us both."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363I fell asleep while"
		dialog "fixing dinner and burned"
		dialog "all the food. How can I be"
		dialog "so careless? But Kain ate"
		dialog "every bite, even if he had"
		dialog "to pretend that he liked it.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I will be having"
		dialog "a child soon! I'm so happy,"
		dialog "but I'm also a little worried"
		dialog "sometimes. Kain is all smiles"
		dialog "though, and he gives me relief.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363More people have been"
		dialog "leaving the mines to work"
		dialog "for the new factories, many"
		dialog "of them Kain's friends. I think"
		dialog "Kain's pride was pretty hurt."
		dialog "I wonder how I can help him?^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain and I are now the"
		dialog "proud parents of a beautiful"
		dialog "baby girl. We named her ^000000Tarsha^856363"
		dialog "and she has her father's eyes."
		dialog "I'm going to be the best mother"
		dialog "that I can possibly be for her."
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha called me"
		dialog "''Mommy'' for the first"
		dialog "time! It's a miracle!"
		dialog "I want nothing else in"
		dialog "the world but for her to"
		dialog "be happy and healthy.^000000"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain got into an accident"
		dialog "at the mine. While they were"
		dialog "digging ores, toxic gas was"
		dialog "released somehow. It wasn't"
		dialog "lethal, but Kain's arm has"
		dialog "been partly paralyzed...^000000"
		wait()
		dialog "^856363When the doctor said that"
		dialog "it may even affect his memories"
		dialog "later, he became so depressed."
		dialog "I tried to make him feel better"
		dialog "by making his favorite soup."
		dialog "He smiled, but I could tell...^000000"
		wait()
		dialog "^856363I could tell he's"
		dialog "not alright with this."
		dialog "I hope he feels better"
		dialog "soon. His despair is"
		dialog "at least as great as his"
		dialog "passion for his job.^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain's drinking is"
		dialog "getting worse. He comes"
		dialog "home too often screaming"
		dialog "and yelling. There's too"
		dialog "much anger in him and he's"
		dialog "not the same anymore..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Tarsha got her hand"
		dialog "scalded from boiling"
		dialog "water while playing in"
		dialog "the kitchen. Although she"
		dialog "was treated, she'll always"
		dialog "have that ^000000burn mark^856363.^000000"
		wait()
		dialog "^856363After we got home from"
		dialog "the doctor's, Tarsha laughed"
		dialog "and played with her doll as if"
		dialog "nothing ever happened. But for"
		dialog "some reason, I couldn't stop"
		dialog "myself from crying...^000000"
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Kain comes home less"
		dialog "nowadays. I've had to"
		dialog "start working in the store"
		dialog "after we spent all of our"
		dialog "savings. It's tough working"
		dialog "and taking care of the family."
		wait()
		dialog "^856363Still, it's all worth"
		dialog "it to see Tarsha's smile."
		dialog "But I can never stop worrying"
		dialog "about my poor, dear Kain..."
		wait()
		dialog "..."
		dialog "......"
		wait()
		dialog "<Date : OX OX>"
		dialog "^856363Everyday, I feel weaker"
		dialog "and weaker, as if I die"
		dialog "just a little more each day."
		dialog "I wanted to tell Kain about"
		dialog "what the doctor said, but he's"
		dialog "not ready for this news yet...^000000"
		wait()
		dialog "^856363Lately, Tarsha cries"
		dialog "a lot. My poor baby loves"
		dialog "her father, but he's always"
		dialog "so distant. But sometimes,"
		dialog "I see him sadly smile for"
		dialog "Tarsha, if only for a moment.^000000"
		close()
		return
	else
	end
end

npc("ein_in01","Unidentified Machine_ein",spr_HIDDEN_NPC,117,80,3,0,0,"ein_in01_Unidentified_Machine_ein_11780")
function ein_in01_Unidentified_Machine_ein_11780()
	if (getvar(ein_tre) > 12) then
		dialog("[","+PcName+"]"")
		dialog "This is the"
		dialog "^FF0000Expert Repairman^000000?!"
		dialog "It looks like it needs"
		dialog "repairs for itself!"
		wait()
		local mresult_ = menu("Fix an Item","Cancel.")
		if mresult_ == 1 then
			GetDamagedItemNum()
			local mugi = GetDamagedItemNum
			local jeni = mugi * 5000
			if mugi == 0 then
				dialog "*Beep-*"
				dialog "You have"
				dialog "nothing to fix."
				close()
				return
			end
			dialog "*Beep-*"
			dialog "You have a total"
			dialog("of ","+","mugi","+"," damaged items.")
			dialog "Shall I repair them?"
			wait()
			local mresult` = menu("Yes","No")
			if mresult` == 1 then
				if mugi == GetDamagedItemNum then
					RepairDamagedItem()
					dialog "*Beep-*"
					dialog "Repair complete."
					close()
					return
				else
					dialog "*Beep-*"
					dialog "Please check"
					dialog "your items again."
					close()
					return
				end
			elseif mresult` == 2 then
			end
		elseif mresult_ == 2 then
		end
	else
		dialog "^3355FFIt's some sort of"
		dialog "strange machine."
		dialog "Its function and purpose"
		dialog "is completely undiscernable.^000000"
		close()
		return
	end
end
