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

npc("airplane","Joshua Vansey",SPRITE_4_F_CHNDOCTOR,248,65,1,0,0,"airplane_Joshua_Vansey_24865")
function airplane_Joshua_Vansey_24865()
	local max_max_c1 = CheckMaxCount(1201,1)
	if (max_max_c1 == 1) then
		dialog "- Stop here !! -"
		dialog "- You are carrying too many items -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
	if (now_weight < 1000) then
		dialog "- Stop here !! -"
		dialog "- The items you are carrying are too heavy -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	if (getvar(Manuscript_Paper) > 99) then
		dialog "[Joshua Vansey]"
		dialog "Oh! Hey! Those papers.."
		dialog "Can they be my lost manuscript?"
		dialog "It is my manuscript! My manuscript!!!"
		dialog "Thank you so much!"
		wait()
		dialog "[Joshua Vansey]"
		dialog "Now the story of Magerazzi and Zindane will break the hearts of the ladies of Schwaltzvalt, I am proud of you.."
		wait()
		----dialog("[","+PcName+"]"")
		--been so long I cannot remember this :D
		dialog "Teacher, I'm sorry to interrupt.. but what kind of novels do you right?"
		wait()
		Emotion("Joshua Vansey","ET_THINK")
		dialog "[Joshua Vansey]"
		dialog "Ah.. yes.. I mainly write sad love stories, or you might say sentimental novels"
		wait()
		dialog "[Joshua Vansey]"
		dialog "a~, anyway I have to thank you.. this is a small gift, because I have not received my manuscript fee yet, hehe,"
		dialog "I have to take these manuscript to the publisher's now fast"
		wait()
		dialog "[Joshua Vansey]"
		dialog "^3131FFIf I receive a good fee, I will thank you again afterwards, ^000000"
		dialog "I hope I don't meet anymore lovely lads on the road after this, hehe"
		wait()
		dialog "[Joshua Vansey]"
		dialog "Ah, if you are interested in sentimental novels, you can go find my assistants in each town of Schwaltzvalt,"
		dialog "They put all their passion into their work, hehe, see you again~"
		dropitem("Manuscript_Paper",100)
		getitem("Cookie_Bag",5)
		SavePPL = Manuscript_Paper
		close()
		return
	else
		dialog "[Joshua Vansey]"
		dialog "Waaaaaaahhh!!!!!"
		dialog "NOOOOOOOOOO!!!!!"
		dialog "Jermin let me go!! My manuscript!!!!"
		dialog "I need to jump off this airship now to retrieve my manuscript!!"
		Emotion("Joshua Vansey","ET_CRY")
		Emotion("assistant_1","ET_PROFUSELY_SWAT")
		wait()
		dialog "[assistant Jermin]"
		dialog "Teacher! Please calm down!!!"
		Emotion("assistant_1","ET_PROFUSELY_SWAT")
		wait()
		local mresulta = menu("May I know what's going on?","Ignore")
		if mresulta == 1 then
			dialog "[Joshua Vansey]"
			dialog "I'll tell you the story,"
			dialog "I became a writer not long ago, recently I planned to write a 'Sapphire series' of novels"
			wait()
			dialog "[Joshua Vansey]"
			dialog "I was quite lucky the readers like what I write, this time I need to write 100 pages for the special edition"
			wait()
			dialog "[Joshua Vansey]"
			dialog "I've just completed the manuscript this morning which took me more than a month"
			wait()
			dialog "[Joshua Vansey]"
			dialog "And I've dropped the precious manuscript out from the airship!! Wuu wuuuu"
			wait()
			dialog "[assistant Jermin]"
			dialog "But that person is really a pretty lad"
			Emotion("assistant_1","ET_THINK")
			wait()
			Emotion("Joshua Vansey","ET_THROB")
			dialog "[Joshua Vansey]"
			dialog "You got it right there Jermin, very pretty, long eyelashes, fair skin, soft hair¡¦"
			dialog "he can become the lead character in my 'Sapphire series' novels"
			wait()
			if (getvar(VAR_SEX) == 1) then
				if ((getvar(VAR_JOB) == ASSASSIN) or (getvar(VAR_JOB) == ASSASSIN_H)) then
					dialog "[Joshua Vansey]"
					dialog "Oooh, you look heroic also,"
					dialog "If you don't mind, could you become a model for my novels? This is my name card... "
					wait()
				else
				end
			else
			end
			--dialog("[","+PcName+"]"")
			dialog "................."
			wait()
			Emotion("Joshua Vansey","ET_HUK")
			dialog "[Joshua Vansey]"
			dialog "Ah! I don't mean that.......wuu wuuu!!"
			dialog "My manuscript! What should I do about the manuscript!? "
			dialog "If it can't get published, the frustration will make me not be able to complete the novel series!"
			wait()
			Emotion("assistant_1","ET_HUK")
			dialog "[assistant Jermin]"
			dialog "You can't do that, Teacher!"
			dialog "You cannot break the hearts of all the youg ladies of Schwaltzvalt who are longing your work!"
			wait()
			dialog "[Joshua Vansey]"
			dialog "aaaaaaaa........."
			wait()
			local mresultb = menu("I will help you find your manuscript","I hope you find your manuscript")
			if mresultb == 1 then
				Emotion("Joshua Vansey","ET_HUK")
				dialog "[Joshua Vansey]"
				dialog "Oh! Oh! Really?"
				dialog "Can you help me?"
				dialog "My ^3131FFmanuscript has 100 pages^000000 is that really ok???"
				wait()
				dialog "[Joshua Vansey]"
				dialog "I will put my assistants in ^3131FFthe villages of Schwaltzvalt^000000,"
				dialog "If you find ^3131FF100 Manuscript Papers and then^000000 hand it to them, I will give you a small gift, you can also give them to me"
				wait()
				--dialog("[","+PcName+"]"")
				dialog "Where do you think the manuscript will fly to?"
				wait()
				dialog "[Joshua Vansey]"
				dialog "Hmm.. they flew off from the airship... ^FF0000Could they be eaten by monsters?^000000 wuu wuuu,"
				dialog "I'm depending on you to find them! For the sake of readers of the Sapphire series!"
				close()
				return
			elseif mresultb == 2 then
				Emotion("Joshua Vansey","ET_CRY")
				dialog "[Joshua Vansey]"
				dialog "wuu wuuu, really.."
				dialog "Jermin, thank you for everything for all this time,"
				dialog "I will go in search of the manuscripts now, I will be jumping off, please help me take care of my cat when I'm not around"
				wait()
				Emotion("assistant_1","ET_HUK")
				dialog "[assistant Jermin]"
				dialog "Wahh-! Teacher NOOO!!"
				close()
				return
			end
		elseif mresulta == 2 then
			Emotion("Joshua Vansey","ET_CRY")
			dialog "[Joshua Vansey]"
			dialog "Don't stop me Jermin!!"
			dialog "That manuscript is my masterpiece!!!"
			wait()
			Emotion("assistant_1","ET_CRY")
			dialog "[assistant Jermin]"
			dialog "Don't do something stupid!!"
			close()
			return
		end
	end
