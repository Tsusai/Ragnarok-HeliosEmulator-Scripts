-- _________________________________________________ --
--/                                                 \--
--| 	    _    _          _   _                     |--
--|	   | |  | |        | | (_)                    |--
--|	   | |__| |   ___  | |  _    ___    ___       |--
--|	   |  __  |  / _ \ | | | |  / _ \  / __|      |--
--|	   | |  | | |  __/ | | | | | (_) | \__ \      |--
--|	   |_|  |_|  \___| |_| |_|  \___/  |___/      |--
--|				                            |--
--|-------------------------------------------------|--
--| 29/12/2007                             	    |--
--|		   -First Version for Helios  [Spre]    |--
--|-------------------------------------------------|--
--| Credits: Gravity                       	    |--
--|		 Yaros                          	    |--
--|-------------------------------------------------|--
--| Notes:                                 	    |--
--|      All item code is commented out             |--
--|      untill the code is in Helios	    	    |--
--\_________________________________________________/--

npc("alberta_in","Louitz",spr_4_M_02,133,55,3,0,0,"alberta_in_Louitz_13355")
function alberta_in_Louitz_13355()
if getvar("molgenstain") == 2 then
	dialog "[Merchant Louitz]"
	dialog "Oh, it's you again."
	dialog "So did you try finding"
	dialog "that nutcase scientist"
	dialog "who lives over in Geffen?"
	wait()
	local mresulta = menu("Talk About Molgenstein","Cancel")
		if mresulta == 1 then
			dialog "[Merchant Louitz]"
			dialog "You know where he lives"
			dialog "but didn't check it out? Hey,"
			dialog "he may be off his rocker, but"
			dialog "I guess most geniuses are"
			dialog "like that. Still, I think it'd be^FFFFFFss^000000 a good idea if you see him."
			wait()
			dialog "[Merchant Louitz]"
			dialog "I mean..."
			dialog "It's only a matter"
			dialog "of time until a smart guy"
			dialog "like that creates something"
			dialog "truly miraculous, right?"
			close()
		elseif mresulta == 2 then
			dialog "[Merchant Louitz]"
			dialog "...Hello?"
			dialog "Hellooo? Hey."
			dialog "Hey! I'm talkin'"
			dialog "to you! Man, I hate"
			dialog "it when you adventurers"
			dialog "just shut up and space out..."
			close()
	end
	return
end

dialog "[Merchant Louitz]"
dialog "Heya."
dialog "What's up?"
wait()
--if getvar(Detrimindexta) > 0 and getvar(Karvodailnirol) > 0 then
	local mresulta = menu("Talk","Talk about the solutions.","Cancel")
		if mresulta == 1 then
			dialog "[Merchant Louitz]"
			dialog "When I was in Geffen"
			dialog "looking for magic items,"
			dialog "I heard rumors of this really"
			dialog "crazy scientist guy. So I got"
			dialog "curious, asked around, and"
			dialog "eventually found this guy."
			wait()
			dialog "[Merchant Louitz]"
			dialog "Boy, oh boy, this guy was"
			dialog "screwy. He didn't even know"
			dialog "I was there the whole time and"
			dialog "just kept mumbling this mumbo"
			dialog "jumbo while working on his"
			dialog "experiments. Words like, um..."
			wait()
			dialog "[Merchant Louitz]"
			dialog "Yeah, he kept mumbling"
			dialog "words like ''Karvodailnirol''"
			dialog "and ''Detrimindexta.'' The"
			dialog "first time I heard it, I thought^FFFFFFddd^000000 it was just crazy talk, you know? ^FFFFFFcobo^000000"
			wait()
			dialog "[Merchant Louitz]"
			dialog "But it turns out,"
			dialog "this Karvodailnirol"
			dialog "and Detrimindexta actually"
			dialog "exist. I think they're special"
			dialog "liquids that don't work quite"
			dialog "like any liquids we're used to."
			close()
		elseif mresulta == 2 then
			setitem("molgenstain",1)
			dialog "[Merchant Louitz]"
			dialog "Hey, this is one of"
			dialog "those solutions that"
			dialog "scientist kept mentioning."
			dialog "You were able to get one"
			dialog "of these? Huh. Now, I have"
			dialog "no idea what to do with them... "
			wait()
			dialog "[Merchant Louitz]"
			dialog "Ah, but that crazy"
			dialog "scientist would know."
			dialog "I don't remember exactly"
			dialog "where he lives, but I know"
			dialog "he's in Geffen and that his"
			dialog "name is ^0000FFMolgenstein^000000."
			wait()
			dialog "[Merchant Louitz]"
			dialog "Hmm... You better"
			dialog "go around Geffen and"
			dialog "around first. I know for"
			dialog "ask around first. I know for"
			dialog "sure that somebody knows"
			dialog "where you can find Molgenstein."
			close()
		elseif mresulta == 3 then
			dialog "[Merchant Louitz]"
			dialog "Um..."
			dialog "Good talking"
			dialog "to you pal. Uh,"
			dialog "see ya 'round. Take"
			dialog "care of yourself, 'kay?"
			close()
	end
	return
