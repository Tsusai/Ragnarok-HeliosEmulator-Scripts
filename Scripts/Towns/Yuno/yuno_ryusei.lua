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
--| 24/01/2008                                      |--
--|   - First version for helios. [Spre]            |--
--|-------------------------------------------------|--
--| Credits: Gravity                                |--
--|          Yaros                                  |--
--|-------------------------------------------------|--
--| Notes:                                          |--
--|                                                 |--
--|                                                 |--
--\_________________________________________________/--

npc("yuno_in03","Metto",spr_4_M_SEAMAN,26,39,3,0,0,"yuno_in03_Metto_2639")
function yuno_in03_Metto_2639()
	if getvar(mad) == 0 then
		dialog "[Metto]"
		dialog "In the Lab today, in the Lab tomorrow! Everyday is filled with research! Even if it takes my entire life, I will not give up until I have made a new Juno..."
		wait()
		dialog "[Metto]"
		dialog "A new Juno in which all will bask in the light of my genius! If I can just harness the power of flight... I know I can do it!"
		wait()
		dialog "[Metto]"
		dialog "^FF0000Wagan^000000 said that my idea was crazy and impossible. But I am no fool, I won't be swayed by his words of mockery!"
		close()
	else
		if getvar(mad) == 1 then
			setitem("mad",2)
			dialog "[Metto]"
			dialog "I'm going to ask my colleague ^FF0000Stangckle^000000 to help me. I am sure he will be more than willing to help out an old friend."
			wait()
			dialog "[Metto]"
			dialog "If I had that fellow's help, this would be much easier. Pray! Pray to whatever God you believe that we will succeed!"
			close()
		else
			if getvar(mad) == 3 then
				setitem("mad",4)
				dialog "[Metto]"
				dialog "What? That punk Stangckle said he doesn't want to help me?! This is not good. This will slow my research considerably."
				wait()
				dialog "[Metto]"
				dialog "..."
				dialog "What will"
				dialog "I do now?!"
				wait()
				dialog "[Metto]"
				dialog "Luckily, I have a back up plan. I am positive that my friend and colleague ^FF0000Kato^000000 will lend his aid."
				wait()
				dialog "[Metto]"
				dialog "If I can only study his super robot, Great Z, I can continue my research..."
				wait()
				dialog "[Metto]"
				dialog "I guess if Stangckle doesn't want to help me, he can have it his way. I must continue my research, whether or not he helps me."
				wait()
				dialog "[Metto]"
				dialog "Expect great things, young friend. Muahahahha."
				close()
			else
				if getvar(mad) == 5 then
					setitem("mad",6)
					dialog "[Metto]"
					dialog "What? You mean to tell me that the very thing I need to continue my research, the mighty Great Z, has been destroyed?!!"
					wait()
					dialog "[Metto]"
					dialog "Nooooo~!! Why? Why would they do that? Are the Gods cursing me?!"
					wait()
					dialog "[Metto]"
					dialog "Wait, I need..."
					dialog "To calm down..."
					wait()
					dialog "[Metto]"
					dialog "If I can just get the help of professor ^FF0000CiCi^000000 with his Riding Engine theory, I might be able to finish my research..."
					wait()
					dialog "[Metto]"
					dialog "I still"
					dialog "have hope!"
					dialog "Ha! Ha! Ha!"
					close()
				else
					if getvar(mad) == 7 then
						setitem("mad",8)
						dialog "[Metto]"
						dialog "..."
						wait()
						dialog "[Metto]"
						dialog "..."
						dialog "......"
						wait()
						dialog "[Metto]"
						dialog "How can this happen 3 times in a row? Its true, the Gods have forsaken me! I'm ruined... RUINED!!!"
						wait()
						dialog "[Metto]"
						dialog "What can I do now...? Has the time really come for me to forfeit all my years of research?"
						wait()
						dialog "[Metto]"
						dialog "I know I've disappointed you, but please, forget all about me."
						wait()
						dialog "[Metto]"
						dialog "Who would do this to me? What kind of malicious person would shatter a man's dreams??"
						wait()
						dialog "[Metto]"
						dialog "I'm tired of this. I think that the time has come for me to give up. It's all over. Please don't be too disappointed..."
						close()
					else
						if getvar(mad) == 8 then
							dialog "[Metto]"
							dialog "Maybe I should look into a job change. I hear it is a popular decision these days."
							wait()
							dialog "[Metto]"
							dialog "I wonder what I should look into? All I know for sure is that I don't want to be scientist anymore. I'm done with research..."
							close()
						else
							dialog "[Metto]"
							dialog "I better get going to check this new thing out. What are you still doing here? I'll be leaving in a bit."
							wait()
							dialog "[Metto]"
							dialog "I need to get ready! You go ahead and take off, I'll be going out soon."
						end
					end
				end
			end
		end
	end