end

npc("airplane","assistant_1",SPRITE_4_F_HUWOMAN,248,64,1,0,0,"airplane_assistant_1_24864")
function airplane_assistant_1_24864()
	local max_max_c1 = CheckMaxCount(1201,1)
	if (max_max_c1 == 1) then
		dialog "- Stop here !! -"
		dialog "- You are carrying too many items -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
	if (now_weight < 1000) then
		dialog "- Stop here !! -"
		dialog "- The items you are carrying are too heavy -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	if (getvar(Manuscript_Paper) > 99) then
		dialog "[Joshua Vansey]"
		dialog "Oh! Hey! Those papers.."
		dialog "Can they be my lost manuscript?"
		dialog "It is my manuscript! My manuscript!!!"
		dialog "Thank you so much!"
		wait()
		dialog "[Joshua Vansey]"
		dialog "Now the story of Danni and Clove will break the hearts of the ladies of Schwaltzvalt, I am proud of you.."
		wait()
		--dialog("[","+PcName+"]"")
		dialog "Teacher, I'm sorry to interrupt.. but what kind of novels do you right?"
		wait()
		Emotion("Joshua Vansey","ET_THINK")
		dialog "[Joshua Vansey]"
		dialog "Ah.. yes.. I mainly write sad love stories, or you might say sentimental novels, hehe.."
		wait()
		dialog "[Joshua Vansey]"
		dialog "a~, anyway I have to thank you.. this is a small gift, because I have not received my manuscript fee yet, hehe,"
		dialog "I have to take these manuscript to the publisher's now fast"
		wait()
		dialog "[Joshua Vansey]"
		dialog "^3131FFIf I receive a good fee, I will thank you again afterwards, ^000000"
		dialog "I hope I don't meet anymore lovely lads on the road after this, hehe"
		wait()
		dialog "[Joshua Vansey]"
		dialog "Ah, if you are interested in sentimental novels, you can go find my assistants in each town of Schwaltzvalt,"
		dialog "They put all their passion into their work, hehe, see you again~"
		dropitem("Manuscript_Paper",100)
		getitem("Cookie_Bag",5)
		SavePPL =  Manuscript_Paper
		close()
		return
	else
		dialog "[Joshua Vansey]"
		dialog "Waaaaaaahhh!!!!!"
		dialog "NOOOOOOOOOO!!!!!"
		dialog "Jermin let me go!! My manuscript!!!!"
		dialog "I need to jump off this airship now to retrieve my manuscript!!"
		Emotion("Joshua Vansey","ET_CRY")
		Emotion("assistant_1","ET_PROFUSELY_SWAT")
		wait()
		dialog "[assistant Jermin]"
		dialog "Teacher! Please calm down!!!"
		Emotion("assistant_1","ET_PROFUSELY_SWAT")
		wait()
		local mresulta = menu("May I know what's going on?","Ignore")
		if mresulta == 1 then
			dialog "[Joshua Vansey]"
			dialog "I'll tell you the story,"
			dialog "I became a writer not long ago, recently I planned to write a 'Sapphire series' of novels"
			wait()
			dialog "[Joshua Vansey]"
			dialog "I was quite lucky the readers like what I write, this time I need to write 100 pages for the special edition"
			wait()
			dialog "[Joshua Vansey]"
			dialog "I've just completed the manuscript this morning which took me more than a month"
			wait()
			dialog "[Joshua Vansey]"
			dialog "And I've dropped the precious manuscript out from the airship!! Wuu wuuuu"
			wait()
			dialog "[assistant Jermin]"
			dialog "But that person is really a pretty lad"
			Emotion("assistant_1","ET_THINK")
			wait()
			Emotion("Joshua Vansey","ET_THROB")
			dialog "[Joshua Vansey]"
			dialog "You got it right there Jermin, very pretty, long eyelashes, fair skin, soft hair¡¦"
			dialog "he can become the lead character in my 'Sapphire series' novels"
			wait()
			--dialog("[","+PcName+"]"")
			dialog "................."
			wait()
			Emotion("Joshua Vansey","ET_HUK")
			dialog "[Joshua Vansey]"
			dialog "Ah! I don't mean that.......wuu wuuu!!"
			dialog "My manuscript! What should I do about the manuscript!?"
			dialog "If it can't get published, the frustration will make me not be able to complete the novel series!"
			wait()
			Emotion("assistant_1","ET_HUK")
			dialog "[assistant Jermin]"
			dialog "You can't do that, Teacher!"
			dialog "You cannot break the hearts of all the youg ladies of Schwaltzvalt who are longing your work!"
			wait()
			dialog "[Joshua Vansey]"
			dialog "aaaaaaaaaaaaaaaa........."
			wait()
			local mresultb = menu("I will help you find your manuscript","I hope you find your manuscript")
			if mresultb == 1 then
				Emotion("Joshua Vansey","ET_HUK")
				dialog "[Joshua Vansey]"
				dialog "Oh! Oh! Really?"
				dialog "Can you help me?"
				dialog "My ^3131FFmanuscript has 100 pages^000000 is that really ok???"
				wait()
				dialog "[Joshua Vansey]"
				dialog "I will put my assistants in ^3131FFthe villages of Schwaltzvalt^000000,"
				dialog "If you find ^3131FF100 Manuscript Papers and then^000000 hand it to them, I will give you a small gift, you can also give them to me"
				wait()
				--dialog("[","+PcName+"]"")
				dialog "Where do you think the manuscript will fly to?"
				wait()
				dialog "[Joshua Vansey]"
				dialog "Hmm.. they flew off from the airship... ^FF0000Could they be eaten by monsters?^000000 wuu wuuu,"
				dialog "I'm depending on you to find them! For the sake of readers of the Sapphire series!"
				close()
				return
			elseif mresultb == 2 then
				Emotion("Joshua Vansey","ET_CRY")
				dialog "[Joshua Vansey]"
				dialog "wuu wuuu, really.."
				dialog "Jermin, thank you for everything for all this time,"
				dialog "I will go in search of the manuscripts now, I will be jumping off, please help me take care of my cat when I'm not around"
				wait()
				Emotion("assistant_1","ET_HUK")
				dialog "[assistant Jermin]"
				dialog "Wahh-! Teacher NOOO!!"
				close()
				return
			end
		elseif mresulta == 2 then
			Emotion("Joshua Vansey","ET_CRY")
			dialog "[Joshua Vansey]"
			dialog "Don't stop me Jermin!!"
			dialog "That manuscript is my masterpiece!!!"
			wait()
			Emotion("assistant_1","ET_CRY")
			dialog "[assistant Jermin]"
			dialog "Don't do something stupid!!"
			close()
			return
		end
	end
