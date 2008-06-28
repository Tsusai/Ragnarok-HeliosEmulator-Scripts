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

npc("einbech","Buender Hikeman#ein",SPRITE_4_M_EINOLD,165,105,7,0,0,"einbech_Buender_Hikeman#ein_165105")
function einbech_Buender_Hikeman#ein_165105()
	showimage("ein_hicman.bmp",2)
	if (getvar(ein_main) == 0) then
		dialog "[Buender Hikeman]"
		dialog "..."
		dialog "......"
		wait()
		dialog "[Buender Hikeman]"
		dialog "..."
		dialog "......"
		dialog "......You..."
		Emotion(,"ET_QUESTION")
		wait()
		dialog "[Buender Hikeman]"
		dialog "..."
		dialog "......"
		dialog "......You..."
		dialog "......Stop it..."
		wait()
		dialog "[Buender Hikeman]"
		dialog "..."
		dialog "......"
		dialog "......You..."
		dialog "......Stop it..."
		dialog "...You ^FF0000bastard^000000!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "RaaaaAAAARGHHH!!"
		wait()
		dialog "^3355FFThe old man seems"
		dialog "slightly irked at seeing"
		dialog "you. Unfortunately, his"
		dialog "screaming and rambling"
		dialog "is totally incoherent.^000000"
		wait()
		dialog "[Buender Hikeman]"
		dialog "It ^FF0000IS^000000 you!"
		dialog "You're responsible!"
		dialog "You've taken everything"
		dialog "away from me!!"
		wait()
		local mresulta = menu("'What are you talking about?'","Ignore Him.")
		if mresulta == 1 then
			dialog "[Buender Hikeman]"
			dialog "How dare you..."
			dialog "How dare you treat "
			dialog "after destroying all the"
			dialog "happiness in my life!"
			wait()
			dialog "[Buender Hikeman]"
			dialog "Damn you..."
			dialog "How can you have"
			dialog "the audacity to pretend"
			dialog "as if nothing happened?!"
			dialog "^333333*C-cough Cough...*^000000"
			wait()
		elseif mresulta == 2 then
			dialog "[Buender Hikeman]"
			dialog "W...wait!"
			dialog "I said wait!"
			dialog "^333333*Cough!*^000000"
			close()
			showimage("ein_hicman.bmp",255)
			return
		end
		dialog "[Buender Hikeman]"
		dialog "Are you so evil to"
		dialog "just shallowly forget"
		dialog "what you've done to our"
		dialog "lives? Did you already"
		dialog "forget what you did"
		dialog "here in Einbech?!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "It was such a long"
		dialog "time ago, but I'll never"
		dialog "forget. This town was"
		dialog "small, but full of folk"
		dialog "with warm hearts..."
		wait()
		dialog "[Buender Hikeman]"
		dialog "Me, Khartophe, Anuto,"
		dialog "Maskharundt... All of"
		dialog "us were friends hired"
		dialog "by that big businessman"
		dialog "to dig up ores in the mine."
		wait()
		dialog "[Buender Hikeman]"
		dialog "And then there"
		dialog "was you! All of us"
		dialog "put together made the"
		dialog "greatest mining team!"
		dialog "That was, until, we"
		dialog "discovered ^FF0000it^000000."
		wait()
		dialog "[Buender Hikeman]"
		dialog "Yes..."
		dialog "The mysterious ore"
		dialog "that dazzled with a"
		dialog "magnificent light."
		wait()
		dialog "[Buender Hikeman]"
		dialog "But we should have known"
		dialog "that the ^3131FFUngoliant^000000 would"
		dialog "be around that ore. We"
		dialog "should have realized"
		dialog "the danger..."
		wait()
		dialog "[Buender Hikeman]"
		dialog "We reported our findings"
		dialog "to our employer, and then"
		dialog "the ore just disappeared. He"
		dialog "must have sent it somewhere,"
		dialog "it was none of our business."
		wait()
		dialog "[Buender Hikeman]"
		dialog "Then life was back"
		dialog "to normal for a while."
		dialog "But one day you yelled"
		dialog "to us that you had found"
		dialog "another special, mysterious"
		dialog "ore in the mines."
		wait()
		dialog "[Buender Hikeman]"
		dialog "But when we came"
		dialog "over to check the hole"
		dialog "you dug up, you know"
		dialog "what we found...?!"
		wait()
		local mresulta = menu("Ungoliant?","A mysterious ore, right?","Nothing...?")
		if mresulta == 1 then
			dialog "[Buender Hikeman]"
			dialog "Don't you remember"
			dialog "what happened? What"
			dialog "you did to us at that time?!"
			wait()
		elseif mresulta == 2 then
			dialog "[Buender Hikeman]"
			dialog "Don't you remember"
			dialog "what happened? What"
			dialog "you did to us at that time?!"
			wait()
		elseif mresulta == 3 then
			dialog "[Buender Hikeman]"
			dialog "Yes..."
			dialog "Nothing."
			wait()
		end
		dialog "[Buender Hikeman]"
		dialog "There was nothing"
		dialog "inside the hole!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "Then you pointed to"
		dialog "the wall behind us and"
		dialog "screamed that Ungoliant"
		dialog "was coming! In our panic"
		dialog "we started to dig our way out!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "I remember that the expression on your face seemed so strange. I had thought you looked sad, but now I'm sure you were consumed by greed! We trusted you and you betrayed us! ^FFFFFFspace^000000"
		wait()
		dialog "[Buender Hikeman]"
		dialog "When we finally smashed"
		dialog "down that last wall, everything"
		dialog "starting to fall around us. We"
		dialog "were the only two to survive"
		dialog "that tunnel collapse."
		wait()
		dialog "[Buender Hikeman]"
		dialog "Then I learned..."
		dialog "You planned it all along."
		setitem("ein_main",1)
		close()
		showimage("ein_hicman.bmp",255)
		return
	elseif (getvar(ein_main) == 1) then
		dialog "[Buender Hikeman]"
		dialog "Bastard!"
		dialog "I'm sick of"
		dialog "your lies!"
		wait()
		local mresulta = menu("I'm not who you think!","How did you survive the accident?")
		if mresulta == 1 then
			dialog "[Buender Hikeman]"
			dialog "Ha...!"
			dialog "Do you think"
			dialog "I'd so easily"
			dialog "forget the face"
			dialog "of the person who"
			dialog "shattered my life?!"
			wait()
		elseif mresulta == 2 then
		end
		wait()
		dialog "[Buender Hikeman]"
		dialog "When I came to,"
		dialog "I was lying on my"
		dialog "stomach in the ruins"
		dialog "of that dark tunnel."
		wait()
		dialog "[Buender Hikeman]"
		dialog "And I found..."
		dialog "You know what I found."
		wait()
		dialog "[Buender Hikeman]"
		dialog "^333333*Cough Cough*^000000"
		dialog "The corpses of my friends!"
		dialog "Khartophe, Anuto, Maskharundt!"
		dialog "Great men and my best friends."
		dialog "But where were you?!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "Your body was nowhere"
		dialog "to be found. I searched"
		dialog "the tunnel and finally"
		dialog "climbed outside where"
		dialog "I was found unconscious."
		wait()
		dialog "[Buender Hikeman]"
		dialog "I was so stupid."
		dialog "It was because of"
		dialog "that ore! You killed our"
		dialog "friends and destroyed"
		dialog "my life for that thing!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "And now..."
		dialog "You come out of"
		dialog "hiding and show up."
		dialog "What do you want of"
		dialog "me? What more can"
		dialog "you possibly take away?!"
		wait()
		local mresulta = menu("I'm not who you think I am!","I'd like to apologize.")
		if mresulta == 1 then
			dialog "[Buender Hikeman]"
			dialog "Quit lying!"
			dialog "You've stirred up"
			dialog "my hatred by showing"
			dialog "up again! I've never"
			dialog "forgotten that day!"
			wait()
		elseif mresulta == 2 then
			dialog "[Buender Hikeman]"
			dialog "Ha ha..."
			dialog "Apologize?"
			dialog "The harm is"
			dialog "already done..."
			wait()
		end
		dialog "[Buender Hikeman]"
		dialog "It's too late"
		dialog "for you now. For"
		dialog "the sake of my friends,"
		dialog "I'll have my vengeance!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "Prepare to die!"
		dialog "^3131FFShinokas^000000!!!!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "...!"
		dialog "^333333*Cough! Cough!*^000000"
		dialog "Noooo! N-not now..."
		dialog "^333333*Cough! Cough!*^000000"
		wait()
		dialog("[","+PcName+"]"")
		dialog "..."
		dialog "I better"
		dialog "get away"
		dialog "from him!"
		wait()
		dialog "^3355FFYou ran away from Hikeman"
		dialog "as he collapsed on the ground."
		dialog "It wouldn't be a good idea to"
		dialog "provoke the old man anymore,"
		dialog "intentionally or not.^000000"
		setitem("ein_main",2)
		close()
		showimage("ein_hicman.bmp",255)
		return
	elseif (getvar(ein_main) == 2) then
		dialog "^3355FFIt'd be best"
		dialog "to avoid aggravating"
		dialog "the old man for now.^000000"
		close()
		showimage("ein_hicman.bmp",255)
		return
	elseif (getvar(ein_main) == 10) then
		dialog "^3355FFHikeman is dozing"
		dialog "off in his chair. Judging"
		dialog "from the look of discomfort"
		dialog "on his face, he seems to be"
		dialog "having a nightmare."
		wait()
		dialog("[","+PcName+"]"")
		dialog "Excuse me..."
		wait()
		dialog "[Buender Hikeman]"
		dialog "Huh...?"
		dialog ".........!!"
		dialog "Hahahahaha!"
		dialog "Come back for"
		dialog "your beating,"
		dialog "eh, Shinokas?!"
		wait()
		dialog("[","+PcName+"]"")
		dialog "Look...!"
		dialog "I'm not Shinokas,"
		dialog "okay? How can you"
		dialog "forget what he looks"
		dialog "like or how old he is?"
		dialog "I'm way younger!"
		wait()
		dialog "[Buender Hikeman]"
		dialog "What...?"
		wait()
		dialog "[Buender Hikeman]"
		dialog "................"
		Emotion("Buender Hikeman#ein","ET_SURPRISE")
		wait()
		dialog "[Buender Hikeman]"
		dialog "Uhhhh......"
		wait()
		dialog "[Buender Hikeman]"
		dialog "Huh."
		wait()
		if getvar(VAR_SEX) == 0 then
			dialog("[","+PcName+"]"")
			dialog "And..."
			dialog "I'm a cute girl!"
			dialog "Shinokas is male"
			dialog "and kind of..."
			wait()
			dialog "[Buender Hikeman]"
			dialog "What...?"
			dialog "IMPOSSIBLE!"
			wait()
			dialog("[","+PcName+"]"")
			dialog "..."
			dialog "......"
			wait()
			dialog "[Buender Hikeman]"
			dialog "..."
			dialog "......"
			wait()
		end
		dialog "[Buender Hikeman]"
		dialog "It seems..."
		dialog "I've made a"
		dialog "huge mistake."
		wait()
		dialog "[Buender Hikeman]"
		dialog "Ever since the accident, people have said that I haven't been the same. Maybe they're right."
		wait()
		dialog "[Buender Hikeman]"
		dialog "I keep making the same"
		dialog "mistakes, so maybe they're"
		dialog "right about me getting senile."
		dialog "Did you come just to clear"
		dialog "up this misunderstanding?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "Um..."
		dialog "Actually..."
		wait()
		local mresulta = menu("Tell Hikeman about Shinokas's death.","Don't notify Hikeman.")
		if mresulta == 1 then
			dialog("[","+PcName+"]"")
			dialog "Shinokas died"
			dialog "a while ago in"
			dialog "Einbroch."
			wait()
			dialog "[Buender Hikeman]"
			dialog "Wh-what...?"
			wait()
			dialog("[","+PcName+"]"")
			dialog "Shinokas was killed by"
			dialog "some men. He thinks they"
			dialog "may have been the ones"
			dialog "who hired you guys. In the"
			dialog "end, he was betrayed too..."
			wait()
			dialog "[Buender Hikeman]"
			dialog "I..."
			dialog "I see..."
			wait()
			dialog("[","+PcName+"]"")
			dialog "Shinokas may have"
			dialog "gotten some money,"
			dialog "but he spent the rest"
			dialog "of his life in hiding,"
			dialog "being hunted down."
			wait()
			dialog "[Buender Hikeman]"
			dialog "Nothing's left."
			dialog "I've got nothing"
			dialog "to look foward to."
			dialog "I was living only to"
			dialog "avenge my friends..."
			wait()
			dialog "[Buender Hikeman]"
			dialog "Please..."
			dialog "Just go back to"
			dialog "wherever you came"
			dialog "from. Leave me alone..."
			wait()
			dialog("[","+PcName+"]"")
			dialog "..."
			wait()
			dialog("[","+PcName+"]"")
			dialog "^333333Did Hikeman really want"
			dialog "revenge on Shinokas or did"
			dialog "he want to hear him out since"
			dialog "they used to be close friends?^000000"
			wait()
			dialog("[","+PcName+"]"")
			dialog "^333333If I mention that"
			dialog "what they found was"
			dialog "the Ymir Heart Piece,"
			dialog "Hikeman might end up"
			dialog "getting hunted down, so"
			dialog "I better not say anything.^000000"
			wait()
			dialog("[","+PcName+"]"")
			dialog "^333333Why are those men"
			dialog "so obsessed with that"
			dialog "Ymir Heart Piece? Is it"
			dialog "really worth this kind of"
			dialog "cruelty? Whoever they are,"
			dialog "their intentions can't be good."
			close()
												showimage("ein_hicman.bmp",255)
			setitem("ein_main",11)
			if (getvar(VAR_CLEVEL) < 70) then
				getexp(100000)
				getJexp(80000)
			elseif ((getvar(VAR_CLEVEL) > 69) and (getvar(VAR_CLEVEL) < 80)) then
				getexp(300000)
				getJexp(100000)
			elseif ((getvar(VAR_CLEVEL) > 79) and (getvar(VAR_CLEVEL) < 90)) then
				getexp(500000)
				getJexp(300000)
			elseif ((getvar(VAR_CLEVEL) > 89) and (getvar(VAR_CLEVEL) < 100)) then
				getexp(700000)
				getJexp(500000)
			end
			return
		elseif mresulta == 2 then
			dialog("[","+PcName+"]"")
			dialog "Yeah..."
			dialog "That' right."
			dialog "I wanted to clear up"
			dialog "this misunderstanding"
			dialog "so you could calm down,"
			dialog "even if it's just a little bit."
			wait()
			dialog "[Buender Hikeman]"
			dialog "Well, you don't have"
			dialog "to worry so much about"
			dialog "my stress. I find that the"
			dialog "winds that pass through"
			dialog "this town to be very relaxing."
			wait()
			dialog "[Buender Hikeman]"
			dialog "Each time the wind"
			dialog "blows by, my vision blurs,"
			dialog "my memories haze and all"
			dialog "of my hatred just drifts away."
			wait()
			dialog "[Buender Hikeman]"
			dialog "Without the wind, I'd only"
			dialog "have my hatred towards ^FF0000him^000000."
			dialog "Maybe it's my only reason for"
			dialog "living and maybe I'm lonely,"
			dialog "but it's too late to feel"
			dialog "sorry for myself now."
			close()
			showimage("ein_hicman.bmp",255)
			return
		end
		return
	else
		dialog "^3355FFHikeman is dozing"
		dialog "off in his chair. Judging"
		dialog "from the look of discomfort"
		dialog "on his face, he seems to be"
		dialog "having a nightmare."
		close()
		return
	end