end


npc("yuno_in01","Wagan",spr_4_M_03,17,30,5,0,0,"yuno_in01_Wagan_1730")
function yuno_in01_Wagan_1730()
	if getvar(mad) == 0 then
		dialog "[Wagan]"
		dialog "I'm sure that you know our city has been living off our research for many years."
		wait()
		dialog "[Wagan]"
		dialog "We owe this quality of life to those who have dedicated their lives to research and study."
		wait()
		dialog "[Wagan]"
		dialog "So we help each other and study together. It is nice to have such solid support around when we are conducting research."
		wait()
		dialog "[Wagan]"
		dialog "But there are those few bad apples that just drive me crazy..."
		wait()
		dialog "[Wagan]"
		dialog "It's good to try hard, but there are those selfish and crazy mad scientists that make things harder for the rest of us."
		wait()
		dialog "[Wagan]"
		dialog "Out of all those, ^FF0000Metto^000000 must be the worst by far. He's into crazy things..."
		wait()
		dialog "[Wagan]"
		dialog "For science, he's destroyed public facilities, has been the cause of noise and air pollution and generally disturbing the peace..."
		wait()
		dialog "[Wagan]"
		dialog "And he's justifying his behavior under the excuse of research! He's a crazy fellow who's taken it too far!"
		wait()
		dialog "[Wagan]"
		dialog "I wish there was a way that we could stop him from wrecking it for the rest of us. Some brave, daring soul should be able to do something..."
		wait()
		local mresulta = menu("Leave it to me.","I wish your village luck in doing so.")
		if mresulta == 1 then
			if getvar(VAR_JOB) == NOVICE then
				dialog "[Wagan]"
				dialog "Hmm..."
				dialog "Thanks for the offer, but I don't think this is something that you could do..."
				wait()
				dialog "[Wagan]"
				dialog "I think we need someone a bit harsher to help us out. I think it would be a little too much for a Novice."
				wait()
				dialog "[Wagan]"
				dialog "Please don't be"
				dialog "offended by this."
				close()
				return
			end
			setitem("mad",1)
			dialog "[Wagan]"
			dialog "Oh, are you going to take care of this for us? We would be very gratefu."
			wait()
			dialog "[Wagan]"
			dialog "But how do you plan to go about doing this? I'm guessing it's harder than it sounds..."
			wait()
			local mresultb = menu("Of course I have a plan.","I guess I need a plan.")
			if mresultb == 1 then
				dialog "[Wagan]"
				dialog "I have faith in you. You should know that he believes in fate. Use that to your advantage."
				wait()
				dialog "[Wagan]"
				dialog "I feel much better knowing you will take care of this little problem..."
				close()
			elseif mresultb == 2 then
				dialog "[Wagan]"
				dialog "Hmmm... I admire your zeal, but how do you expect to accomplish anything without a plan?"
				wait()
				dialog "[Wagan]"
				dialog "You need a ruse to trick him into quitting. Something subtle, like... Hmm..."
				wait()
				dialog "[Wagan]"
				dialog "...Sabotaging his experiments and making it look like it was his destiny to fail!"
				wait()
				dialog "[Wagan]"
				dialog "He's talkative, so if you approach him, he'll tell you all you need to know."
				wait()
				dialog "[Wagan]"
				dialog "Yeah..."
				dialog "I've been thinking of this plan for a while..."
				close()
			end
			elseif mresulta == 2 then
				dialog "[Wagan]"
				dialog "We will have to pray for fate to help us. Now to think of it, Metto is a strong believer in fate."
				wait()
				dialog "[Wagan]"
				dialog "If only we could use that to our advantage..."
				close()
			end
		else
			if getvar(mad) == 8 then
				dialog "[Wagan]"
				dialog "Thank you for your help. Because of your work in ridding us of Metto, we have one less worry."
				wait()
				dialog "[Wagan]"
				dialog "I'm sure the people of Juno are very thankful. Here is a little token of our appreciation..."
				wait()
				if (VAR_JOB) == SAGE then
					local now_weight = (getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT))
					if now_weight < 300 then
						dialog "[Wagan]"
						dialog "Oh no, it seems that you are carrying too much stuff! Would you make some room?"
						close()
						return
					end
					setitem("mad",9)
					dialog "[Wagan]"
					dialog "I wish you luck in your future endeavors..."
					getitem("Yellow_Gemstone",10)
					close()
					return
				end
				local now_weight = (getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT))
				if now_weight < 150 then
					dialog "[Wagan]"
					dialog "Oh no, it seems that you are carrying too much! Would you make some room?"
					close()
					return
				end
				setitem("mad",9)
				dialog "[Wagan]"
				dialog "I wish you luck in your future endeavors..."
				getitem("Blue_Gemstone",5)
				close()
			else
				if getvar(mad) == 9 then
					dialog "[Wagan]"
					dialog "Things around here seem much more peaceful without that Metto around. Thanks for your help."
					close()
				else
					dialog "[Wagan]"
					dialog "How goes your work with Metto? Hopefully the plan is going well. I'm sorry to bother you with such a task."
					close()
				end
			end
		end
	return