end

--if getvar(Karvodailnirol) > 0 then
	local mresulta = menu("Talk","Talk about Karvodailnirol","Cancel")
		if mresulta == 1 then
			dialog "[Merchant Louitz]"
			dialog "When I was in Geffen"
			dialog "looking for magic items,"
			dialog "I heard rumors of this really"
			dialog "crazy scientist guy. So I got"
			dialog "curious, asked around, and"
			dialog "eventually found this guy."
			wait()
			dialog "[Merchant Louitz]"
			dialog "Boy, oh boy, this guy was"
			dialog "screwy. He didn't even know"
			dialog "I was there the whole time and"
			dialog "just kept mumbling this mumbo"
			dialog "jumbo while working on his"
			dialog "experiments. Words like, um..."
			wait()
			dialog "[Merchant Louitz]"
			dialog "Yeah, he kept mumbling"
			dialog "words like ''Karvodailnirol''"
			dialog "and ''Detrimindexta.'' The"
			dialog "first time I heard it, I thought^FFFFFFddd^000000 it was just crazy talk, you know? ^FFFFFFcobo^000000"
			wait()
			dialog "[Merchant Louitz]"
			dialog "But it turns out,"
			dialog "this Karvodailnirol"
			dialog "and Detrimindexta actually"
			dialog "exist. I think they're special"
			dialog "liquids that don't work quite"
			dialog "like any liquids we're used to."
			close()
		elseif mresulta == 2 then
			setitem("molgenstain",1)
			dialog "[Merchant Louitz]"
			dialog "Oh hey, this is that"
			dialog "Karvodailnirol that the"
			dialog "old scientist was talking"
			dialog "about, huh? Of course, only"
			dialog "someone like that guy would"
			dialog "know what to do with it..."
			wait()
			dialog "[Merchant Louitz]"
			dialog "Hey, why don't you go"
			dialog "and ask him about it?"
			dialog "I don't remember exactly"
			dialog "where he lives, but I know"
			dialog "he's in Geffen and that his"
			dialog "name is ^0000FFMolgenstein^000000."
			wait()
			dialog "[Merchant Louitz]"
			dialog "Hmm... You better"
			dialog "go around Geffen and"
			dialog "around first. I know for"
			dialog "ask around first. I know for"
			dialog "sure that somebody knows"
			dialog "where you can find Molgenstein."
			close()
		elseif mresulta == 3 then
			dialog "[Merchant Louitz]"
			dialog "Um..."
			dialog "Good talking"
			dialog "to you pal. Uh,"
			dialog "see ya 'round. Take"
			dialog "care of yourself, kay?"
			close()
	end
	return
--end