end

npc("ein_in01","Sick Old Man#ein",SPRITE_4_M_DIEMAN,231,163,7,0,0,"ein_in01_Sick_Old_Man#ein_231163")
function ein_in01_Sick_Old_Man#ein_231163()
	if (getvar(ein_main) < 2) then
		dialog "[Sick Old Man]"
		dialog "...!"
		wait()
		dialog "[Sick Old Man]"
		dialog "Awwwk~"
		dialog "It's killing me!"
		dialog "Arrrgh! Awwwrgh!"
		dialog "W-when will my son"
		dialog "come back from"
		dialog "the factory...?!"
		wait()
		dialog "^3355FFYou feel really awkward"
		dialog "just staring at this old"
		dialog "man violently rolling"
		dialog "around in his bed.^000000"
		close()
		return
	elseif (getvar(ein_main) == 2) then
		local einbech
		dialog "[Sick Old Man]"
		dialog "...!"
		wait()
		dialog "[Sick Old Man]"
		dialog "Awwwk~"
		dialog "It's killing me!"
		dialog "Arrrgh! Awwwrgh!"
		dialog "W-when will my son"
		dialog "come back from"
		dialog "the factory...?!"
		wait()
		dialog("[","+PcName+"]"")
		dialog "Shi..."
		dialog "Shinokas?"
		wait()
		dialog "[Sick Old Man]"
		dialog "Huh...?"
		dialog "Noooo! M-my name is"
		dialog "Shinotarous. Y-you've"
		dialog "got the wrong person!"
		wait()
		dialog("[","+PcName+"]"")
		dialog "^333333This has to be the"
		dialog "Shinokas that Hikeman"
		dialog "was talking about in Einbech."
		dialog "Hmmm, but how can I get"
		dialog "him to admit it?^000000"
		wait()
		dialog("[","+PcName+"]"")
		dialog "^333333*Ahem!*^000000"
		dialog "Excuse me..."
		wait()
		while(1) do
			if (einbech > 6) then
				local mresulta = menu("Have you ever heard of ^3131FFHikeman^000000 before?","Weren't you living in ^3131FFEinbech^000000?")
				if mresulta == 1 then
					break
				elseif mresulta == 2 then
					dialog "[Sick Old Man]"
					dialog "Einbech...?"
					dialog "No! I've never"
					dialog "lived there before!"
					wait()
					dialog "^3355FFIt doesn't seem"
					dialog "like this old man"
					dialog "is telling the truth...^000000"
					local einbech = 0
					wait()
				end
			else
				local mresulta = menu("Remember the mine tunnel collapse?","Didn't you used to be a miner?","Have you lived in Einbroch all your life?")
				if mresulta == 1 then
					dialog "[Sick Old Man]"
					dialog "Noooo!"
					dialog "I don't know"
					dialog "what the hell"
					dialog "you're talking"
					dialog "about!"
					local einbech = einbech + 1
					wait()
				elseif mresulta == 2 then
					dialog "[Sick Old Man]"
					dialog "Nooo...!"
					dialog "W-why would you"
					dialog "even ask me that"
					dialog "kind of question?!"
					local einbech = einbech + 1
					wait()
				elseif mresulta == 3 then
					dialog "[Sick Old Man]"
					dialog "Y-yes!"
					dialog "Born and raised"
					dialog "raised here in"
					dialog "Einbe--Einbroch!"
					wait()
					dialog "^3355FFIt doesn't seem"
					dialog "like this old man"
					dialog "is telling the truth...^000000"
					if (einbech > 0) then
						local einbech = 0
					else
					end
					wait()
				end
			end
		end
		dialog("[","+PcName+"]"")
		dialog "Are you sure"
		dialog "that you don't"
		dialog "know anything"
		dialog "about ^3131FFHikeman^000000?"
		wait()
		dialog "[Shinokas]"
		dialog "No...!"
		dialog "I've never met"
		dialog "Buender Hikeman"
		dialog "in my entire li--"
		wait()
		dialog "[Shinokas]"
		dialog "..."
		dialog "......."
		Emotion("Sick Old Man#ein","ET_PROFUSELY_SWAT")
		wait()
		dialog("[","+PcName+"]"")
		dialog "I was right."
		dialog "You're Shinokas!"
		Emotion(,"ET_KIK")
		wait()
		dialog "[Shinokas]"
		dialog "Curses!"
		dialog "I've blown"
		dialog "my cover!"
		dialog "W-wait! How much"
		dialog "do you know?!"
		Emotion("Sick Old Man#ein","ET_HUK")
		wait()
		dialog "[Shinokas]"
		dialog "Did ^3131FFthey^000000 send you?"
		dialog "^333333*Sigh*^000000 I think that this"
		dialog "is it. I'll never be"
		dialog "able to solve the"
		dialog "secret before I die."
		wait()
		dialog "[Shinokas]"
		dialog "Okay."
		dialog "Get on with it."
		dialog "I'm ready now..."
		wait()
		dialog("[","+PcName+"]"")
		dialog "Tell me everything"
		dialog "you know related to"
		dialog "that incident where"
		dialog "the mine tunnel"
		dialog "collapsed around"
		dialog "you and Hikeman."
		wait()
		dialog "[Shinokas]"
		dialog "...?"
		dialog "Errr...."
		dialog "You're not"
		dialog "here to kill me?"
		Emotion("Sick Old Man#ein","ET_QUESTION")
		wait()
		dialog("[","+PcName+"]"")
		dialog "No...!"
		dialog "I'm here to find"
		dialog "out the truth!"
		wait()
		dialog "[Shinokas]"
		dialog "That means..."
		dialog "I still have some time."
		dialog "This must be destiny!"
		dialog "Alright, I'll tell you what"
		dialog "happened. But it's a"
		dialog "long story..."
		setitem("ein_main",3)
		close()
		return
	elseif (getvar(ein_main) == 3) then
		dialog "[Shinokas]"
		dialog "How much do you know"
		dialog "about the accident? No,"
		dialog "wait. Don't answer that."
		dialog "I don't want to hear it."
		wait()
		dialog "[Shinokas]"
		dialog "I admit it. Yes."
		dialog "I stabbed my friends"
		dialog "in the back. It was an"
		dialog "unforgivable sin that will"
		dialog "haunt me until the day I die."
		wait()
		dialog "[Shinokas]"
		dialog "I sold out my friends for"
		dialog "money. I destroyed that"
		dialog "tunnel and killed them. But"
		dialog "I suppose I was tricked as well. ^3131FFThey^000000 never intended to keep their end of our agreement."
		wait()
		dialog "[Shinokas]"
		dialog "After I destroyed the tunnel,"
		dialog "they targeted me and I ended"
		dialog "spending the rest of my life being pursued and running from place to place. What the hell was that ^3131FFore^000000 and why was it so important?"
		wait()
		dialog "[Shinokas]"
		dialog "I need to know more about"
		dialog "that ore if it's worth killing for. That's why I've risked sneaking into Einbroch. Supposedly, an ore similar to the one we found has"
		dialog "been transported here recently."
		wait()
		local mresulta = menu("Did you find it?")
		if mresulta == 1 then
		end
		dialog "[Shinokas]"
		dialog "No, not yet."
		dialog "I've been searching"
		dialog "for that ore every night."
		dialog "During the day, this kind"
		dialog "blacksmith has managed"
		dialog "to hide me from those men."
		wait()
		dialog "[Shinokas]"
		dialog "But I won't be safe"
		dialog "for very long. Look, I'm"
		dialog "no saint, but before I die,"
		dialog "I wanna do this one last"
		dialog "thing and see what's so"
		dialog "great about this ore..."
		wait()
		local mresulta = menu("Wait, who's trying to get you?")
		if mresulta == 1 then
		end
		dialog "[Shinokas]"
		dialog "Who's trying to kill me?"
		dialog "The people who hired me and"
		dialog "my friends to dig up that ore in the first place. We thought they were ordinary businessmen,"
		dialog "but... They're dangerous."
		wait()
		dialog "[Shinokas]"
		dialog "So I told you everything"
		dialog "and now you know that my"
		dialog "days might be numbered."
		dialog "Please do an old man a favor"
		dialog "and search Einbroch for that"
		dialog "strange, mysterious ore."
		wait()
		dialog "[Shinokas]"
		dialog "Now, the first thing I learned"
		dialog "in this town is that the richest family is the Kapellthaines. Only the rich and powerful can possibly be involved in something so big."
		wait()
		dialog "[Shinokas]"
		dialog "Would you search"
		dialog "Kappellthaine Manor"
		dialog "for that ore? It's on the way"
		dialog "to the Airport and it shouldn't be hard to miss. They're the richest people in Einbroch, after all."
		wait()
		dialog "[Shinokas]"
		dialog "I'm too old and weak to leave"
		dialog "this house, and there's the chance that those men will find me. If you can sympathize with my situation, please find out if the Kapellthaine family has any unique ores..."
		setitem("ein_main",4)
		close()
		return
	elseif (getvar(ein_main) == 4) then
		dialog "[Shinokas]"
		dialog "Please..."
		dialog "Find out if the Kapellthaines"
		dialog "are keeping some kind of unique"
		dialog "ore. Their manor is on the road"
		dialog "that leads to the Airport."
		close()
		return
	elseif (getvar(ein_main) == 5) then
		dialog "[Shinokas]"
		dialog "So, did you find"
		dialog "anything from the"
		dialog "Kapellthaines?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "Well, Mr. Kapellthaine"
		dialog "is kind of violent, but"
		dialog "I didn't find anything"
		dialog "really suspicious."
		wait()
		dialog "[Shinokas]"
		dialog "Huh..."
		dialog "I must have"
		dialog "been wrong, then..."
		dialog "Where else could it be?"
		wait()
		dialog "[Shinokas]"
		dialog "Oh, right! The huge"
		dialog "factory in Einbroch!"
		dialog "What could be more"
		dialog "suspicious? There's a ton"
		dialog "of workers, but no one really"
		dialog "knows what they do there..."
		wait()
		dialog "[Shinokas]"
		dialog "If they're so secretive,"
		dialog "it's possible that they're"
		dialog "keeping the ore over there."
		dialog "Please go and search the"
		dialog "Factory for that ore as"
		dialog "soon as you can."
		setitem("ein_main",6)
		close()
		return
	elseif (getvar(ein_main) == 6) then
		if (getvar(ein_factory) > 12) then
			dialog "[Shinokas]"
			dialog "So...?"
			dialog "Did you learn"
			dialog "anything new"
			dialog "in the Factory?"
			wait()
			dialog("[","+PcName+"]"")
			dialog "Well..."
			dialog "There's a lot of"
			dialog "suspicious business"
			dialog "in the factory, but I don't"
			dialog "think any of it is related"
			dialog "to that ore you mentioned."
			wait()
			dialog "[Shinokas]"
			dialog "Damn it..."
			dialog "Then where did"
			dialog "they hide it? Where"
			dialog "do you think that"
			dialog "ore might be?"
			wait()
			local mresulta = menu("Airport","Factory","Train Station","Airship Repairshop","Laboratory")
			if mresulta == 1 then
				dialog "[Shinokas]"
				dialog "No..."
				dialog "The Airport is always"
				dialog "crowded with people."
				dialog "It'd be a bad idea to hide"
				dialog "something so important"
				dialog "in that kind of place."
				close()
				return
			elseif mresulta == 2 then
				dialog "[Shinokas]"
				dialog "Didn't you just"
				dialog "check the factory?"
				dialog "You couldn't find"
				dialog "any clues to the"
				dialog "ore over there..."
				close()
				return
			elseif mresulta == 3 then
				dialog "[Shinokas]"
				dialog "Hmm..."
				dialog "People are always going"
				dialog "in and out of the Train Station. It's not the best place to hide something as important as the ore."
				close()
				return
			elseif mresulta == 4 then
				dialog "[Shinokas]"
				dialog "The Airship? Hm, it does"
				dialog "fly through some mysterious"
				dialog "power... But I already checked"
				dialog "the Airship Repairshop myself."
				dialog "I haven't found any trace of"
				dialog "the ore over there."
				close()
				return
			elseif mresulta == 5 then
				dialog "[Shinokas]"
				dialog "...!"
				dialog "Yes. Yes...!"
				dialog "That could be it!"
				dialog "Why didn't I think"
				dialog "about the Laboratory?"
				dialog "It makes so much sense!"
				wait()
				dialog "[Shinokas]"
				dialog "I have a good feeling"
				dialog "about this. Please sneak"
				dialog "into that Laboratory and"
				dialog "see if you can find the ore!"
				wait()
				dialog "[Shinokas]"
				dialog "Remember..."
				dialog "Not just anybody"
				dialog "can enter that kind"
				dialog "of place. But I'm sure"
				dialog "you'll figure something out."
				setitem("ein_main",7)
				close()
				return
			end
		else
			dialog "[Shinokas]"
			dialog "I'm really in no position"
			dialog "to ask and I'm not trying"
			dialog "to give you a hard time on"
			dialog "purpose, but would you please"
			dialog "check for any traces of the ore"
			dialog "in the Factory once again?"
			close()
			return
		end
	elseif (getvar(ein_main) == 9) then
		dialog("[","+PcName+"]"")
		dialog "Shinokas,"
		dialog "I found something!"
		wait()
		dialog "[Shinokas]"
		dialog "You..."
		dialog "Came... back..."
		dialog "Even... if... it's"
		dialog "already... Too late."
		dialog "^333333*Cough Cough*^000000"
		wait()
		dialog "^3355FFYou help Shinokas"
		dialog "sit up, but find that"
		dialog "your hands have been"
		dialog "stained with his blood.^000000"
		wait()
		dialog("[","+PcName+"]"")
		dialog "Blood...?!"
		dialog "Shinokas!"
		dialog "Who did this to you?"
		dialog "W-we need to call for help!"
		wait()
		dialog "[Shinokas]"
		dialog "No..."
		dialog "It's already"
		dialog "too late for me."
		dialog "I should have died"
		dialog "a long time ago..."
		wait()
		dialog "[Shinokas]"
		dialog "^333333*Cough*^000000"
		dialog "I only regret that"
		dialog "I've never been able"
		dialog "to apologize to my"
		dialog "friends... ^333333*Cough!*^000000"
		wait()
		dialog "[Shinokas]"
		dialog "But did you"
		dialog "find out? D-did"
		dialog "you find out what's"
		dialog "so special about"
		dialog "that ore? W-what"
		dialog "is it... Really?"
		wait()
		dialog("[","+PcName+"]"")
		dialog "It was..."
		wait()
		dlgwritestr()
		local ans1 = inputstr
		local ans2 = "Ymir"
		local temp = StrStr ans1 ans2
		dialog("[","+PcName+"]"")
		dialog "It was"
		dialog("^3131FF","+inputstr+"^000000!"")
		wait()
		if (temp == 1) then
			dialog "[Shinokas]"
			dialog "Y-Ymir...?"
			dialog "The h-heart of Ymir?"
			dialog "The power to control"
			dialog "the world... We really"
			dialog "did find something"
			dialog "great, didn't we?"
			wait()
			dialog "[Shinokas]"
			dialog "I remember..."
			dialog "The first time"
			dialog "we saw it. We..."
			dialog "We were so excited."
			dialog "So amazed and proud..."
			wait()
			dialog "[Shinokas]"
			dialog "But digging up..."
			dialog "Something so great..."
			dialog "Was only possible"
			dialog "with-- ^333333*Cough*^000000 --"
			dialog "M-my buddies..."
			wait()
			dialog "[Shinokas]"
			dialog "^333333*Cough*^000000"
			dialog "It's getting..."
			dialog "Darker... I..."
			dialog "Don't have to"
			dialog "run anymore."
			wait()
		else
			dialog "[Shinokas]"
			dialog "W-wait...!"
			dialog "What did..."
			dialog "I can't underst--"
			dialog "^333333*Cough cough!*^000000"
			wait()
		end
		dialog("[","+PcName+"]"")
		dialog "No...!"
		dialog "Tell me who"
		dialog "did this to you!"
		dialog "Where are they?"
		dialog "Speak to me, please!"
		wait()
		dialog "[Shinokas]"
		dialog "W-wha...?"
		dialog "I told you."
		dialog "Th-they we--"
		wait()
		dialog "[Shinokas]"
		dialog "..."
		dialog "......"
		wait()
		dialog("[","+PcName+"]"")
		dialog "No!"
		dialog "Shinokas!"
		dialog "Why, God?"
		dialog "Why..."
		setitem("ein_main",10)
		close()
		return
	elseif (getvar(ein_main) > 9) then
		dialog "^3355FFShinokas's"
		dialog "body has grown"
		dialog "cold to the touch.^000000"
		close()
		return
	else
		dialog "[Shinokas]"
		dialog "..."
		dialog "......"
		close()
		return
	end