end
npc("yuno_in01","Stangckle",spr_4W_M_03,17,95,5,0,0,"yuno_in01_Stangckle_1795")
function yuno_in01_Stangckle_1795()
	if getvar(mad) == 2 then
		dialog "[Stangckle]"
		dialog "What can I do for you? My colleague Metto is coming here soon, so I don't have much time. So what did you say you needed?"
		wait()
		local mresulta = menu("I'm here to stop your research.","I don't need anything.")
		if mresulta == 1 then
			setitem("mad",3)
			dialog "[Stangckle]"
			dialog "..."
			wait()
			dialog "[Stangckle]"
			dialog "..."
			dialog "......"
			wait()
			dialog "[Stangckle]"
			dialog "..."
			dialog "......"
			dialog "........."
			wait()
			dialog "[Stangckle]"
			dialog "Is that true?? Metto doesn't think of me as a colleague, but still wants me to help him?!"
			wait()
			dialog "[Stangckle]"
			dialog "He only sees me as an assistant and is going to steal all the credit for our discoveries?!"
			wait()
			dialog "[Stangckle]"
			dialog "This guy can't be trusted! The rumors were true: he really is mad!"
			wait()
			dialog "[Stangckle]"
			dialog "And to think, I really respected that traitor! I can't even stand to see that guy's face anymore."
			wait()
			dialog "[Stangckle]"
			dialog "I'm glad that an honest, trustworthy person such as yourself had the guts to tell me. Thank you."
			wait()
			dialog "[Stangckle]"
			dialog "Now if you'll excuse me, I have work to do."
			close()
		elseif mresulta == 2 then
			dialog "[Stangckle]"
			dialog "What are you doing then? Stop wasting my time."
			close()
		end
	else
		if getvar(mad) == 0 then
			dialog "[Stangckle]"
			dialog "I am one of the scientists in this city. My name is Stangckle."
			wait()
			dialog "[Stangckle]"
			dialog "You should remember my name, it may be useful to you in the future."
			close()
		else
			if getvar(mad) == 1 then
				dialog "[Stangckle]"
				dialog "I am one of the scientists in this city. My name is Stangckle."
				wait()
				dialog "[Stangckle]"
				dialog "You should remember my name, it may be useful to you in the future."
				close()
			else
				dialog "[Stangckle]"
				dialog "So Metto has become one of those mad scientists. I guess that is the choice he has ultimately made for his life."
				close()
			end
		end
	end