end

npc("yuno","assistant_2",SPRITE_4_F_HUWOMAN,161,171,3,0,0,"yuno_assistant_2_161171")
function yuno_assistant_2_161171()
	local max_max_c1 = CheckMaxCount(1201,1)
	if (max_max_c1 == 1) then
		dialog "- Stop here !! -"
		dialog "- You are carrying too many items -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT)
	if (now_weight < 1000) then
		dialog "- Stop here !! -"
		dialog "- The items you are carrying are too heavy -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	if (getvar(Manuscript_Paper) > 99) then
		dialog "[disciple Isilote]"
		dialog "Ahh, could that be our teacher, Joshua's manuscript?"
		wait()
		Emotion("assistant_2","ET_CRY")
		dialog "[disciple Isilote]"
		dialog "Teacher it's been found! Teacher's manuscript! Wahh- Thank you so much! Thank you!"
		wait()
		Emotion("assistant_2","ET_BEST")
		dialog "[disciple Isilote]"
		dialog "I know that our teacher's Blue Sapphire novel series will cause a big stir!"
		dialog "When I think of the lady readers who are waiting for the book, I can't help be happy for them"
		wait()
		Emotion("assistant_2","ET_THANKS")
		dialog "[disciple Isilote]"
		dialog "Because of your help we've got the manuscripts to the publisher,"
		dialog "Please take this as a token of our gratitude, when our teacher get's the manuscript fee we'll thank you again, so please introduce the books to your friends!"
		dropitem("Manuscript_Paper",100)
		getitem("Cookie_Bag",5)
		SavePPL =  Manuscript_Paper
		close()
		return
	else
		dialog "[disciple Isilote]"
		dialog "Have you seen some manuscripts?"
		wait()
		dialog "[disciple Isilote]"
		dialog "Our teacher took very long to finish writing the manuscript but they're lost now!!"
		dialog "If you can find ^3131FF100 pages of the manuscript^000000, I will give you ^3131FFCookie Bag x5^000000, please help me!"
		wait()
		local mresulta = menu("Leave it to me !","Find out the manuscript's contents")
		if mresulta == 1 then
			dialog "[disciple Isilote]"
			dialog "Wuu wuuu!! I feel much better with your help!"
			dialog "Our teacher dropped the manuscripts from an airship, no one know's where they are right now, maybe monsters ate them"
			close()
			return
		elseif mresulta == 2 then
			dialog "[disciple Isilote]"
			dialog "Hmmm...."
			wait()
			dialog "[disciple Isilote]"
			dialog "Our teacher is a love novel author, he is famous for the Blue Sapphire series,"
			dialog "because they are love stories, most of the readers are female"
			wait()
			dialog "[disciple Isilote]"
			dialog "What do you think of the novels in the Sapphire series?"
			wait()
			local mresultb = menu("Not interested","I'm also a huge fan!")
			if mresultb == 1 then
				dialog "[disciple Isilote]"
				dialog "Everyone has different tastes,"
				dialog "I didn't like these type of books also before readings my teacher's books"
				close()
				return
			elseif mresultb == 2 then
				Emotion("assistant_2","ET_SURPRISE")
				dialog "[disciple Isilote]"
				dialog "Ahh! Really?"
				dialog "That's great, I'm also a great fan of my teacher's books"
				wait()
				Emotion("assistant_2","ET_BEST")
				dialog "[disciple Isilote]"
				dialog "Especially the book '^3131FFSmall Cute Eyes^000000'!!!"
				dialog "What a wonderful story.."
				wait()
				Emotion("assistant_2","ET_SURPRISE")
				dialog "[disciple Isilote]"
				dialog "Ahh! Right!"
				dialog "Do you want to see this?',"
				dialog "I snapped this beautiful scenery when going through Juno looking for materials for my teacher's book"
				wait()
				showimage("event01.bmp",2)
				Emotion("assistant_2","ET_THROB")
				dialog "[disciple Isilote]"
				dialog "Because I like Assassins better"
				dialog "I was attracted by the loneliness and coolness,"
				dialog "maybe it sparked my inner nature? Hoho"
				wait()
				showimage("event01.bmp",255)
				dialog "[disciple Isilote]"
				dialog "Ah, I seem to have gone off track,"
				dialog "Anyway my teacher has written many wonderful books, the next one will be great too!"
				dialog "If you are a fan of love novels, I hope you can help find my teacher's manuscripts"
				close()
				return
			end
		end
		return
	end