--if getvar(Detrimindexta) > 0 then
	--local mresult = menu("Talk","Talk about Detrimindexta","Cancel")
	--	if mresult == 1 then
		--	dialog "[Merchant Louitz]"
		--	dialog "When I was in Geffen"
			--dialog "looking for magic items,"
			--dialog "I heard rumors of this really"
			--dialog "crazy scientist guy. So I got"
			--dialog "curious, asked around, and"
			--dialog "eventually found this guy."
			--wait()
			--dialog "[Merchant Louitz]"
			--dialog "Boy, oh boy, this guy was"
			--dialog "screwy. He didn't even know"
			--dialog "I was there the whole time and"
			--dialog "just kept mumbling this mumbo"
			--dialog "jumbo while working on his"
			--dialog "experiments. Words like, um..."
			--wait()
			--dialog "[Merchant Louitz]"
			--dialog "Yeah, he kept mumbling"
			--dialog "words like ''Karvodailnirol''"
			--dialog "and ''Detrimindexta.'' The"
			--dialog "first time I heard it, I thought^FFFFFFddd^000000 it was just crazy talk, you know? ^FFFFFFcobo^000000"
			--wait()
			--dialog "[Merchant Louitz]"
			--dialog "But it turns out,"
			--dialog "this Karvodailnirol"
			--dialog "and Detrimindexta actually"
			--dialog "exist. I think they're special"
			--dialog "liquids that don't work quite"
			--dialog "like any liquids we're used to."
			--close()
		--elseif mresult == 2 then
			--setitem("molgenstain",1)
			--dialog "[Merchant Louitz]"
			--dialog "Oh hey, this is that"
			--dialog "Detrimindexta that the"
			--dialog "old scientist was talking"
			--dialog "about, huh? Of course, only"
			---dialog "someone like that guy would"
			--dialog "know what to do with it..."
			--wait()
			--dialog "[Merchant Louitz]"
			--dialog "Hey, why don't you go"
			--dialog "and ask him about it?"
			--dialog "I don't remember exactly"
			--dialog "where he lives, but I know"
			--dialog "he's in Geffen and that his"
			--dialog "name is ^0000FFMolgenstein^000000."
			--wait()
			--dialog "[Merchant Louitz]"
			--dialog "Hmm... You better"
			--dialog "go around Geffen and"
			--dialog "around first. I know for"
			---dialog "ask around first. I know for"
			--dialog "sure that somebody knows"
			--dialog "where you can find Molgenstein."
			--close()
		--elseif mresult == 3 then
			--dialog "[Merchant Louitz]"
			--dialog "Um..."
			--dialog "Good talking"
			--dialog "to you pal. Uh,"
			--dialog "see ya 'round. Take"
			--dialog "care of yourself, 'kay?"
			--close()
	--end
	return
end

local mresulta = menu("Talk","Cancel")
	if mresulta == 1 then
		dialog "[Merchant Louitz]"
		dialog "When I was in Geffen"
		dialog "looking for magic items,"
		dialog "I heard rumors of this really"
		dialog "crazy scientist guy. So I got"
		dialog "curious, asked around, and"
		dialog "eventually found this guy."
		wait()
		dialog "[Merchant Louitz]"
		dialog "Boy, oh boy, this guy was"
		dialog "screwy. He didn't even know"
		dialog "I was there the whole time and"
		dialog "just kept mumbling this mumbo"
		dialog "jumbo while working on his"
		dialog "experiments. Words like, um..."
		wait()
		dialog "[Merchant Louitz]"
		dialog "Yeah, he kept mumbling"
		dialog "words like ''Karvodailnirol''"
		dialog "and ''Detrimindexta.'' The"
		dialog "first time I heard it, I thought^FFFFFFddd^000000 it was just crazy talk, you know? ^FFFFFFcobo^000000"
		wait()
		dialog "[Merchant Louitz]"
		dialog "But it turns out,"
		dialog "this Karvodailnirol"
		dialog "and Detrimindexta actually"
		dialog "exist. I think they're special"
		dialog "liquids that don't work quite"
		dialog "like any liquids we're used to."
		close()
	elseif mresulta == 2 then
		dialog "[Merchant Louitz]"
		dialog "Um..."
		dialog "Good talking"
		dialog "to you pal. Uh,"
		dialog "see ya 'round. Take"
		dialog "care of yourself, 'kay?"
		close()
end
end