end

npc("yuno_in01","Kato",spr_1_M_JOBTESTER,19,183,5,0,0,"yuno_in01_Kato_19183")
function yuno_in01_Kato_19183()
	if getvar(mad) == 4 then
		dialog "[Kato]"
		dialog "I am a scientist researching all sorts of things."
		wait()
		dialog "[Kato]"
		dialog "Of course, my research is private and confidential. But is there anything I can do for you?"
		wait()
		local mresulta = menu("I want to stop you from making a mistake.","Just saying hello.")
		if mresulta == 1 then
			setitem("mad",5)
			dialog "[Kato]"
			dialog "What? Metto said, my Great Z is inferior to Stangckles research?!"
			wait()
			dialog "[Kato]"
			dialog "H-he said I should rename my invention to 'Lame Z?' *Sniff* I... I don't believe it... *Sob*"
			wait()
			dialog "[Kato]"
			dialog "I-If my invention is no good, then I guess I should destroy my Great Z... *sigh*"
			wait()
			dialog "[Kato]"
			dialog "Thank you for letting me know. I know it wasn't easy to tell me."
			close()
		elseif mresulta == 2 then
			dialog "[Kato]"
			dialog "........................."
			dialog "Okay..."
			dialog "Um... Hey."
			close()
		end
	else
		if getvar(mad) == 5 then
			dialog "[Kato]"
			dialog "I am interested in researching artificial intelligence. You know, like robots."
			wait()
			dialog "[Kato]"
			dialog "I know it a very difficult feat to accomplish, but where there's a will, there's a way."
			wait()
			dialog "[Kato]"
			dialog "If you ever see something really amazing like this, you'll know its my handiwork."
			close()
		else
			if getvar(mad) == 6 then
				dialog "[Kato]"
				dialog "I am interested in researching artificial intelligence. You know, like robots."
				wait()
				dialog "[Kato]"
				dialog "I know it a very difficult feat to accomplish, but where there's a will, there's a way."
				wait()
				dialog "[Kato]"
				dialog "If you ever see something really amazing like this, you'll know its my handiwork."
				close()
			else
				if getvar(mad) == 7 then
					dialog "[Kato]"
					dialog "I am interested in researching artificial intelligence. You know, like robots."
					wait()
					dialog "[Kato]"
					dialog "I know it a very difficult feat to accomplish, but where there's a will, there's a way."
					wait()
					dialog "[Kato]"
					dialog "If you ever see something really amazing like this, you'll know its my handiwork."
					close()
				else
					if getvar(mad) == 8 then
						dialog "[Kato]"
						dialog "I am interested in researching artificial intelligence. You know, like robots."
						wait()
						dialog "[Kato]"
						dialog "I know it a very difficult feat to accomplish, but where there's a will, there's a way."
						wait()
						dialog "[Kato]"
						dialog "If you ever see something really amazing like this, you'll know its my handiwork."
						close()
					else
						if getvar(mad) == 9 then
							dialog "[Kato]"
							dialog "[Kato]"
							dialog "I am interested in researching artificial intelligence. You know, like robots."
							wait()
							dialog "[Kato]"
							dialog "I know it a very difficult feat to accomplish, but where there's a will, there's a way."
							wait()
							dialog "[Kato]"
							dialog "If you ever see something really amazing like this, you'll know its my handiwork."
							close()
						else
							dialog "[Kato]"
							dialog "I am a scientist of Artificial Intelligence and Robotics."
							wait()
							dialog "[Kato]"
							dialog "I don't have a specific project right now, but my latest creation, the 'Great Z,' is truly a product of sheer and utter genius."
							close()
						end
					end
				end
			end
		end
	end
end