end

npc("ein_in01","Maid#ein",SPRITE_4_F_EINWOMAN,32,133,7,0,0,"ein_in01_Maid#ein_32133")
function ein_in01_Maid#ein_32133()
	if (getvar(ein_main) == 4) then
		dialog "[Maid]"
		dialog "Did you ask me"
		dialog "if I saw some kind"
		dialog "of ore around here?"
		dialog "That's strange..."
		wait()
		dialog "[Maid]"
		dialog "Well, I've been with"
		dialog "this family for a long"
		dialog "time. Let me assure you"
		dialog "that there's no secrets"
		dialog "from me in this household!"
		wait()
		dialog "[Maid]"
		dialog "I'm sorry, but I don't"
		dialog "think we have any ores,"
		dialog "special or otherwise, here"
		dialog "in the manor. What exactly"
		dialog "do you need them for?"
		setitem("ein_main",5)
		close()
		return
	else
		dialog "[Maid]"
		dialog "There's no end"
		dialog "to all these plates"
		dialog "I have to clean...!"
		close()
		return
	end
end

npc("ein_in01","Scientist#ein",SPRITE_4_M_ALCHE_B,254,35,1,0,0,"ein_in01_Scientist#ein_25435")
function ein_in01_Scientist#ein_25435()
	dialog "[Scientist]"
	dialog "^333333*Grumble grumble*^000000"
	wait()
	dialog "[Scientist]"
	dialog "Huh...?"
	dialog "How did you"
	dialog "get in here?"
	wait()
	dialog("[","+PcName+"]"")
	dialog "Oh! Ah...."
	dialog "I'm the new..."
	dialog "Guard. Nice"
	dialog "to meet you."
	wait()
	dialog "[Scientist]"
	dialog "Oh. Yeah."
	dialog "Nice-meet-you."
	dialog ".............."
	dialog "^333333*Grumble grumble*^000000"
	if (getvar(ein_main) == 7) then
		wait()
		local mresulta = menu("What's wrong?","Catch you later.")
		if mresulta == 1 then
			dialog "[Scientist]"
			dialog "What's wrong...?!"
			dialog "Oh, don't get me started!"
			dialog "I'm stuck here doing all the"
			dialog "work while the Lab Department Head goes out every freakin' day!"
			wait()
			dialog "[Scientist]"
			dialog "While I'm slaving"
			dialog "away here, he's in"
			dialog "that Airship, busy"
			dialog "flirting with that"
			dialog "woman. God...!"
			dialog "I'm like, so teed off!"
			setitem("ein_main",8)
		elseif mresulta == 2 then
			dialog "[Scientist]"
			dialog "Right."
			dialog "Yeah."
			dialog "Later, man."
		end
	elseif (getvar(ein_main) == 8) then
		wait()
		dialog "[Scientist]"
		dialog "Man alive!"
		dialog "Would it kill the"
		dialog "Department Head"
		dialog "to come in here and do"
		dialog "some work for a change?!"
		wait()
		dialog "[Scientist]"
		dialog "I mean, come on!"
		dialog "I shouldn't have to"
		dialog "carry his workload!"
		close()
		return
	else
	end
	close()