end

npc("lighthalzen","assistant_3",SPRITE_4_F_HUWOMAN,220,204,3,0,0,"lighthalzen_assistant_3_220204")
function lighthalzen_assistant_3_220204()
	local max_max_c1 = CheckMaxCount(1201,1)
	if (max_max_c1 == 1) then
		dialog "- Stop here !! -"
		dialog "- You are carrying too many items -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT) 
	if (now_weight < 1000) then
		dialog "- Stop here !! -"
		dialog "- The items you are carrying are too heavy -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	if (getvar(Manuscript_Paper) > 99) then
		dialog "[disciple Hynowa]"
		dialog "Ahh, could that be our teacher, Joshua's manuscript?"
		wait()
		Emotion("assistant_3","ET_CRY")
		dialog "[disciple Hynowa]"
		dialog "Teacher it's been found! Teacher's manuscript! Wahh- Thank you so much! Thank you!"
		wait()
		Emotion("assistant_3","ET_BEST")
		dialog "[disciple Hynowa]"
		dialog "I know that our teacher's Blue Sapphire novel series will cause a big stir!"
		dialog "When I think of the lady readers who are waiting for the book, I can't help be happy for them"
		wait()
		Emotion("assistant_3","ET_THANKS")
		dialog "[disciple Hynowa]"
		dialog "Because of your help we've got the manuscripts to the publisher,"
		dialog "Please take this as a token of our gratitude, when our teacher get's the manuscript fee we'll thank you again, so please introduce the books to your friends!"
		dropitem("Manuscript_Paper",100)
		getitem("Cookie_Bag",5)
		SavePPL =  Manuscript_Paper
		close()
		return
	else
		dialog "[disciple Hynowa]"
		dialog "Have you seen some manuscripts?"
		wait()
		dialog "[disciple Hynowa]"
		dialog "Our teacher took very long to finish writing the manuscript but they're lost now!!"
		dialog "If you can find ^3131FF100 pages of the manuscript^000000, I will give you ^3131FFCookie Bag x5^000000, please help me!"
		wait()
		local mresulta = menu("Leave it to me !","Find out the manuscript's contents")
		if mresulta == 1 then
			dialog "[disciple Hynowa]"
			dialog "Wuu wuuu!! I feel much better with your help!"
			dialog "Our teacher dropped the manuscripts from an airship, no one know's where they are right now, maybe monsters ate them"
			close()
			return
		elseif mresulta == 2 then
			dialog "[disciple Hynowa]"
			dialog "Hmmm...."
			wait()
			dialog "[disciple Hynowa]"
			dialog "Our teacher is a love novel author, he is famous for the Blue Sapphire series,"
			dialog "because they are love stories, most of the readers are female"
			wait()
			dialog "[disciple Hynowa]"
			dialog "What do you think of the novels in the Sapphire series?"
			wait()
			local mresultb = menu("Not interested","I'm also a huge fan!")
			if mresultb == 1 then
				dialog "[disciple Hynowa]"
				dialog "Everyone has different tastes,"
				dialog "I didn't like these type of books also before readings my teacher's books"
				close()
				return
			elseif mresultb == 2 then
				Emotion("assistant_3","ET_SURPRISE")
				dialog "[disciple Hynowa]"
				dialog "Ahh! Really?"
				dialog "That's great, I'm also a great fan of my teacher's books!"
				wait()
				Emotion("assistant_3","ET_BEST")
				dialog "[disciple Hynowa]"
				dialog "Especially the book '^3131FFTrue Romantic History^000000'!!!"
				dialog "What a wonderful book.."
				wait()
				Emotion("assistant_3","ET_SURPRISE")
				dialog "[disciple Hynowa]"
				dialog "Ahh! Right!"
				dialog "Do you want to see this?"
				dialog "I snapped this beautiful scenery when going through Lighthalzen looking for materials for my teacher's book"
				wait()
				showimage("event02.bmp",2)
				Emotion("assistant_3","ET_THROB")
				dialog "[disciple Hynowa]"
				dialog "What do you think?"
				dialog "Hohoho.. what a beautiful knight,"
				dialog "I wish to be protected by the manly arms Wahh~"
				wait()
				showimage("event01.bmp",255)
				dialog "[disciple Hynowa]"
				dialog "Ah, I seem to have gone off track,"
				dialog "Anyway my teacher has written many wonderful books, the next one will be great too!"
				dialog "If you are a fan of love novels, I hope you can help find my teacher's manuscripts"
				close()
				return
			end
		end
		return
	end