npc("yuno_in03","CiCi",spr_2_M_MOLGENSTEIN,178,43,0,0,0,"yuno_in03_CiCi_17843")
function yuno_in03_CiCi_17843()
	if getvar(mad) == 6 then
		dialog "[CiCi]"
		dialog "My name is CiCi. I am one of the three great scientists in this city."
		wait()
		dialog "[CiCi]"
		dialog "There are many great scientists in this city, but being in the top three is a true honor. Don't you agree?"
		wait()
		dialog "[CiCi]"
		dialog "Well, I think I've bragged a little too much now, what can I do for you?"
		wait()
		local mresulta = menu("I want to warn you.","Nothing, just saying Hi.")
		if mresulta == 1 then
			setitem("mad",7)
			dialog "[CiCi]"
			dialog "Hm? Metto said that he doesn't need my Riding Engine theory?! Hmpf, what an ingrate!"
			wait()
			dialog "[CiCi]"
			dialog "I have half a mind to teach him a little something about true science and intelligent research."
			wait()
			dialog "[CiCi]"
			dialog "He thinks that I owe him an apology?! For what?  Why should I apologize...?!"
			wait()
			dialog "[CiCi]"
			dialog "Whatever, I really didn't have the necessary parts to help him anyway. I guess, either way, he would not have had a chance."
			wait()
			dialog "[CiCi]"
			dialog "Let him know I really don't want to be a part of what he is doing. He isn't even doing the type of research that we would be able to publicize."
			close()
		elseif mresulta == 2 then
			dialog "[CiCi]"
			dialog "What? That's it? I was bored before you came, but you've managed to bore me even more."
		end
	else
		if getvar(mad) < 6 then
			dialog "[CiCi]"
			dialog "My name is CiCi. I am one of the three great scientists in this city."
			wait()
			dialog "[CiCi]"
			dialog "There are many great scientists here, but being in the top three is a true honor, wouldn't you agree?"
			close()
		else
			dialog "[CiCi]"
			dialog "Hmmm..."
			dialog "I want to improve the Riding Engine in a new way, but I lack the parts I need..."
			wait()
			dialog "[CiCi]"
			dialog "What a headache~ And Metto has never offered me any help at all. This will not be easy."
			close()
		end
	end
end