npc("geffen","Aure Dupon",spr_4_KID01,181,114,3,0,0,"geffen_Aure_Dupon_181114")
function geffen_Aure_Dupon_181114()
if getvar("molgenstain") == 2 then
	dialog "[Aure Dupon]"
	dialog "It seems that our"
	dialog "paths yet cross again."
	dialog "Coincidence? It's more"
	dialog "than that. This is ^0000FFfate^000000."
	wait()
	local mresulta = menu("Talk About Molgenstein","Cancel")
		if mresulta == 1 then
			dialog "[Aure Dupon]"
			dialog "Have you not met"
			dialog "Molgenstein yet? He"
			dialog "lives on the second floor"
			dialog "of the Forge. Although we've"
			dialog "just met, I must warn you not"
			dialog "to get too close to him..."
			close()
		elseif mresulta == 2 then
			dialog "[Aure Dupon]"
			dialog "Go then, and"
			dialog "may the tides of"
			dialog "destiny carry you"
			dialog "to where you must go."
			close()
	end
	return
end

dialog "[Aure Dupon]"
dialog "Time flows gently"
dialog "and subtly, but no"
dialog "force in this world"
dialog "can possibly stop it."
dialog "Mankind is not even a"
dialog "mote in the grand scheme."
wait()
if getvar("molgenstain") > 0 then
	local mresulta = menu("Talk","Ask About Molgenstein","Cancel")
		if mresulta == 1 then
			dialog "[Aure Dupon]"
			dialog "To have goals and focus"
			dialog "is good, but to be obsessive"
			dialog "about one single thing can be"
			dialog "quite destructive. Relax, empty"
			dialog "your mind, and let yourself be"
			dialog "carried by the tides of destiny."
			close()
		elseif mresulta == 2 then
			setitem("molgenstain",2)
			dialog "[Aure Dupon]"
			dialog "Molgenstein...?"
			dialog "The man is obsessed"
			dialog "with conquering the forces"
			dialog "that control our world. But"
			dialog "you seem to be curious about"
			dialog "him for some reason. Hmmm..."
			wait()
			dialog "[Aure Dupon]"
			dialog "It would be best if you"
			dialog "were to see Molgenstein"
			dialog "and judge his character for"
			dialog "yourself. You may find him in"
			dialog "the second floor of the Geffen"
			dialog "Forge. Go: It is your destiny."
			close()
		elseif mresulta == 3 then
			dialog "[Aure Dupon]"
			dialog "Go then, and"
			dialog "may the tides of"
			dialog "destiny carry you"
			dialog "to where you must go."
	end
	return
end

local mresulta = menu("Talk","Cancel")
	if mresulta == 1 then
		dialog "[Aure Dupon]"
		dialog "To have goals and focus"
		dialog "is good, but to be obsessive"
		dialog "about one single thing can be"
		dialog "quite destructive. Relax, empty"
		dialog "your mind, and let yourself be"
		dialog "carried by the tides of destiny."
		close()
	elseif mresulta == 2 then
		dialog "[Aure Dupon]"
		dialog "Go then, and"
		dialog "may the tides of"
		dialog "destiny carry you"
		dialog "to where you must go."
close()
end
end

