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

npc("nif_in","Deviruchi",spr_4_DEVIRUCHI,190,112,5,0,0,"nif_in_Deviruchi_190112")
function nif_in_Deviruchi_190112()
	if getvar("wedding_sign") == 0 then
		dialog "[Deviruchi]"
		dialog "Heh heh..."
		dialog "Look at that depressed face."
		dialog "You must be feeling very lonely."
		dialog "But that's something everyone"
		dialog "has to deal with."
		wait()
		dialog "[Deviruchi]"
		dialog "If you feel that lonely,"
		dialog "how about raising a Pet?"
		dialog "I hear that my kind is very"
		dialog "popular nowadays, heh heh~"
		close()
	elseif (GetVar(VAR_ISMARRIED)) == 0 then
		dialog "[Deviruchi]"
		dialog "Bwah hah hah~!"
		dialog "That look in your eyes~!"
		if (getvar(VAR_SEX) == 0) then
			dialog "They're just filled with the"
			dialog "pain of an old maid--!"
			dialog "Couldn't rope some poor guy"
			dialog "into marriage, huh?"
		else
			dialog "Those are definitely the eyes"
			dialog "of a lonely male bachelor."
			dialog "I'm almost 100 percent sure"
			dialog "you got ditched at the altar."
		end
		wait()
		dialog "[Deviruchi]"
		dialog "HHAHAHAHA~!"
		dialog "Oooooh...Hee hee~"
		dialog "I'd be more sympathetic if,"
		dialog "you know, I weren't a creature"
		dialog "of darkness."
		close()
	else
		dialog "[Deviruchi]"
		dialog "You look awfully depressed..."
		dialog "Lucky for you, I could care"
		dialog "less about happy people..."
		dialog "It's the humans in despair"
		dialog "that I take an interest in."
		dialog "Hahahahahahah~!"
		wait()
		dialog "[Deviruchi]"
		dialog "I sense that you carry a"
		dialog "tiresome burden..."
		dialog "If I'm not wrong, you're"
		if (getvar(VAR_SEX) == 0) then
			dialog "a married woman, aren't you?"
		else
			dialog "a married man, aren't you?"
		end
		wait()
		dialog "[Deviruchi]"
		dialog "Let me ask you one thing."
		dialog "Are you happy to be married?"
		dialog "Forget about responsibilities,"
		dialog "romance and all that other junk"
		dialog "for now."
		wait()
		dialog "[Deviruchi]"
		dialog "I mean, can just one single"
		dialog "person really bring you all that"
		dialog "happiness? I know all about how"
		dialog "special weddings and the magic"
		dialog "of love is supposed to be, but..."
		wait()
		dialog "[Deviruchi]"
		dialog "At the end of the day, you and"
		dialog "your partner fight, and you feel"
		dialog "totally totally miserable."
		if (getvar(VAR_SEX) == 1) then
			dialog "...all because of HER."
		else
			dialog "...all because of HIM."
		end
		wait()
		dialog "[Deviruchi]"
		dialog "Yes, it's your destiny to find me"
		dialog "here. We all make mistakes..."
		dialog "Even if you promised everlasting"
		dialog "love, even if you made a vow..."
		dialog "I can free you from that prison"
		dialog "of matrimony."
		wait()
		dialog "[Deviruchi]"
		dialog "It's simple if you look at"
		dialog "marriage as a contract...a"
		dialog "contract that ends with 'till"
		dialog "death do we part.' Here in"
		dialog "Nifleheim, it's easy to use"
		dialog "that little loophole..."
		wait()
		dialog "[Deviruchi]"
		dialog "*whispers*"
		dialog "^555555It's not like you're breaking^000000"
		if (getvar(VAR_SEX) == 0) then
			dialog "^555555any promises. Hell, your husband"
			dialog "doesn't even have to know"
			dialog "about it... you deserve"
			dialog "real happiness, right?^000000"
		else
			dialog "^555555any promises, and it's not"
			dialog "like your wife will care if she"
			dialog "doesn't know... Don't you"
			dialog "want to be freed from her?^000000"
		end
		wait()
		dialog "[Deviruchi]"
		dialog "You can have a brand new love"
		dialog "with a better person..."
		dialog "Wouldn't that be great...?"
		dialog "I can help you if you want..."
		dialog "I can make all of this happen!"
		wait()
		local mresulta = menu("No thanks, I am happy.","Yes, please do.")
		if mresulta == 1 then
			dialog "[Deviruchi]"
			dialog "Hmpf~! You must still be"
			dialog "fascinated with the silly"
			dialog "notion of eternal love. Well,"
			dialog "if you think you're happy,"
			dialog "then I'll have nothing"
			dialog "to do with you--!"
			close()
			moveto("niflheim",169,162)
		elseif mresulta == 2 then
			dialog "[Deviruchi]"
			dialog "Good, good..."
			dialog "Now all you have to do is give"
			dialog "me what I want in exchange..."
			dialog "Just 2,500,000 zeny and...*cough!*"
			dialog "^666666An eensy piece of your soul.^000000"
			wait()
			dialog "[Deviruchi]"
			dialog "After that, it's the carefree"
			dialog "single's life. All you have to"
			dialog "do is say the word..."
			wait()
			local mresultb = menu("...Give me some time to think.","Any price will do, give me a divorce right now!")
			if mresultb == 1 then
				dialog "[Deviruchi]"
				dialog "I understand. But if you think"
				dialog "about anything, think about"
				if (getvar(VAR_SEX) == 0) then
					dialog "how horrible your husband is,"
					dialog "and what a relief it would"
					dialog "be to be rid of that crumbum~"
				else
					dialog "your wife's nagging, and"
					dialog "how great it would be to"
					dialog "finally free yourself of the"
					dialog "old ball and chain~"
				end
				close()
			elseif mresultb == 2 then
				if getvar(VAR_MONEY) > 2499999 then
					dialog "[Deviruchi]"
					dialog "Excellent choice~"
					dialog "Let's get started right"
					dialog "away! This may take some"
					dialog "time, but it's better than"
					dialog "being hopelessly married"
					dialog "^FF0000for the rest of your life.^000000"
					wait()
					--ShowEffect("divorce","EF_MAGICROD")
					--ShowEffect("EF_DEVIL")
					dropgold(2500000)
					hpdrain(50)
					hpdrain(50)
					spdrain(100)
					divorce()
					dialog "[Deviruchi]"
					dialog "Bwahhahahaha~!"
					dialog "Now you're free~!"
					dialog "Don't you feel so much"
					dialog "better now as a single?"
					dialog "Ah, bachelorhood..."
					close()
				else
					dialog "[Deviruchi]"
					dialog "Hmmm...I did tell you to bring"
					dialog "2,500,000 zeny, right?"
					dialog "No one else in this world can"
					dialog "offer this kind of freedom..."
					dialog "You can't put a price on"
					dialog "peace of mind, can you?"
					close()
				end
			end
		end
	end
end