npc("yuno_in01","Bain",spr_4W_M_02,103,157,3,0,0,"yuno_in01_Bain_103157")
function yuno_in01_Bain_103157()
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "- Wait a minute !! -"
		dialog "- Currently you're carrying -"
		dialog "- too many items with you. -"
		dialog "- Please try again -"
		dialog "- after you loose some weight. -"
		close()
		return
	end
	if ((getvar(Mixture) > 0) and (getvar(Portable_Furnace) > 4) and (getvar(Coal) > 4) and (getvar(Burn_Tree) > 4) and (getvar(Fine_Sand) > 4) and (getvar(Elunium_Stone) > 2) and (getvar(Oridecon_Stone) > 2) and (getvar(VAR_MONEY) > 2000)) then
		if (getvar(job_alchemist_q) == 23) then
			setitem("job_alchemist_q",24)
		end
		local kyulkwa = math.random(1,10)
		dialog "[Bain]"
		dialog "Oh ho ho... These are the parts that I needed. Thank you so much."
		wait()
		dialog "[Bain]"
		dialog "Okay, let's try this out! Hold on for just a second!"
		wait()
		dialog "^3355FF*Vrrrmmmmm*^000000"
		wait()
		dialog "^3355FF*Pakakkakakakkakaakapakakkakak*^000000"
		wait()
		dialog "^3355FF*Shakakakakkakakakakkakakakakka!*^000000"
		wait()
		if ((kyulkwa == 1) or (kyulkwa == 2) or (kyulkwa == 3) or (kyulkwa == 4) or (kyulkwa == 9) or (kyulkwa == 10)) then
			dropitem("Mixture",1)
			dropitem("Portable_Furnace",5)
			dropitem("Coal",5)
			dropitem("Burn_Tree",5)
			dropitem("Fine_Sand",5)
			dropitem("Elunium_Stone",3)
			dropitem("Oridecon_Stone",3)
			dropgold(2000)
			getitem("Iron_Ore",5)
			dialog "[Bain]"
			dialog "AHHH, it's a success! I don't know if we can do anything else, but this time we have created 5 ^FF0000Iron Ore^000000 !"
			wait()
			dialog "[Bain]"
			dialog "Now that we know that it works, I don't have any need for this. Why don't you take it?"
			wait()
			dialog "[Bain]"
			dialog "Oh, and if you find any more parts, bring them to me again. Heheheh."
			wait()
			dialog "[Bain]"
			dialog "Thank you for helping me out."
			dialog "You have my eternal gratitude."
			dialog "I wish you luck in your journeys!"
			close()
			return
		end
		if ((kyulkwa == 5) or (kyulkwa == 6) or (kyulkwa == 8)) then
			dropitem("Mixture",1)
			dropitem("Portable_Furnace",5)
			dropitem("Coal",5)
			dropitem("Burn_Tree",5)
			dropitem("Fine_Sand",5)
			dropitem("Elunium_Stone",3)
			dropitem("Oridecon_Stone",3)
			dropgold(2000)
			getitem("Cardinal_Jewel",5)
			dialog "[Bain]"
			dialog "AHHH, it is a success!"
			dialog "I don't know if we can do anything"
			dialog "else, but this time we have created 5 ^FF0000Ruby^000000 !"
			wait()
			dialog "[Bain]"
			dialog "Now that we know that it works,"
			dialog "I don't have any need for this."
			dialog "Why don't you take it? Oh,"
			dialog "and if you find any more parts,"
			dialog "bring them to me again. Heheheh."
			wait()
			dialog "[Bain]"
			dialog "Thank you for helping me out."
			dialog "You have my eternal gratitude. "
			dialog "I wish you luck in your adventures!"
			close()
			return
		end
		if (kyulkwa == 7) then
			dropitem("Mixture",1)
			dropitem("Portable_Furnace",5)
			dropitem("Coal",5)
			dropitem("Burn_Tree",5)
			dropitem("Fine_Sand",5)
			dropitem("Elunium_Stone",3)
			dropitem("Oridecon_Stone",3)
			dropgold(2000)
			getitem("Gold",2)
			dialog "[Bain]"
			dialog "AHHH, it is a success!"
			dialog "I don't know if we can do anything else,"
			dialog "but this time we have created"
			dialog "^FF0000Gold^000000 !"
			wait()
			dialog "[Bain]"
			dialog "Now that we know that it works"
			dialog "I don't have any need for this."
			dialog "Why don't you take it? Oh,"
			dialog "and if you find any more parts,"
			dialog "bring them to me again. Heheheh."
			wait()
			dialog "[Bain]"
			dialog "Thank you for helping me out."
			dialog "You have my eternal gratitude."
			dialog "I wish you luck in your journeys!"
			close()
			return
		end
	end
	if getvar(alkemi) == 1 then
		dialog "[Bain]"
		dialog "In case you"
		dialog "forgot, these are the"
		dialog "required materials."
		dialog "Write it down if you need to."
		wait()
		dialog "[Bain]"
		dialog "^FF00001 Mixture^000000, ^FF00005 Mini-Furnace^000000,"
		dialog "^FF00005 Burnt Treee^000000 , ^FF00005 Coal^000000,"
		dialog "^FF00005 Fine Sand^000000, ^FF00003 Rough Elunium^000000,"
		dialog "^FF00003 Rough Oridecon^000000^000000."
		wait()
		dialog "[Bain]"
		dialog "In addition to this, you "
		dialog "will need 2,000 zeny."
		dialog "Good Luck..."
		close()
		return
	end
	if getvar(alkemi) == 0 then
		dialog "[Bain]"
		dialog "We are going to invent a doll that can can talk and communicate! Well, at least, I'm trying to."
		wait()
		dialog "[Bain]"
		dialog "I got the idea from a historical legend. I figure that if it's been done before, this project is definitely possible."
		wait()
		dialog "[Bain]"
		dialog "But right now, I lack the supplies"
		dialog "and parts that I need to attempt"
		dialog "this feat. I don't know how"
		dialog "they gathered all the necessary materials...."
		wait()
		dialog "[Bain]"
		dialog "Money can only buy some of what I"
		dialog "need. There are also those items"
		dialog "that need to be taken from"
		dialog "monsters that are much too"
		dialog "powerful. How will I continue my research?"
		wait()
		local mresulta = menu("I'll get them for you.","Good luck.")
		if mresulta == 1 then
			setitem("alkemi",1)
			dialog "[Bain]"
			dialog "Really? Such benevolence is rare"
			dialog "in this day and age. We would be"
			dialog "grateful for your assistance."
			dialog "Here are the items that we will be"
			dialog "needing."
			wait()
			dialog "[Bain]"
			dialog "^FF00001 Mixture^000000, ^FF00005 Mini-Furnace^000000,"
			dialog "^FF00005 Burnt Treee^000000 , ^FF00005 Coal^000000,"
			dialog "^FF00005 Fine Sand^000000, ^FF00003 Rough Elunium^000000,"
			dialog "^FF00003 Rough Oridecon^000000^000000."
			wait()
			dialog "[Bain]"
			dialog "We will also need 2,000 Zeny."
			dialog "The money will help pay for the"
			dialog "minor expenses involved in undertaking this endeavor."
			dialog "Godspeed."
			close()
			return
		elseif mresulta == 2 then
			dialog "[Bain]"
			dialog "I wish I could be"
			dialog "a strong adventurer"
			dialog "like you."
			close()
			return
		end
	end