npc("geffen_in","Molgenstein",spr_2_M_MOLGENSTEIN,141,140,3,0,0,"geffen_in_Molgenstein_141140")
function geffen_in_Molgenstein_141140()
-- 아이템 소지가 100개인가 체크하는 루틴, 상세 대사는 npc별로 수정 예정입니다.
--local max_max_c = CheckMaxCount 1201 1
--if max_max_c == 1 then
dialog "- Wait a minute !! -"
dialog "- Currently you're carrying -"
dialog "- too many items with you. -"
dialog "- Please try again -"
dialog "- after you loose some weight. -"
close()
end
end
-- 체크루틴 종료
if getvar("molgenstain") == 3 then
	dialog "[Chemist Molgenstein]"
	dialog "....."
	dialog "Welcome."
	dialog "Hehehehe...."
	dialog "Heeheeheeheehee...."
	wait()
	local mresulta = menu("Ask about his research","Ask him to make a new solution.","Cancel")
		if mresulta == 1 then
			dialog "[Chemist Molgenstein]"
			dialog "Heeheeheeheee..."
			dialog "You must have heard the rumors about my research. Yes! But since you probably know already, I'll tell you without hiding, I mean, there's nothing to hide."
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "Actually, you can say my research is complete! Nothing's impossible for my genius! Bwahaha, it's just a matter of time!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "Are you still here? Right, you wanted to know about my research. It's actually very simple. I was just trying to invent a super liquid that can melt everything!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "Isn't it interesting? No matter how strong you are, you can't break apart stone or steel, but with my new liquid, you can melt those things, making them soft like puddy!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "It can't melt everything yet, but I did find that you could combine things that you could never mix before with my invention. Heeheeheehee~!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "You can make a whole lot of things that you'd never would have imagined possible! I can make you a lot of new things you never would have imagined using this method... as long as you want it!!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "The endorphins are rushing to my face at least 2.1 times faster than the usual rate! Ah! I'm so excited! I... I just can't hide it!"
			close()
		elseif mresulta == 2 then
			dialog "[Chemist Molgenstein]"
			dialog "So..."
			dialog "You want me to make something totally new, huh? Hehhehheh! I love your sense of scientific adventure!"
			wait()
			local mresultb = menu("Counteragent","Mixture")
				if mresultb == 1 then
					dialog "[Chemist Molgenstein]"
					dialog "Ooh...!"
					dialog "You want to make a Counteragent? Hohohohoho, let's see what we'll need..."
					wait()
					dialog "[Chemist Molgenstein]"
					dialog "Oh, I remember, yes, Alcohol, and um, er, Detrimindexta and an Empty Bottle to put it it all in. Just these three items and 3000 zeny."
					wait()
					dialog "[Chemist Molgenstein]"
					dialog "Bwahahahah!"
					dialog "Oh, I just can't wait to make this! Are you ready to begin?"
					wait()
					local mresultc = menu("Make","Cancel")
						if mresultc == 1 then
							--if (((getvar(Alchol) == 0) or (getvar(Detrimindexta) == 0)) or ((getvar(Empty_Bottle) == 0) or (getvar(VAR_MONEY) < 3000))) then
								dialog "[Chemist Molgenstein]"
								dialog "Heuheuheuheuh.... not enough... not enough.. Haah...Haah... Go..... get the rest of the materials!"
								dialog "We'll postpone the fun until then... Heuheuheuheuheuh."
								close()
								return
							end

							dialog "[Chemist Molgenstein]"
							dialog "Ooooooooh...... heeheeheeheehee...... yes... like that...... yes... more... more........ heeheeheehee."
							dialog ".... Aaah.... ahah... ha....ahahooooooooohoh!"
							wait()
							--if getvar(Alchol) < 1 then
								dialog "[Chemist Molgenstein]"
								dialog "Hohohoho.... not enough... not enough... haah...haah... go..... go get the rest of the materials!!"
								close()
								return
							end
							--if getvar(Detrimindexta) < 1 then
								dialog "[Chemist Molgenstein]"
								dialog "Hohohoho.... not enough... not enough... haah...haah... go..... go get the rest of the materials!!"
								close()
								return
							end

							if getvar(Empty_Bottle) < 1 then
								dialog "[Chemist Molgenstein]"
								dialog "Hohohoho.... not enough... not enough... haah...haah... go..... go get the rest of the materials!!"
								close()
								return
							end

							--dropitem("Alchol",1)
							--dropitem("Detrimindexta",1)
							--dropitem("Empty_Bottle",1)
							--dropgold(3000)
							--getitem("Counteragent",1)
							dialog "[Chemist Molgenstein]"
							dialog "Hee hee hee..."
							dialog "Haaaaah......"
							dialog "Oh? We're done already?!"
							close()
						elseif mresultc == 2 then
							dialog "[Chemist Molgenstein]"
									dialog "Hee hee hee...!"
									dialog "Come back when"
									dialog "you're ready~"
							close()
					end
				elseif mresultb == 2 then
					dialog "[Chemist Molgenstein]"
					dialog "Ooh...!"
					dialog "You want to make a Mixture? Hohohohoho, let's see what we'll need..."
					wait()
					dialog "[Chemist Molgenstein]"
					dialog "Ooh, I remember now, yes, Alcohol, and um, er, Karvodailnirol and an empty bottle to put all of it in. Just these three items and 4000 zeny."
					wait()
					dialog "[Chemist Molgenstein]"
					dialog "Bwahahahah!"
					dialog "Oh, I just can't wait to make this! Are you ready to begin?"
					wait()
					local mresultc = menu("Make","Cancel")
						if mresultc == 1 then
							--if (((getvar(Alchol) == 0) or (getvar(Karvodailnirol) == 0)) or ((getvar(Empty_Bottle) == 0) or (getvar(VAR_MONEY) < 4000))) then
								dialog "[Chemist Molgenstein]"
								dialog "Hohohoho.... not enough... not enough... haah...haah... go..... go get the rest of the materials!!"
								dialog "We'll have to postpone the fun for later... Hehehehe"
								close()
								return
							end

							dialog "[Chemist Molgenstein]"
							dialog "Ooooooooh... heehee...... yes... like that...... yes... more... more........ heeheeheehee"
							dialog ".... Aaah.... ahah... ha....ahah...oooooooooooooooooh!!!...!!!!!!"
							wait()

							--if getvar(Alchol) < 1 then
								dialog "[Chemist Molgenstein]"
								dialog "Hohohoho.... not enough... not enough... haah...haah... go..... go get the rest of the materials!!"
								close()
								return
							end

							--if getvar(Karvodailnirol) < 1 then
								dialog "[Chemist Molgenstein]"
								dialog "Hohohoho.... not enough... not enough... haah...haah... go..... go get the rest of the materials!!"
								close()
								return
							end

							--if getvar(Empty_Bottle) < 1 then
								dialog "[Chemist Molgenstein]"
								dialog "Hohohoho.... not enough... not enough... haah...haah... go..... go get the rest of the materials!!"
								close()
								return
							end

							--dropitem("Alchol",1)
							--dropitem("Karvodailnirol",1)
							--dropitem("Empty_Bottle",1)
							--dropgold(4000)
							--getitem("Mixture",1)
							dialog "[Chemist Molgenstein]"
							dialog "Hee hee hee..."
							dialog "Haaaaah......"
							dialog "Oh? We're done already?!"
							close()
						elseif mresultc == 2 then
							dialog "[Chemist Molgenstein]"
							dialog "[Chemist Molgenstein]"
							dialog "Hee hee hee...!"
							dialog "Come back when"
							dialog "you're ready~"
							dialog "Heh... heuheuheuheh...."
							close()
					end
			end
		elseif mresulta == 3 then
			dialog "[Chemist Molgenstein]"
			dialog "Heehee....heheheheh...."
			close()
	end
	return