end

npc("einbroch","assistant_4",SPRITE_4_F_HUWOMAN,238,205,3,0,0,"einbroch_assistant_4_238205")
function einbroch_assistant_4_238205()
	local max_max_c1 = CheckMaxCount(1201,1)
	if (max_max_c1 == 1) then
		dialog "- Stop here !! -"
		dialog "- You are carrying too many items -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT) 
	if (now_weight < 1000) then
		dialog "- Stop here !! -"
		dialog "- The items you are carrying are too heavy -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	if (getvar(Manuscript_Paper) > 99) then
		dialog "[disciple Ino]"
		dialog "Ahh, could that be our teacher, Joshua's manuscript?"
		wait()
		Emotion("assistant_4","ET_CRY")
		dialog "[disciple Ino]"
		dialog "Teacher it's been found! Teacher's manuscript! Wahh- Thank you so much! Thank you!"
		wait()
		Emotion("assistant_4","ET_BEST")
		dialog "[disciple Ino]"
		dialog "I know that our teacher's Blue Sapphire novel series will cause a big stir!"
		dialog "When I think of the lady readers who are waiting for the book, I can't help be happy for them"
		wait()
		Emotion("assistant_4","ET_THANKS")
		dialog "[disciple Ino]"
		dialog "Because of your help we've got the manuscripts to the publisher,"
		dialog "Please take this as a token of our gratitude, when our teacher get's the manuscript fee we'll thank you again, so please introduce the books to your friends!"
		dropitem("Manuscript_Paper",100)
		getitem("Cookie_Bag",5)
		SavePPL =  Manuscript_Paper
		close()
		return
	else
		dialog "[disciple Ino]"
		dialog "Have you seen some manuscripts?"
		wait()
		dialog "[disciple Ino]"
		dialog "Our teacher took very long to finish writing the manuscript but they're lost now!!"
		dialog "If you can find ^3131FF100 pages of the manuscript^000000, I will give you ^3131FFCookie Bag x5^000000, please help me!"
		wait()
		local mresulta = menu("Leave it to me !","Find out the manuscript's contents")
		if mresulta == 1 then
			dialog "[disciple Ino]"
			dialog "Wuu wuuu!! I feel much better with your help!"
			dialog "Our teacher dropped the manuscripts from an airship, no one know's where they are right now, maybe monsters ate them"
			close()
			return
		elseif mresulta == 2 then
			dialog "[disciple Ino]"
			dialog "Hmmm...."
			wait()
			dialog "[disciple Ino]"
			dialog "Our teacher is a love novel author, he is famous for the Blue Sapphire series,"
			dialog "because they are love stories, most of the readers are female"
			wait()
			dialog "[disciple Ino]"
			dialog "What do you think of the novels in the Sapphire series?"
			wait()
			local mresultb = menu("Not interested","I'm also a huge fan!")
			if mresultb == 1 then
				dialog "[disciple Ino]"
				dialog "Everyone has different tastes,"
				dialog "I didn't like these type of books also before readings my teacher's books"
				close()
				return
			elseif mresultb == 2 then
				Emotion("assistant_4","ET_SURPRISE")
				dialog "[disciple Ino]"
				dialog "Ahh! Really?"
				dialog "That's great, I'm also a great fan of my teacher's books!"
				wait()
				Emotion("assistant_4","ET_BEST")
				dialog "[disciple Ino]"
				dialog "Especially the book '^3131FFZeny Prince^000000'!!!"
				dialog "What a wonderful book.."
				wait()
				Emotion("assistant_4","ET_SURPRISE")
				dialog "[disciple Ino]"
				dialog "Ahh! Right!"
				dialog "Do you want to see this',"
				dialog "I took this beautiful scenery when going through Einbech looking for materials for my teacher's book"
				wait()
				showimage("event04.bmp",2)
				Emotion("assistant_4","ET_THROB")
				dialog "[disciple Ino]"
				dialog "Even though they have to work under terrible conditions wearing gas masks, the Schwaltzvaltsoldier always have a ready smile for you,"
				dialog "If I can stay forever with him... haha~"
				wait()
				showimage("event01.bmp",255)
				dialog "[disciple Ino]"
				dialog "Ah, I seem to have gone off track,"
				dialog "Anyway my teacher has written many wonderful books, the next one will be great too!"
				dialog "If you are a fan of love novels, I hope you can help find my teacher's manuscripts"
				close()
				return
			end
		end
		return
	end