end

npc("ein_in01","Unknown Stuff#ein",SPRITE_HIDDEN_NPC,266,27,3,0,0,"ein_in01_Unknown_Stuff#ein_26627")
function ein_in01_Unknown_Stuff#ein_26627()
	dialog "^3355FFThere's something"
	dialog "attached to a huge"
	dialog "machine with many cords"
	dialog "and folds of barbed wire.^000000"
	close()
end

npc("einbroch","Laboratory Soldier#ein-1",SPRITE_4_M_EIN_SOLDIER,51,46,5,0,0,"einbroch_Laboratory_Soldier#ein-1_5146")
OnCommand: "on"
	enablenpc "Laboratory Soldier#ein-1"
end
OnCommand: "off"
	disablenpc "Laboratory Soldier#ein-1"
end
function einbroch_Laboratory_Soldier#ein-1_5146()
	dialog "[Laboratory Soldier]"
	dialog "This area"
	dialog "is off limits."
	dialog "Please leave"
	dialog "immediately."
	close()
end

npc("einbroch","Laboratory Soldier#ein-2",SPRITE_4_M_EIN_SOLDIER,51,56,5,0,0,"einbroch_Laboratory_Soldier#ein-2_5156")
OnCommand: "on"
	enablenpc "Laboratory Soldier#ein-2"