end

if getvar("molgenstain") == 2 then
	setitem("molgenstain",3)
	dialog "[Chemist Molgenstein]"
	dialog "Heeheeheehee.... welcome. Hehehehe.... heeheeheeheehee...."
	wait()
	dialog "[Chemist Molgenstein]"
	dialog "Ah...?!"
	dialog "So sorry if I weirded you out. It's just... I haven't seen a living person in soooo long. So, er, what can I do for you??"
	wait()
	local mresulta = menu("Ask about his research.","Cancel.")
		if mresulta == 1 then
			dialog "[Chemist Molgenstein]"
			dialog "Heeheeheeheee..."
			dialog "You must have heard the rumors about my research. Yes! But since you probably know already, I'll tell you without hiding, I mean, there's nothing to hide."
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "Actually, you can say my research is complete! Nothing's impossible for my genius! Bwahaha, it's just a matter of time!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "Are you still here? Right, you wanted to know about my research. It's actually very simple. I was just trying to invent a super liquid that can melt everything!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "Isn't it interesting? No matter how strong you are, you can't break apart stone or steel, but with my new liquid, you can melt those things, making them soft like puddy!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "It can't melt everything yet, but I did find that you could combine things that you could never mix before with my invention."
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "I can make you a lot of new things you never would have imagined using this method... as long as you want it!!"
			wait()
			dialog "[Chemist Molgenstein]"
			dialog "The endorphins are rushing to my face at least 2.1 times faster than the usual rate! Ah! I'm so excited! I... I just can't hide it!"
			close()
	end
	return
end

dialog "[Chemist Molgenstein]"
dialog "Heeheeheehee..."
dialog "You're not here to be a test subject, are you? Probably not though. Not since my little 'accident.' Heeheeheeee~!"
close()
end