end

npc("hugel","assistant_5",SPRITE_4_F_HUWOMAN,90,151,5,0,0,"hugel_assistant_5_90151")
function hugel_assistant_5_90151()
	local max_max_c1 = CheckMaxCount(1201,1)
	if (max_max_c1 == 1) then
		dialog "- Stop here !! -"
		dialog "- You are carrying too many items -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	local now_weight = getvar(VAR_MAXWEIGHT) - getvar(VAR_WEIGHT) 
	if (now_weight < 1000) then
		dialog "- Stop here !! -"
		dialog "- The items you are carrying are too heavy -"
		dialog "- so you can't receive any more items -"
		dialog "- please take off some items -"
		dialog "- and come for the challenge again-"
		close()
		return
	end
	if (getvar(Manuscript_Paper) > 99) then
		dialog "[disciple Sorica]"
		dialog "Ahh, could that be our teacher, Joshua's manuscript?"
		wait()
		Emotion("assistant_5","ET_CRY")
		dialog "[disciple Sorica]"
		dialog "Teacher it's been found! Teacher's manuscript! Wahh- Thank you so much! Thank you!"
		wait()
		Emotion("assistant_5","ET_BEST")
		dialog "[disciple Sorica]"
		dialog "I know that our teacher's Blue Sapphire novel series will cause a big stir!"
		dialog "When I think of the lady readers who are waiting for the book, I can't help be happy for them"
		wait()
		Emotion("assistant_5","ET_THANKS")
		dialog "[disciple Sorica]"
		dialog "Because of your help we've got the manuscripts to the publisher,"
		dialog "Please take this as a token of our gratitude, when our teacher get's the manuscript fee we'll thank you again, so please introduce the books to your friends!"
		dropitem("Manuscript_Paper",100)
		getitem("Cookie_Bag",5)
		SavePPL =  Manuscript_Paper
		close()
		return
	else
		dialog "[disciple Sorica]"
		dialog "Have you seen some manuscripts?"
		wait()
		dialog "[disciple Sorica]"
		dialog "Our teacher took very long to finish writing the manuscript but they're lost now!!"
		dialog "If you can find ^3131FF100 pages of the manuscript^000000, I will give you ^3131FFCookie Bag x5^000000, please help me!"
		wait()
		local mresulta = menu("Leave it to me !","Find out the manuscript's contents")
		if mresulta == 1 then
			dialog "[disciple Sorica]"
			dialog "Wuu wuuu!! I feel much better with your help!"
			dialog "Our teacher dropped the manuscripts from an airship, no one know's where they are right now, maybe monsters ate them"
			close()
			return
		elseif mresulta == 2 then
			dialog "[disciple Sorica]"
			dialog "Hmmm...."
			wait()
			dialog "[disciple Sorica]"
			dialog "Our teacher is a love novel author, he is famous for the Blue Sapphire series,"
			dialog "because they are love stories, most of the readers are female"
			wait()
			dialog "[disciple Sorica]"
			dialog "What do you think of the novels in the Sapphire series?"
			wait()
			local mresultb = menu("Not interested","I'm also a huge fan!")
			if mresultb == 1 then
				dialog "[disciple Sorica]"
				dialog "Everyone has different tastes,"
				dialog "I didn't like these type of books also before readings my teacher's books"
				close()
				return
			elseif mresultb == 2 then
				Emotion("assistant_5","ET_SURPRISE")
				dialog "[disciple Sorica]"
				dialog "Ahh! Really?"
				dialog "That's great, I'm also a great fan of my teacher's books!"
				wait()
				Emotion("assistant_5","ET_BEST")
				dialog "[disciple Sorica]"
				dialog "Especially the book '^3131FFEndless Love^000000'!!!"
				dialog "She took care of the man who has lost his memories for three years.."
				wait()
				Emotion("assistant_5","ET_SURPRISE")
				dialog "[disciple Sorica]"
				dialog "Ahh! Right!"
				dialog "Do you want to see this,"
				dialog " took this beautiful scenery when going through hugel looking for materials for my teacher's book"
				wait()
				showimage("event03.bmp",2)
				Emotion("assistant_5","ET_THROB")
				dialog "[disciple Sorica]"
				dialog "'Even if he ignores the sky and stars, I will be the sparrow that protects you, '"
				dialog ".. hohohoho,"
				dialog "that's a true Assassin, women will die for him"
				wait()
				showimage("event04.bmp",255)
				dialog "[disciple Sorica]"
				dialog "Ah, I seem to have gone off track,"
				dialog "Anyway my teacher has written many wonderful books, the next one will be great too!"
				dialog "If you are a fan of love novels, I hope you can help find my teacher's manuscripts"
				close()
				return
			end
		end
		return
	end
end