end
OnCommand: "off"
	disablenpc "Laboratory Soldier#ein-2"
end
function einbroch_Laboratory_Soldier#ein-2_5156()
	dialog "[Laboratory Soldier]"
	dialog "Yuck...!"
	dialog "There's this"
	dialog "nasty dusty taste"
	dialog "right inside my mouth"
	dialog "that I can't get rid of!"
	wait()
	dialog "[Laboratory Soldier]"
	dialog "^333333*Sigh*^000000"
	dialog "I want to go home."
	dialog "Get some mouthwash."
	dialog "You know. Something."
	close()
end

npc("airplane","Drunken Man#ein",SPRITE_4_M_YURI,31,77,5,0,0,"airplane_Drunken_Man#ein_3177")
function airplane_Drunken_Man#ein_3177()
	if (getvar(ein_main) == 8) then
		dialog "[Drunken Man]"
		dialog "Okay okay..."
		dialog "Daddy's gonna"
		dialog "win some Apples"
		dialog "this time for sure!"
		wait()
		dialog "[Drunken Man]"
		dialog "Let's do it!"
		dialog "^3131FFYmir's Heart^000000 is"
		dialog "on my side! GO!"
		Emotion("Drunken Man#ein","ET_GO")
		wait()
		dialog("[","+PcName+"]"")
		dialog "Huh...?"
		dialog "What did he just say?"
		dialog "It seemed important!"
		wait()
		dialog "^3355FF*Rolling and rumbling*^000000"
		wait()
		Emotion("Kaci#airplane","ET_CHUP")
		dialog "[Kaci]"
		dialog "I have a total of ^FF000011^000000"
		dialog "and you have total ^FF00005^000000."
		dialog "You lose this game. I'm"
		dialog "sorry, but I hope we play"
		dialog "again sometime."
		wait()
		dialog "[Drunken Man]"
		dialog "Waaaaaahhhhhhhhh!"
		dialog "Apples! My apples!"
		dialog "Apples, I need more...!"
		if (getvar(Apple) < 11) then
			close()
			return
		elseif ((getvar(Apple) > 10) and (getvar(Apple) < 100)) then
			wait()
			dialog("[","+PcName+"]"")
			dialog "Do you want"
			dialog "some of mine?"
			wait()
			dialog "[Drunken Man]"
			dialog "What...?"
			dialog "I can't do anything"
			dialog "with so few Apples!"
			dialog "I'm a high roller and"
			dialog "this is a high stakes game!"
			close()
			return
		else
			local apple = getvar(Apple)
			dropitem("Apple","apple")
			wait()
			dialog("[","+PcName+"]"")
			dialog "Do you want"
			dialog "some of mine?"
			wait()
			dialog "[Drunken Man]"
			dialog "Wha--? Yes..."
			dialog "Hell yes! Gimme"
			dialog "some of your Apples!"
			dialog "Yeeeeeeeeeeehaw!"
			dialog "I'm back, baby!"
			wait()
			dialog "[Drunken Man]"
			dialog "Now, to win!"
			dialog "Daddy needs love..."
			dialog "Time to go from"
			dialog "crappy to classy!"
			wait()
			dialog "^3355FF*Rolling and rumbling*^000000"
			wait()
			local jack = math.random(1 10
			if (jack > 7) then
				Emotion("Kaci#airplane","ET_CHUP")
				dialog "[Kaci]"
				dialog "I got a total of ^FF00008^000000,"
				dialog "and you have total ^FF000011^000000."
				dialog "Congratulations, you won!"
				dialog "Let me give you your winnings"
				dialog "and we'll play again some time~"
				wait()
			else
				Emotion("Kaci#airplane","ET_HUK")
				dialog "[Kaci]"
				dialog "Oooh..."
				dialog "I got a total of ^FF000010^000000,"
				dialog "and you have a total of ^FF00007^000000."
				dialog "I'm sorry, but you lose"
				dialog "again. Better luck next time..."
				wait()
				dialog "[Drunken Man]"
				dialog "Waaaaahhhhhhhhhh!"
				dialog "Waaaaaaahhhhhhh!"
				close()
				return
			end
		end
		dialog "[Drunken Man]"
		dialog "Mwahhahahahaha!"
		dialog "Whahahahahahahaha!"
		dialog "That's why they call me"
		dialog "the ''Resurrection Kid!''"
		dialog "I always come back!"
		wait()
		dialog "[Drunken Man]"
		dialog "Oh yes, right!"
		dialog "You...! You lent"
		dialog "me those lucky"
		dialog "Apples. ^333333*Hiccup*^000000"
		wait()
		dialog "[Drunken Man]"
		dialog "I'm Kurshenburg!"
		dialog "Thanks to you, I'm"
		dialog "on a winning streak!"
		dialog "Hahaha! Th-thank you~"
		dialog "^333333*Hic-hic-hiccup!*^000000"
		wait()
		local mresulta = menu("So what was that about Ymir's Heart?","Hehe, you're welcome.")
		if mresulta == 1 then
			dialog "[Drunken Man]"
			dialog "What...?"
			dialog "Ymir's Heart?"
			dialog "How do you know"
			dialog "about that? ^333333*Hiccup*^000000"
			wait()
			dialog("[","+PcName+"]"")
			dialog "Y-you...!"
			dialog "You were just yelling,"
			dialog "''Ymir's Heart is on my"
			dialog "side,'' while you were"
			dialog "gambling with those Apples!"
			wait()
			dialog "[Drunken Man]"
			dialog "What...?!"
			dialog "No way~"
			dialog "Err...? Did I...?"
			wait()
			dialog "[Drunken Man]"
			dialog "Heh heh..."
			dialog "I'm not really"
			dialog "supposed to be talking"
			dialog "about this. As head of"
			dialog "the Laboratory, I'm sworn"
			dialog "to secrecy about Ymir's Heart."
			wait()
			dialog "[Drunken Man]"
			dialog "But what do I care?!"
			dialog "All they want are the"
			dialog "results of my research!"
			dialog "They don't appreciate"
			dialog "my work at all! My title"
			dialog "is completely worthless!"
			wait()
			dialog "[Drunken Man]"
			dialog "You don't know how long I've"
			dialog "been imprisoned in the lab and"
			dialog "that the work conditions just get worse and worse. Screw them! I'll keep getting paid as long as I show them some progress in our project!"
			wait()
			local mresultb = menu("Project?")
			if mresultb == 1 then
			end
			wait()
			dialog "[Drunken Man]"
			dialog "Yeah, we're researching"
			dialog "Ymir's Heart. It was found"
			dialog "a long time ago in ^3131FFEinbech^000000"
			dialog "and it's in our lab now."
			wait()
			dialog "[Drunken Man]"
			dialog "Everyone knows it's supposed"
			dialog "to hold some legendary power,"
			dialog "but even I was surprised to see"
			dialog "what it was capable of. It's both terrible and miraculous, scary"
			dialog "and wondrous..."
			wait()
			dialog "[Drunken Man]"
			dialog "So..."
			dialog "I figure..."
			dialog "It may even"
			dialog "have the power to"
			dialog "win me Dice games!"
			dialog "Bwahaha--^333333*Hiccup!*^000000"
			wait()
			dialog("[","+PcName+"]"")
			dialog "^333333(That thing I saw"
			dialog "hooked up to all those"
			dialog "wires in the Laboratory"
			dialog "must have been a piece"
			dialog "of ^3131FFYmir's Heart^333333. I better"
			dialog "tell Shinokas about this.)^000000"
			setitem("ein_main",9)
			close()
			return
		elseif mresulta == 2 then
			dialog "[Drunken Man]"
			dialog "Hahahaha!"
			dialog "You're great!"
			dialog "And I feel great!"
			dialog "Everything's great!"
			dialog "Bwahahahaahahah!"
			dialog "^333333*Hiccup*^000000"
			close()
			return
		end
		return
	elseif (getvar(ein_main) == 9) then
		dialog "[Drunken Man]"
		dialog "Hahahaha!"
		dialog "You're great!"
		dialog "I feel great!"
		dialog "Everything's great!"
		dialog "Bwahahahaahahah!"
		dialog "^333333*Hiccup*^000000"
		close()
		return
	else
		dialog "[Drunken Man]"
		dialog "Okay okay..."
		dialog "Daddy's gonna"
		dialog "win some Apples"
		dialog "this time for sure!"
		wait()
		dialog "[Drunken Man]"
		dialog "Let's do it!"
		dialog "^3131FFYmir's Heart^000000 is"
		dialog "on my side! GO!"
		Emotion("Drunken Man#ein","ET_GO")
		wait()
		dialog("[","+PcName+"]"")
		dialog "Huh...?"
		dialog "What did he just say?"
		dialog "It seemed important!"
		wait()
		dialog "^3355FF*Rolling and rumbling*^000000"
		wait()
		Emotion("Kaci#airplane","ET_CHUP")
		dialog "[Kaci]"
		dialog "I have a total of ^FF00003^000000"
		dialog "and you have total ^FF00002^000000."
		dialog "You lose this game. I'm"
		dialog "sorry, but I hope we play"
		dialog "again sometime."
		wait()
		dialog "[Drunken Man]"
		dialog "Waaaaaahhhhhhhhh!"
		dialog "Apples! My apples!"
		close()
		return
	end