end

npc("yuno_in01","Bajin",spr_1_M_01,100,153,7,0,0,"yuno_in01_Bajin_100153")
function yuno_in01_Bajin_100153()
	local max_max_c = CheckMaxCount(1201,1)
	if max_max_c == 1 then
		dialog "- Wait a minute !! -"
		dialog "- Currently you're carrying -"
		dialog "- too many items with you. -"
		dialog "- Please try again -"
		dialog "- after you loose some weight. -"
		close()
		return
	end
	if ((getvar(Mixture) > 0) and (getvar(Portable_Furnace) > 4) and (getvar(Coal) > 4) and (getvar(Burn_Tree) > 4) and (getvar(Fine_Sand) > 4) and (getvar(Elunium_Stone) > 2) and (getvar(Oridecon_Stone) > 2) and (getvar(VAR_MONEY) > 2000)) then
		if (getvar(job_alchemist_q) == 23) then
			setitem("job_alchemist_q",24)
		end
		dropitem("Mixture",1)
		dropitem("Portable_Furnace",5)
		dropitem("Coal",5)
		dropitem("Burn_Tree",5)
		dropitem("Fine_Sand",5)
		dropitem("Elunium_Stone",3)
		dropitem("Oridecon_Stone",3)
		dropgold(2000)
		local kyulkwa = math.random(1,10)
		dialog "[Bajin]"
		dialog "Oh ho ho... These are the parts"
		dialog "that I needed. Thank you so much."
		dialog "Okay, let's try this out!"
		dialog "Hold on for just a second!"
		wait()
		dialog "^3355FF*Vrrrmrmrmrmrmrmrmrmrmrmmmmm*^000000"
		wait()
		dialog "^3355FF*Pakakkakakakkakaakapakakkakak*^000000"
		wait()
		dialog "^3355FF*Shakakakakkakakakakkakakakakka!*^000000"
		wait()
		if ((kyulkwa == 1) or (kyulkwa == 2) or (kyulkwa == 3) or (kyulkwa == 4) or (kyulkwa == 9) or (kyulkwa == 10)) then
			dialog "[Bajin]"
			dialog "AHHH, it is a success!"
			dialog "I don't know if we can do anything"
			dialog "else, but this time we have created 5 ^FF0000Iron Ore^000000 !"
			wait()
			dialog "[Bajin]"
			dialog "Now that we know that it works,"
			dialog "I don't have any need for this."
			dialog "Why don't you take it? Oh,"
			dialog "and if you find any more parts,"
			dialog "bring them to me again. Heheheh."
			wait()
			dialog "[Bajin]"
			dialog "Thank you for helping me out."
			dialog "You have my eternal gratitude."
			dialog "I wish you luck in your adventures!"
			close()
			getitem("Iron_Ore",5)
			return
		end
		if ((kyulkwa == 5) or (kyulkwa == 6) or (kyulkwa == 8)) then
			dialog "[Bajin]"
			dialog "AHHH it is a success!"
			dialog "I don't know if we can do anything"
			dialog "else, but this time we have created 5 ^FF0000Ruby^000000 !"
			wait()
			dialog "[Bajin]"
			dialog "Now that we know that it works,"
			dialog "I don't have any need for this."
			dialog "Why don't you take it? Oh,"
			dialog "and if you find any more parts,"
			dialog "bring them to me again. Heheheh."
			wait()
			dialog "[Bajin]"
			dialog "Thank for helping me out."
			dialog "You have my eternal gratitude."
			dialog "I wish you luck in your journeys!"
			close()
			getitem("Cardinal_Jewel",5)
			return
		end
		if (kyulkwa == 7) then
			dialog "[Bajin]"
			dialog "AHHH, it is a success!"
			dialog "I don't know if we can do anything"
			dialog "else, but this time we have created 3 ^FF0000Oridecon^000000 !"
			wait()
			dialog "[Bajin]"
			dialog "Now that we know that it works,"
			dialog "I don't have any need for this."
			dialog "Why don't you take it? Oh,"
			dialog "and if you find any more parts,"
			dialog "bring them to me again. Heheheh."
			wait()
			dialog "[Bajin]"
			dialog "Thank for helping me out."
			dialog "You have my eternal gratitude."
			dialog "I wish you luck in your future endeavors!"
			close()
			getitem("Oridecon",3)
			return
		end
	end
	if getvar(alkemi) == 1 then
		dialog "[Bajin]"
		dialog "In case you"
		dialog "forgot, these are the"
		dialog "required materials."
		dialog "Write it down if you need to."
		wait()
		dialog "[Bajin]"
		dialog "^FF00001 Mixture^000000, ^FF00005 Mini-Furnace^000000,"
		dialog "^FF00005 Burnt Treee^000000 , ^FF00005 Coal^000000,"
		dialog "^FF00005 Fine Sand^000000, ^FF00003 Rough Elunium^000000,"
		dialog "^FF00003 Rough Oridecon^000000^000000."
		wait()
		dialog "[Bajin]"
		dialog "In addition to this, you "
		dialog "will need 2,000 zeny."
		dialog "Good Luck..."
		close()
		close()
		return
	end
	if getvar(alkemi) == 0 then
		dialog "[Bajin]"
		dialog "We are going to invent a doll that can can talk and communicate! Well, at least, I'm trying to."
		wait()
		dialog "[Bajin]"
		dialog "I got the idea from a historical legend. I figure that if it's been done before, this project is definitely possible."
		wait()
		dialog "[Bajin]"
		dialog "But right now, I lack the supplies"
		dialog "and parts that I need to attempt"
		dialog "this feat. I don't know how"
		dialog "they gathered all the necessary materials...."
		wait()
		dialog "[Bajin]"
		dialog "Money can only buy some of what I"
		dialog "need. There are also those items"
		dialog "that need to be taken from"
		dialog "monsters that are much too"
		dialog "powerful. How will I continue my research?"
		wait()
		local mresulta = menu("I'll get them for you.","Good luck.")
		if mresulta == 1 then
			setitem("alkemi",1)
			dialog "[Bajin]"
			dialog "Oh, you are too kind."
			dialog "We would be grateful for your assistance."
			dialog "Here are the items that we will be"
			dialog "needing."
			wait()
			dialog "[Bajin]"
			dialog "^FF00001 Mixture^000000, ^FF00005 Mini-Furnace^000000,"
			dialog "^FF00005 Burnt Treee^000000 , ^FF00005 Coal^000000,"
			dialog "^FF00005 Fine Sand^000000, ^FF00003 Rough Elunium^000000,"
			dialog "^FF00003 Rough Oridecon^000000^000000."
			wait()
			dialog "[Bajin]"
			dialog "We will also need 2,000 Zeny."
			dialog "The money will help pay for the"
			dialog "minor expenses in undertaking this endeavor."
			dialog "Godspeed."
			close()
			return
		end
	end
end