end

hiddenwarp("ein_in01","ein_in01_#kenka_231170",231,170,2,2)
function ein_in01_#kenka_231170()
	if (getvar(ein_main) > 8) then
		dialog "^3355FFThe open window rattles"
		dialog "as you enter the room and"
		dialog "are welcomed by a sudden"
		dialog "chill. A trail of red footprints"
		dialog "lies near your feet.^000000"
		wait()
		dialog "^3355FFA grey sheet lies"
		dialog "rumpled on the bed,"
		dialog "but you can see dark red"
		dialog "stains in between the folds.^000000"
		close()
		return
	else
	end
end

npc("einbech","Young Man#ein_main",SPRITE_4_M_EINMAN,57,210,3,0,0,"einbech_Young_Man#ein_main_57210")
function einbech_Young_Man#ein_main_57210()
	dialog "[Young Man]"
	dialog "Behind the pub,"
	dialog "you'll see this old man"
	dialog "who's always mumbling"
	dialog "something to himself."
	wait()
	dialog "[Young Man]"
	dialog "Sometimes he seems really"
	dialog "angry, but other times he looks"
	dialog "awfully depressed. He must have"
	dialog "lived through some really horrible experience. I can't help but feel really sorry for the old guy."
	wait()
	dialog "[Young Man]"
	dialog "He says and does"
	dialog "a lot of strange things."
	dialog "It's sad to see someone"
	dialog "that old act that way, but"
	dialog "it makes me wonder what"
	dialog "could have happened to him."
	close()
end
