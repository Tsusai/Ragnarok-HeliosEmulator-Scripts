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
-- | 01/05/2007 : Added 1st Version. [Muad_Dib]                  |
-- |-------------------------------------------------------------|
-- | Credits: Gravity                                            |
-- |-------------------------------------------------------------|
-- | Notes:                                                      |
-- |                                                             |
-- |                                                             |
-- \____________________________________________________________/

npc("comodo","Campground Boy",spr_4_M_BIBI,206,310,4,0,0,"comodo_Campground_Boy_206310")
function comodo_Campground_Boy_206310()
	if getvar("comodo_npc") < 4 then
		--choose v[comodo_npc]
		elseif mresult == 0 then
			dialog "[Rochito]"
			dialog "Bread, fruits, vegetables..."
			dialog "Bleh. All that other food is"
			dialog "nothing compared to the "
			dialog "hearty flavor of meat. Yeap,"
			dialog "BBQ camping in Comodo is"
			dialog "heaven to a meat lover like me~"
			wait()
			local mresulta = menu("BBQ Camping...?","Cancel")
			if mresulta == 1 then
				dialog "[Rochito]"
				dialog "Yeah man... You can eat"
				dialog "Komodoru meat all day when"
				dialog "you go BBQ camping. Komodoru"
				dialog "is an animal native to Comodo"
				dialog "and every part of it is delicious. Every. Single. Morsel."
				wait()
				dialog "[Rochito]"
				dialog "What makes this meat even"
				dialog "more delicious is the special"
				dialog "Koserahserah seasoning they"
				dialog "use. That stuff is almost..."
				dialog "addictive. Without it, we"
				dialog "can't start our barbeque!"
				wait()
				dialog "[Rochito]"
				dialog "If we settled on anything"
				dialog "less than the very best BBQ,"
				dialog "then our comrades that died"
				dialog "to help ^FF0000banish that witch^000000 would"
				dialog "surely be ashamed of us!"
				wait()
				dialog "[Rochito]"
				dialog "Say, would you do us a favor?"
				dialog "The Chief of Comodo was going"
				dialog "to bring the Koserahserah and"
				dialog "join us for our barbeque, but"
				dialog "we're guessing he's got to"
				dialog "cancel because of his duties."
				wait()
				dialog "[Rochito]"
				dialog "Let's see, our Chief lives to"
				dialog "the west of these campgrounds."
				dialog "Would you visit him and see"
				dialog "what's taking him so long"
				dialog "to get over here?"
				setitem("comodo_npc",1)
				close()
			elseif mresulta == 2 then
				dialog "[Rochito]"
				dialog "You know, people gather"
				dialog "on these campgrounds in"
				dialog "memory and respect of those"
				dialog "that have fallen in battle"
				dialog "against the witch of Comodo."
				wait()
				dialog "[Rochito]"
				dialog "Long before Comodo was"
				dialog "built inside this huge cave,"
				dialog "this witch used to live in here.^FFFFFF ^000000 A lot of people died trying to"
				dialog "get rid of her, but there're^FFFFFF ^000000 rumors that she's still around..."
				close()
			end
			if mresult == 1 then
				dialog "[Rochito]"
				dialog "Komodoru meat is especially"
				dialog "great when it's seasoned with"
				dialog "Koserahserah. That flavoring"
				dialog "is one of Comodo's claims to"
				dialog "fame! You should try some~"
				wait()
				dialog "[Rochito]"
				dialog "Speaking of which, our Chief"
				dialog "still hasn't come and brought"
				dialog "the Koserahserah! Would you"
				dialog "see what's taking him so long?"
				dialog "His house is located west of"
				dialog "these campgrounds."
				close()
			elseif mresult == 2 then
				dialog "[Rochito]"
				dialog "Oh, hey, you're back."
				dialog "Did you speak to our"
				dialog "Chief? Don't tell me"
				dialog "he had to cancel--we've"
				dialog "been planning this outing"
				dialog "with him for a quite a while..."
				wait()
				dialog "^3355FFYou give Rochito the"
				dialog "Koserahserah seasoning,"
				dialog "and explain why the Chief"
				dialog "cannot attend the barbeque.^000000"
				wait()
				dialog "[Rochito]"
				dialog "Awww, nuts. I guess he's"
				dialog "got responsbilities, but it's"
				dialog "still a little disappointing."
				dialog "He's a buddy, after all. Well,"
				dialog "at least he was kind enough"
				dialog "to send the Koserahserah."
				wait()
				dialog "[Rochito]"
				dialog "It's really too bad that"
				dialog "he can't join us. Ah, I've got"
				dialog "an idea! Would you please bring"
				dialog "this bottle to Tausupa, er, our"
				dialog "Chief? It's Mureuchieligu, a"
				dialog "special vintage wine~"
				wait()
				dialog "^3355FFYou've received a bottle"
				dialog "of Mureuchieligu wine to"
				dialog "deliver to the Comodo Chief.^000000"
				setitem("comodo_npc",3)
				close()
			elseif mresult == 3 then
				dialog "[Rochito]"
				dialog "I know that I should be"
				dialog "delivering that bottle of"
				dialog "wine to the Chief myself,"
				dialog "but I've got to tend to this"
				dialog "barbeque. I hope you "
				dialog "understand..."
				wait()
				dialog "[Rochito]"
				dialog "Anyway, you'd be doing"
				dialog "me a huge favor if you"
				dialog "spoke to the Chief, and gave"
				dialog "him my thanks, along with"
				dialog "that bottle of Mureuchieligu."
				close()
			end
		else
			dialog "[Rochito]"
			dialog "Oh, hey there~"
			dialog "Thanks for helping us"
			dialog "out earlier. I wish the"
			dialog "Chief would join us in our"
			dialog "barbeque, but I understand"
			dialog "that he has to protect Comodo."
			wait()
			dialog "[Rochito]"
			dialog "Hey, you know what?"
			dialog "I can't exactly repay you"
			dialog "with, you know, actual stuff,"
			dialog "but I can give you a hot tip."
			dialog "There's some guy at the local"
			dialog "Pub with some precious info."
			wait()
			dialog "[Rochito]"
			dialog "Yeah, supposedly, this"
			dialog "guy knows more about the"
			dialog "cave that Comodo was built"
			dialog "in... Anyway, I really get the"
			dialog "feeling that it just might"
			dialog "lead to something, you know?"
			close()
		end
	return

npc("comodo","Camping Youth",spr_1_M_YOUNGKNIGHT,204,310,4,0,0,"comodo_Camping_Youth_204310")
function comodo_Camping_Youth_204310()
	if getvar(comodo_npc) < 5 then
		--choose v[comodo_npc]
		elseif mresult_ == 0 then
			dialog "[Rockha]"
			dialog "Oh man..."
			dialog "I'm so excited!"
			dialog "My buddies and I've"
			dialog "been planning to get"
			dialog "together for this barbeque"
			dialog "for such a long time~"
			wait()
			local mresult = menu("Buddies...?","Cancel")
			if mresult == 1 then
				dialog "[Rockha]"
				dialog "Yeah, some of us know"
				dialog "each other when we fought"
				dialog "together in the War of the"
				dialog "Witch. In fact, one of them"
				dialog "is the Chief of this village!"
				dialog "Huh, why isn't he here yet?"
				wait()
				dialog "[Rockha]"
				dialog "Anyway, even though"
				dialog "our stations in life have"
				dialog "changed, thankfully we're"
				dialog "still friends. It's kinda weird, though, being on a first name"
				dialog "basis with a village chief."
				wait()
				dialog "[Rockha]"
				dialog "Makes me feel..."
				dialog "Important. I'm hobnobbing"
				dialog "with a major political figure,"
				dialog "after all. Amazing where your"
				dialog "friends can end up in life..."
				close()
			elseif mresult == 2 then
				dialog "[Rockha]"
				dialog "I've almost forgotten"
				dialog "how much I love hanging"
				dialog "out with these guys. We"
				dialog "should have barbeques"
				dialog "together all the time~"
				close()
			end
		if mresult_ == 1 then
			dialog "[Rockha]"
			dialog "Oh man..."
			dialog "I'm so excited!"
			dialog "My buddies and I've"
			dialog "been planning to get"
			dialog "together for this barbeque"
			dialog "for such a long time~"
			wait()
			local mresult = menu("Buddies...?","Cancel")
			if mresult == 1 then
				dialog "[Rockha]"
				dialog "Yeah, some of us know"
				dialog "each other when we fought"
				dialog "together in the War of the"
				dialog "Witch. In fact, one of them"
				dialog "is the Chief of this village!"
				dialog "Huh, why isn't he here yet?"
				wait()
				dialog "[Rockha]"
				dialog "Anyway, even though"
				dialog "our stations in life have"
				dialog "changed, thankfully we're"
				dialog "still friends. It's kinda weird, though, being on a first name"
				dialog "basis with a village chief."
				wait()
				dialog "[Rockha]"
				dialog "Makes me feel..."
				dialog "Important. I'm hobnobbing"
				dialog "with a major political figure,"
				dialog "after all. Amazing where your"
				dialog "friends can end up in life..."
				close()
			elseif mresult == 2 then
				dialog "[Rockha]"
				dialog "I've almost forgotten"
				dialog "how much I love hanging"
				dialog "out with these guys. We"
				dialog "should have barbeques"
				dialog "together all the time~"
				close()
			end
		elseif mresult_ == 2 then
			dialog "[Rockha]"
			dialog "Wha--? Tausupa can't come,"
			dialog "but he still sent us all of this Koserahserah? What a guy..."
			dialog "I guess... That gives us"
			dialog "a reason to hold another"
			dialog "barbeque here soon, right?"
			close()
		elseif mresult_ == 3 then
			dialog "[Rockha]"
			dialog "Hey, when you deliver"
			dialog "that wine to Tausupa, the"
			dialog "Village Chief, would you let"
			dialog "him know that we miss the guy?"
			dialog "He may be busy, but he'll always^FFFFFF ^000000 be our irreplaceable buddy."
			close()
		elseif mresult_ == 4 then
			dialog "[Rockha]"
			dialog "Oh hey, you spoke"
			dialog "to Tausupa? Ah, it's"
			dialog "too bad that he's busy,"
			dialog "but it's great to hear that"
			dialog "he'll enjoy our gift. Okay~"
			dialog "I believe it's time to eat!"
			wait()
			dialog "[Rockha]"
			dialog "But before that, let's"
			dialog "make a toast... to Tausupa!"
			dialog "Guardian of Comodo, and"
			dialog "one of the best friends that"
			dialog "a guy can have! Cheers!"
			dialog "Hahahaha hahahaha~!"
			setitem("comodo_npc",5)
			wait()
			dialog "[Rockha]"
			dialog "Ahh, you know what would"
			dialog "make this meal perfect?"
			dialog "Some of that legendary"
			dialog "^3355FFComodo Cheese^000000 that I heard"
			dialog "about from ^3355FFToruna^000000. Sure, it"
			dialog "might not exist, but still...!"
			close()
		end
	else
		dialog "[Rockha]"
		dialog "You know, you're a really"
		dialog "chill person. Thanks for"
		dialog "helping us keep in touch"
		dialog "with our old friend, the"
		dialog "Village Chief. Man, being"
		dialog "responsible must be rough..."
		wait()
		dialog "[Rockha]"
		dialog "There's two things that"
		dialog "would make our barbeque"
		dialog "absolutely perfect--having"
		dialog "the Village Chief here, and"
		dialog "some of that legendary Comodo^FFFFFF ^000000 Cheese that ^3355FFToruna^000000 told me about."
		close()
	end
end

npc("comodo","Camping Maiden",spr_1_F_LIBRARYGIRL,209,305,4,0,0,"comodo_Camping_Maiden_209305")
function comodo_Camping_Maiden_209305()
	dialog "[Emralhandas]"
	dialog "Rockha, let me pour"
	dialog "you another drink. We"
	dialog "always dreamed of this"
	dialog "during the War of the Witch..."
	dialog "Having a good time, all of us"
	dialog "together in a time of peace~"
	wait()
	local mresult_ = menu("War of the Witch?","Cancel")
	if mresult_ == 1 then
		dialog "[Emralhandas]"
		dialog "Before I tell you about the"
		dialog "War of the Witch, I guess"
		dialog "I should tell you about the"
		dialog "quest to retrieve 4 rare swords"
		dialog "of power, said to be the most"
		dialog "powerful weapons ever made."
		wait()
		dialog "[Emralhandas]"
		dialog "Now, all 4 swords were"
		dialog "successfully found 10 years"
		dialog "after the search began. Then,"
		dialog "4 protectors were chosen to"
		dialog "ensure that the swords did"
		dialog "not fall into the wrong hands."
		wait()
		dialog "[Emralhandas]"
		dialog "You might not think so just"
		dialog "by looking at us, but we were"
		dialog "the protectors--me, Rockha,"
		dialog "Rochito, and Tausupa, the chief"
		dialog "of this village. Now, we guarded these weapons very carefully..."
		wait()
		dialog "[Emralhandas]"
		dialog "However, that didn't deter"
		dialog "Mariposum, ancient witch of"
		dialog "Comodo, from attacking us and"
		dialog "trying to steal the swords. She"
		dialog "was incredibly powerful, and"
		dialog "we needed an army to fight her."
		wait()
		dialog "[Emralhandas]"
		dialog "That was the War of the"
		dialog "Witch, basically. Mariposum"
		dialog "with her own strange weapon"
		dialog "of mass destruction against the"
		dialog "four of us backed by a large"
		dialog "force of courageous soldiers."
		wait()
		dialog "[Emralhandas]"
		dialog "Many of our comrades died..."
		dialog "But finally we succeeded in"
		dialog "imprisoning the witch by using"
		dialog "the power of the swords. Yeah,"
		dialog "if it weren't for Tausupa, we'd"
		dialog "never have been able to do it."
		close()
	elseif mresult_ == 2 then
		dialog "[Emralhandas]"
		dialog "Rockha, we still have"
		dialog "to finish our mission:"
		dialog "eat all of the barbeque"
		dialog "that that we possibly can!"
		dialog "Let's just stuff ourselves..."
		dialog "All the way until tommorrow!"
		close()
	end
end

npc("comodo","Campground Lad",spr_4_M_KID1,209,314,4,0,0,"comodo_Campground_Lad_209314")
function comodo_Campground_Lad_209314()
	if getvar(comodo_npc) < 4 then
		choose v[comodo_npc]
		elseif mresult^ == 0 then
			dialog "[Rotute]"
			dialog "Years ago, there was a huge"
			dialog "quest to retrieve 4 rare swords"
			dialog "of incredible power, supposedly"
			dialog "the strongest swords ever made!"
			dialog "But you know, there's a strange"
			dialog "rumor about a secret 5th sword."
			wait()
			dialog "[Rotute]"
			dialog "This 5th sword is supposed"
			dialog "to be hidden near Glastheim."
			dialog "If it does exist, it might have"
			dialog "the power to change the world!"
			dialog "Isn't that freakin' scary?"
			close()
		if mresult^ == 1 then
			dialog "[Rotute]"
			dialog "Years ago, there was a huge"
			dialog "quest to retrieve 4 rare swords"
			dialog "of incredible power, supposedly"
			dialog "the strongest swords ever made!"
			dialog "But you know, there's a strange"
			dialog "rumor about a secret 5th sword."
			wait()
			dialog "[Rotute]"
			dialog "This 5th sword is supposed"
			dialog "to be hidden near Glastheim."
			dialog "If it does exist, it might have"
			dialog "the power to change the world!"
			dialog "Isn't that freakin' scary?"
			close()
		elseif mresult^ == 2 then
			dialog "[Rotute]"
			dialog "Hey, isn't that Koserahserah?"
			dialog "That's the best seasoning that"
			dialog "you can have for meat dishes!"
			dialog "Oh, you got that from the Chief"
			dialog "to give to Rochito? Wow, they"
			dialog "must be really good friends..."
			close()
		elseif mresult^ == 3 then
			dialog "[Rotute]"
			dialog "Hey, isn't that Koserahserah?"
			dialog "That's the best seasoning that"
			dialog "you can have for meat dishes!"
			dialog "Oh, you got that from the Chief"
			dialog "to give to Rochito? Wow, they"
			dialog "must be really good friends..."
			close()
		end
	else
		dialog "[Rotute]"
		dialog "Hello, thanks for helping"
		dialog "out Rockha, Rochito and"
		dialog "Emralhandas. They've known"
		dialog "me since I was born, so it's"
		dialog "like they're family to me."
		wait()
		dialog "[Rotute]"
		dialog "One of the reasons that"
		dialog "they brought me here to"
		dialog "Comodo was so that I could"
		dialog "finally meet Tausupa. But..."
		dialog "I guess he's too busy now."
		dialog "Still, I like this place!"
		close()
	end
end

npc("comodo","BBQ Boy",spr_4_M_04,221,310,4,0,0,"comodo_BBQ_Boy_221310")
function comodo_BBQ_Boy_221310()
	dialog "[Rinta]"
	dialog "I didn't mean to,"
	dialog "but I accidentally"
	dialog "eavesdropped on those"
	dialog "people over there. Are"
	dialog "they really old friends"
	dialog "with our Village Chief?"
	wait()
	dialog "[Rinta]"
	dialog "In that case, they must"
	dialog "be getting the special"
	dialog "treatment usually reserved"
	dialog "for visiting dignitaries and"
	dialog "the like. Or something like that. ^FFFFFF ^000000"
	close()
end

npc("comodo","BBQ Visitor",spr_4_F_01,218,309,4,0,0,"comodo_BBQ_Visitor_218309")
function comodo_BBQ_Visitor_218309()
	dialog "[Razy]"
	dialog "Those people over there"
	dialog "are friends of the Village"
	dialog "Chief? I was wondering about"
	dialog "them for the longest time..."
	dialog "I didn't even know our Chief"
	dialog "had friends outside of Comodo."
	wait()
	dialog "[Razy]"
	dialog "You know, they kind of"
	dialog "strike me as old war buddies,"
	dialog "sprinkling their conversations"
	dialog "with words like ''mission'' all"
	dialog "the time. Then, there's those"
	dialog "little scars they all have..."
	close()
end

npc("comodo","BBQ Papa",spr_1_M_04,216,310,4,0,0,"comodo_BBQ_Papa_216310")
function comodo_BBQ_Papa_216310()
	dialog "[BBQ Boy]"
	dialog "D-daddy! Is what those"
	dialog "people talking about true?"
	dialog "Was there really an evil"
	dialog "witch here in our village?"
	wait()
	dialog "[BBQ Mama]"
	dialog "Honey..."
	dialog "I'm sure those"
	dialog "good people were"
	dialog "just kidding around~"
	dialog "How can that be true?"
	wait()
	dialog "[BBQ Papa]"
	dialog "Now, now, don't tell"
	dialog "me my little man is afraid"
	dialog "of something like a little"
	dialog "witch. It's just an old fairy"
	dialog "tale, son: no reason to"
	dialog "feel frightened at all."
	wait()
	dialog "[BBQ Boy]"
	dialog "No, Daddy, I'm not"
	dialog "scared! But if the witch"
	dialog "really lived here, then her"
	dialog "home is somewhere around"
	dialog "here in Comodo, right? I'm"
	dialog "gonna go find it someday!"
	wait()
	dialog "[BBQ Mama]"
	dialog "Oh, but I'm sure our"
	dialog "Chief would already know"
	dialog "something about that witch"
	dialog "if she truly exists. Anyway,"
	dialog "let's hurry and eat before"
	dialog "the barbeque burns, okay?"
	wait()
	dialog "[BBQ Boy]"
	dialog "Yay, barbeque!"
	dialog "Mmmmm... Someday,"
	dialog "if that witch is real,"
	dialog "I'm gonna find out"
	dialog "all about her!"
	close()
end

npc("comodo","BBQ Mama",spr_1_F_MERCHANT_02,215,307,4,0,0,"comodo_BBQ_Mama_215307")
function comodo_BBQ_Mama_215307()
	dialog "[BBQ Boy]"
	dialog "D-daddy! Is what those"
	dialog "people talking about true?"
	dialog "Was there really an evil"
	dialog "witch here in our village?"
	wait()
	dialog "[BBQ Mama]"
	dialog "Honey..."
	dialog "I'm sure those"
	dialog "good people were"
	dialog "just kidding around~"
	dialog "How can that be true?"
	wait()
	dialog "[BBQ Papa]"
	dialog "Now, now, don't tell"
	dialog "me my little man is afraid"
	dialog "of something like a little"
	dialog "witch. It's just an old fairy"
	dialog "tale, son: no reason to"
	dialog "feel frightened at all."
	wait()
	dialog "[BBQ Boy]"
	dialog "No, Daddy, I'm not"
	dialog "scared! But if the witch"
	dialog "really lived here, then her"
	dialog "home is somewhere around"
	dialog "here in Comodo, right? I'm"
	dialog "gonna go find it someday!"
	wait()
	dialog "[BBQ Mama]"
	dialog "Oh, but I'm sure our"
	dialog "Chief would already know"
	dialog "something about that witch"
	dialog "if she truly exists. Anyway,"
	dialog "let's hurry and eat before"
	dialog "the barbeque burns, okay?"
	wait()
	dialog "[BBQ Boy]"
	dialog "Yay, barbeque!"
	dialog "Mmmmm... Someday,"
	dialog "if that witch is real,"
	dialog "I'm gonna find out"
	dialog "all about her!"
	close()
end

npc("comodo","BBQ Boy",spr_4_M_KID1,213,310,4,0,0,"comodo_BBQ_Boy_213310")
function comodo_BBQ_Boy_213310()
	dialog "[BBQ Boy]"
	dialog "D-daddy! Is what those"
	dialog "people talking about true?"
	dialog "Was there really an evil"
	dialog "witch here in our village?"
	wait()
	dialog "[BBQ Mama]"
	dialog "Honey..."
	dialog "I'm sure those"
	dialog "good people were"
	dialog "just kidding around~"
	dialog "How can that be true?"
	wait()
	dialog "[BBQ Papa]"
	dialog "Now, now, don't tell"
	dialog "me my little man is afraid"
	dialog "of something like a little"
	dialog "witch. It's just an old fairy"
	dialog "tale, son: no reason to"
	dialog "feel frightened at all."
	wait()
	dialog "[BBQ Boy]"
	dialog "No, Daddy, I'm not"
	dialog "scared! But if the witch"
	dialog "really lived here, then her"
	dialog "home is somewhere around"
	dialog "here in Comodo, right? I'm"
	dialog "gonna go find it someday!"
	wait()
	dialog "[BBQ Mama]"
	dialog "Oh, but I'm sure our"
	dialog "Chief would already know"
	dialog "something about that witch"
	dialog "if she truly exists. Anyway,"
	dialog "let's hurry and eat before"
	dialog "the barbeque burns, okay?"
	wait()
	dialog "[BBQ Boy]"
	dialog "Yay, barbeque!"
	dialog "Mmmmm... Someday,"
	dialog "if that witch is real,"
	dialog "I'm gonna find out"
	dialog "all about her!"
	close()
end

npc("cmd_in02","Chief",spr_1_M_03,32,140,4,0,0,"cmd_in02_Chief_32140")
function cmd_in02_Chief_32140()
	if getvar(comodo_npc) > 4 then
		dialog "[Tausupa]"
		dialog "Maybe you can't tell because"
		dialog "of the way the light reflects,"
		dialog "but Comodo is actually built"
		dialog "inside a huge cave, giving the"
		dialog "illusion of an eternal night."
		dialog "It's quite beautiful, really..."
		wait()
		dialog "[Tausupa]"
		dialog "People come from all over"
		dialog "the world to experience the"
		dialog "excitement and beauty of"
		dialog "our unique little village."
		dialog "We've become quite"
		dialog "the tourist attraction~"
		close()
	else
		if getvar(comodo_npc) > 2 then
			choose v[comodo_npc]
			elseif mresult] == 3 then
				dialog "[Tausupa]"
				dialog "Oh, how are my friends"
				dialog "doing? I really wish that"
				dialog "I could have delivered that"
				dialog "Koserahserah personally,"
				dialog "but I can't shirk my duties as"
				dialog "Village Chief and protector."
				wait()
				dialog "^3355FFYou give Tausupa the"
				dialog "Meruchieligu wine that"
				dialog "Rochito asked you to deliver.^000000"
				wait()
				dialog "[Tausupa]"
				dialog "Ah... How very kind of"
				dialog "them! They really sent me"
				dialog "this wine? I'm truly touched..."
				dialog "Rockha must have chosen"
				dialog "this--I'll be sure to enjoy it."
				wait()
				dialog "[Tausupa]"
				dialog "Would you please express my"
				dialog "thanks to my friends, ^3355FFRochito^000000,"
				dialog "and ^3355FFRockha^000000? It's been far too"
				dialog "long since I've seen them, but"
				dialog "I hope that I get a chance to"
				dialog "visit them someday soon."
				setitem("comodo_npc",4)
				close()
			elseif mresult] == 4 then
				dialog "[Tausupa]"
				dialog "Would you please express my"
				dialog "thanks to my friends, ^3355FFRochito^000000,"
				dialog "and ^3355FFRockha^000000? It's been far too"
				dialog "long since I've seen them, but"
				dialog "I hope that I get a chance to"
				dialog "visit them someday soon."
				close()
			end
		else
			dialog "[Tausupa]"
			dialog "Greetings, adventurer,"
			dialog "I am Tausupa, the Chief of"
			dialog "Comodo, a city famous for its^FFFFFF ^000000 beauty and nightlife. I hope you"
			dialog "enjoy your stay, whether you are^FFFFFF ^000000 seeking excitement or relaxation~"
			wait()
			local mresult] = menu("About Casino","About Banished Witch","Cancel")
			if mresult] == 1 then
				dialog "[Tausupa]"
				dialog "Ah yes, Comodo is world"
				dialog "famous for its Casino. There"
				dialog "are many games that you can"
				dialog "enjoy, but you'll need to use"
				dialog "the Casino's special Eulwo^FFFFFF ^000000 currency and conversion system..."
				close()
			elseif mresult] == 2 then
				choose v[comodo_npc]
				elseif mresult] == 0 then
					dialog "[Tausupa]"
					dialog "Banished witch...?"
					dialog "Ah ha ha, do not worry,"
					dialog "my friend, that is merely"
					dialog "a very old tale. Not worth"
					dialog "your concern at all..."
					close()
				if mresult] == 1 then
					dialog "[Tausupa]"
					dialog "Ah, judging from the scent"
					dialog "of BBQ meat on your clothes,"
					dialog "I'm guessing that you ran into"
					dialog "Rochito in the campgrounds, "
					dialog "right? He must have told you^FFFFFF ^000000 that old story about the witch..."
					wait()
					dialog "[Tausupa]"
					dialog "I'd like nothing better"
					dialog "than to join them, but I must"
					dialog "stay here. The witch does exist, and one my jobs is to make sure"
					dialog "that she does not revive by using my sword's power to suppress her."
					wait()
					dialog "[Tausupa]"
					dialog "Although I planned to see"
					dialog "them today, my duties must"
					dialog "take priority. Would you please"
					dialog "take this seasoning to Rochito"
					dialog "and let him know that I can't"
					dialog "come, and that I'm sorry...?"
					wait()
					dialog "^3355FFYou have received"
					dialog "the Koserahserah"
					dialog "seasoning from the Chief.^000000"
					wait()
					dialog "[Tausupa]"
					dialog "Thank you so much..."
					dialog "I understand that my"
					dialog "friends cannot begin the"
					dialog "barbeque without Comodo's"
					dialog "world famous seasoning..."
					setitem("comodo_npc",2)
					close()
				elseif mresult] == 2 then
					dialog "[Tausupa]"
					dialog "Please take this special"
					dialog "Koserserah seasoning to"
					dialog "my friend ^3355FFRochito^000000 at the"
					dialog "barbeque campground. Thanks"
					dialog "again for your help, adventurer. ^FFFFFF ^000000"
					close()
				end
				elseif mresult\ == 3 then
					dialog "[Tausupa]"
					dialog "Maybe you can't tell because"
					dialog "of the way the light reflects,"
					dialog "but Comodo is actually built"
					dialog "inside a huge cave, giving the"
					dialog "illusion of an eternal night."
					dialog "It's quite beautiful, really..."
					wait()
					dialog "[Tausupa]"
					dialog "People come from all over"
					dialog "the world to experience the"
					dialog "excitement and beauty of"
					dialog "our unique little village."
					dialog "We've become quite"
					dialog "the tourist attraction~"
					close()
				end
			end
		end
	return

npc("cmd_in02","Martine",spr_1_M_02,73,81,4,0,0,"cmd_in02_Martine_7381")
function cmd_in02_Martine_7381()
	dialog "[Martine]"
	dialog "Gambling...? The games"
	dialog "provided here in the Comodo"
	dialog "Casino are a higher form of"
	dialog "entertainment than gambling."
	dialog "Do you know what I mean?"
	wait()
	dialog "[Martine]"
	dialog "Granted, I did lose"
	dialog "all of my zeny playing"
	dialog "in this Casino, but I have"
	dialog "no regrets. I'll simply earn"
	dialog "more money, then blow it all"
	dialog "again. Or I just might win big!"
	wait()
	dialog "[Martine]"
	dialog "Bwahahahaahah~!"
	dialog "Yes, I can only lose so"
	dialog "many times until I hit the"
	dialog "jackpot! You see, you see?"
	dialog "I'm playing the freakin' odds."
	close()
end

npc("cmd_in02","Scoursege",spr_1_M_BARD,48,55,4,0,0,"cmd_in02_Scoursege_4855")
function cmd_in02_Scoursege_4855()
	dialog "[Scoursege]"
	dialog "Damn it! Where did that"
	dialog "guy go? He promised me that"
	dialog "he'd easily double my money!"
	dialog "Wait. Oh, wait. Oh... Oh no..."
	wait()
	dialog "[Scoursege]"
	dialog "Don't tell me that I just got"
	dialog "conned out of my money!"
	dialog "Oh no! Still, I better report"
	dialog "this to the proper authorities,"
	dialog "no matter how ashamed I feel..."
	close()
end

npc("cmd_in02","Roberto",spr_4_M_SEAMAN,64,43,4,0,0,"cmd_in02_Roberto_6443")
function cmd_in02_Roberto_6443()
	dialog "[Roberto]"
	dialog "Heh heh heh..."
	dialog "Whaaaat a gullible"
	dialog "guy. I took his money"
	dialog "so easily! I mean, I didn't"
	dialog "even come up with that great"
	dialog "of a lie, and he gave it to me!"
	close()
end

npc("cmd_in02","Deniroz",spr_4_M_ORIENT02,89,72,4,0,0,"cmd_in02_Deniroz_8972")
function cmd_in02_Deniroz_8972()
	dialog "[Deniroz]"
	dialog "All I need is for this"
	dialog "little steel bead to fall"
	dialog "into the right hole. Then,"
	dialog "I'll win the jackpot. Alright."
	dialog "Here goes. One last time..."
	wait()
	dialog "[Deniroz]"
	dialog "No! No, I was so close!"
	dialog "Alright, next time I should"
	dialog "be even closer, right? Yeah."
	dialog "Okay, this time will be the"
	dialog "last time. Not again! Alright,"
	dialog "j-just one more t-time..."
	close()
end

npc("cmd_in02","Shalone",spr_4W_F_01,178,92,4,0,0,"cmd_in02_Shalone_17892")
function cmd_in02_Shalone_17892()
	dialog "[Shalone]"
	dialog "Oh, I'm sorry, sir,"
	dialog "but it looks like you"
	dialog "lost again. Maybe you"
	dialog "should quit for now..."
	dialog "You've been having quite"
	dialog "a run of really bad luck..."
	close()
end

npc("cmd_in02","Stonae",spr_4W_M_02,178,86,4,0,0,"cmd_in02_Stonae_17886")
function cmd_in02_Stonae_17886()
	dialog "[Stonae]"
	dialog "N-no..."
	dialog "I lost again?!"
	dialog "But I can't quit like"
	dialog "this! I'm gonna keep"
	dialog "going, and I'm gonna"
	dialog "leave this place a winner!"
	close()
end

npc("cmd_in02","G . J",spr_4_M_04,172,105,4,0,0,"cmd_in02_G_._J_172105")
function cmd_in02_G_._J_172105()
	dialog "[G . J]"
	dialog "The more I think about it,"
	dialog "it seems easier to become"
	dialog "rich by working, saving, and"
	dialog "making wise investments than"
	dialog "to, you know... Rely on some"
	dialog "kind of huge jackpot prize."
	wait()
	dialog "[G . J]"
	dialog "Gambling seems fun, but"
	dialog "it seems smarter to make"
	dialog "money in other ways. Sure,"
	dialog "working hard is no fun, but"
	dialog "there are ways to use your^FFFFFF ^000000 money to make more of it, right?"
	wait()
	dialog "[G . J]"
	dialog "There's also the matter of"
	dialog "being smart and responsible"
	dialog "about your money--I mean, you're more likely to blow all your cash"
	dialog "if you win it, right? Yeah, you"
	dialog "gotta be wise about it all..."
	close()
end

npc("cmd_in02","Loyar",spr_4_M_01,174,126,4,0,0,"cmd_in02_Loyar_174126")
function cmd_in02_Loyar_174126()
	dialog "[Loyar]"
	dialog "Comodo Casino's interior"
	dialog "design is so pleasing to the"
	dialog "eyes, so clean and simple."
	dialog "The atmosphere here is perfect,"
	dialog "and it makes me want to play "
	dialog "some more. Alright, let's go!"
	wait()
	local loyar = math.random(1 3
	choose loyar
	if mresult[ == 1 then
		dialog "[Loyar]"
		dialog "Hmm... Maybe I better"
		dialog "go home soon. I didn't"
		dialog "spend all the money that"
		dialog "I set aside for gambling"
		dialog "quite yet, but it's not a good"
		dialog "idea to stay out too long."
		close()
	elseif mresult[ == 2 then
		dialog "[Loyar]"
		dialog "I have to admit, the"
		dialog "atmosphere of this place"
		dialog "is exciting and addictive."
		dialog "Even when you're tired, the"
		dialog "energy of this place just"
		dialog "gets into you, you know?"
		wait()
		dialog "[Loyar]"
		dialog "Although this kind of place"
		dialog "may encourage people with"
		dialog "serious gambling problems,"
		dialog "it's much nicer to gamble"
		dialog "here than in a place that's"
		dialog "dirtier and more questionable."
		close()
	elseif mresult[ == 3 then
		dialog "[Loyar]"
		dialog "Whoa whoa whoa..."
		dialog "Why did that guy make"
		dialog "that bet? What an amateur..."
		dialog "Er, I guess you don't know"
		dialog "too much about this game."
		dialog "As for me, I'm just a fan~"
		wait()
		dialog "[Loyar]"
		dialog "I'm a big fan of a lot"
		dialog "of these games, but I'll"
		dialog "admit that I'm an even bigger"
		dialog "fan of winning! Still, I have"
		dialog "enough sense to stay out of"
		dialog "those high stakes games."
		close()
	end
end

npc("cmd_in02","Moo",spr_4_M_MANAGER,57,62,4,0,0,"cmd_in02_Moo_5762")
function cmd_in02_Moo_5762()
	local mooz = math.random(1 10
	if mooz == 1 then
		dialog "[Moo]"
		dialog "Those cheating punks!"
		dialog "They'll never show their"
		dialog "faces here again: otherwise"
		dialog "they're gonna hafta get new"
		dialog "ones! Oh--Sorry, I didn't"
		dialog "see you there~ Hahahaha~"
		close()
	else
		dialog "[Moo]"
		dialog "Greetings, I am Moo,"
		dialog "manager of the Comodo"
		dialog "Casino. We pride ourselves in"
		dialog "serving all of our customers'"
		dialog "needs, doing all we can so that^FFFFFF ^000000 your visit here is unforgettable."
		wait()
		dialog "[Moo]"
		dialog "All of our guests can enjoy"
		dialog "our general gaming area, and"
		dialog "we also provide a VIP area"
		dialog "where high rollers can play"
		dialog "exciting high stakes games."
		wait()
		dialog "[Moo]"
		dialog "We always welcome all of"
		dialog "your suggestions, and are"
		dialog "always seeking to improve"
		dialog "your experience here in"
		dialog "the Comodo Casino."
		close()
	end
end

npc("cmd_fild04","Zyosegirl",spr_4_F_04,188,74,4,0,0,"cmd_fild04_Zyosegirl_18874")
function cmd_fild04_Zyosegirl_18874()
	dialog "[Zyosegirl]"
	dialog "People call me the"
	dialog "Sea Lady because I'm"
	dialog "always here working,"
	dialog "gathering clams and other"
	dialog "sea creatures to sell. It's"
	dialog "a pretty good living, actually."
	wait()
	dialog "[Zyosegirl]"
	dialog "It's nice to be able to work"
	dialog "outdoors, but someday, I want"
	dialog "to save enough money and move"
	dialog "to the city. I'm still young, you^FFFFFF ^000000 know, and I've got dreams"
	dialog "that I want to fulfill~"
	close()
end

npc("cmd_fild04","Ziyaol",spr_4_M_SEAMAN,248,86,4,0,0,"cmd_fild04_Ziyaol_24886")
function cmd_fild04_Ziyaol_24886()
	dialog "[Ziyaol]"
	dialog "Ahhh, it's nice being"
	dialog "a fisherman. You just"
	dialog "relax and let the fish"
	dialog "come to you. Well, it takes"
	dialog "some skill to catch as much"
	dialog "fish as I do with no effort~"
	wait()
	dialog "[Ziyaol]"
	dialog "I like the leisure involved"
	dialog "in my job, but if it's not one"
	dialog "thing, it's another. Yeah, that"
	dialog "daughter of mine over there"
	dialog "won't stop harping about "
	dialog "moving to the biiig city."
	wait()
	dialog "[Ziyaol]"
	dialog "Why does she want to leave"
	dialog "me so badly?! But if I don't"
	dialog "let her go, she'll run away."
	dialog "What am I going to do with"
	dialog "that girl? Well, I can't really"
	dialog "stop her from dreaming..."
	close()
end

npc("cmd_fild04","Daeguro",spr_4_F_KID2,267,137,4,0,0,"cmd_fild04_Daeguro_267137")
function cmd_fild04_Daeguro_267137()
	dialog "[Daeguro]"
	dialog "I love playing in"
	dialog "the sand-- it's so soft"
	dialog "and clean and pretty!"
	dialog "But when I grow up,"
	dialog "I wanna go to Alberta"
	dialog "and see everything I can!"
	close()
end

npc("moc_fild12","Serutero",spr_1_M_ORIENT01,35,303,4,0,0,"moc_fild12_Serutero_35303")
function moc_fild12_Serutero_35303()
	dialog "[Serutero]"
	dialog "Hello, I'm Serutero,"
	dialog "guardian of the roads that"
	dialog "lead to Sandaruman Fortress."
	dialog "If you really want to go there,"
	dialog "I'll permit you to continue, but^FFFFFF ^000000 you must beware of its dangers..."
	wait()
	local mresult[ = menu("I'm going there!","Sandaruman Fortress?","Cancel")
	if mresult[ == 1 then
		dialog "[Serutero]"
		dialog "So you're really going"
		dialog "to go to Sandaruman"
		dialog "Fortress. Alright then,"
		dialog "good luck, and be careful!"
		close()
		moveto("cmd_fild08",331,319)
	elseif mresult[ == 2 then
		dialog "[Serutero]"
		dialog "Although Sandaruman"
		dialog "Fortress is infested with"
		dialog "monsters now, it used to be"
		dialog "a province where people lived."
		dialog "However, they were always"
		dialog "invaded and pillaged..."
		wait()
		dialog "[Serutero]"
		dialog "Sandaruman's inhabitants"
		dialog "eventually adapted to the"
		dialog "invasions, developing smoke"
		dialog "signals and fortifications to"
		dialog "withstand the ravages of war."
		dialog "Then, Comodo was built..."
		wait()
		dialog "[Serutero]"
		dialog "Comodo grew in power and"
		dialog "influence and eventually annexed Sandaruman. More and more people"
		dialog "moved from the fortress to Comodo until Sandaruman Fotress was"
		dialog "essentially abandoned."
		wait()
		dialog "[Serutero]"
		dialog "There were a few people"
		dialog "remaining in Sandaruman,"
		dialog "but they revolted and some"
		dialog "fledging government came into"
		dialog "power there. The monsters took"
		dialog "the chance to take over..."
		wait()
		dialog "[Serutero]"
		dialog "There's nothing around"
		dialog "Sandaruman now. Well, nothing"
		dialog "except maybe Paros Lighthouse,"
		dialog "which is southwest of here. That place might be of interest to"
		dialog "aspiring Rogues, I hear..."
		close()
	elseif mresult[ == 3 then
		dialog "[Serutero]"
		dialog "You know, if you're"
		dialog "tired of traveling, you"
		dialog "can rest in ^3355FFComodo^000000. That"
		dialog "place is a pretty popular"
		dialog "tourist attraction, especially"
		dialog "for you adventurer types."
		close()
	end
end

npc("cmd_fild07","Rahasu",spr_4W_SAILOR,192,58,4,0,0,"cmd_fild07_Rahasu_19258")
function cmd_fild07_Rahasu_19258()
	dialog "[Rahasu]"
	dialog "Hey, I'm Rahasu."
	dialog "If you want to learn"
	dialog "a little more about"
	dialog "Paros Lighthouse, I'll"
	dialog "be happy to tell you."
	wait()
	local mresult[ = menu("Paros Lighthouse?","Cancel")
	if mresult[ == 1 then
		dialog "[Rahasu]"
		dialog "For many years, this"
		dialog "lighthouse guided many"
		dialog "ships to shore. That was"
		dialog "a long time ago: now this"
		dialog "lighthouse sits quietly,"
		dialog "unused, but never unloved."
		wait()
		dialog "[Rahasu]"
		dialog "Although this place"
		dialog "isn't the center of"
		dialog "trade and commerce that"
		dialog "it used to be, plenty of"
		dialog "people still wander to this"
		dialog "area. I wonder why, exactly..."
		close()
	elseif mresult[ == 2 then
		dialog "[Rahasu]"
		dialog "Hey, before you leave,"
		dialog "you really ought to check"
		dialog "the view from the lighthouse."
		dialog "It's... It's breathtaking..."
		close()
	end
end

npc("cmd_fild07","Hallosu",spr_4W_SAILOR,52,280,4,0,0,"cmd_fild07_Hallosu_52280")
function cmd_fild07_Hallosu_52280()
	dialog "[Hallosu]"
	dialog "Hello, this is one of the"
	dialog "lighthouses that make up"
	dialog "Paros Lighthouse. However,"
	dialog "right now it's undergoing"
	dialog "renovation, so it's not"
	dialog "open to the public."
	close()
end

npc("cmd_fild07","Zain",spr_4W_SAILOR,299,83,4,0,0,"cmd_fild07_Zain_29983")
function cmd_fild07_Zain_29983()
	dialog "[Zain]"
	dialog "Would you like to"
	dialog "board a ship on the"
	dialog "Reudelus route? You"
	dialog "can travel on Reudelus"
	dialog "to Alberta or Izlude."
	wait()
	local mresult[ = menu("Alberta - 600 Zeny","Izlude - 800 Zeny","Cancel")
	if mresult[ == 1 then
		if getvar(VAR_MONEY) < 600 then
			dialog "[Zain]"
			dialog "I'm sorry, but you"
			dialog "don't have enough"
			dialog "zeny for the boarding fare."
			close()
		else
			dropgold(600)
			moveto("alberta",192,169)
		end
	elseif mresult[ == 2 then
		if getvar(VAR_MONEY) < 800 then
			dialog "[Zain]"
			dialog "I'm sorry, but you"
			dialog "don't have enough"
			dialog "zeny for the boarding fare."
			close()
		else
			dropgold(800)
			moveto("izlude",176,182)
		end
	elseif mresult[ == 3 then
		dialog "[Zain]"
		dialog "Travel by ship is"
		dialog "still one of the safest and"
		dialog "dependable methods of"
		dialog "transportation. I invite you"
		dialog "to try Reudelus travel soon~"
		close()
	end
end

npc("cmd_fild07","Sarumane",spr_4W_SAILOR,94,134,4,0,0,"cmd_fild07_Sarumane_94134")
function cmd_fild07_Sarumane_94134()
	dialog "[Sarumane]"
	dialog "Would you like to"
	dialog "board a ship on the"
	dialog "Reudelus route? You"
	dialog "can travel on Reudelus"
	dialog "to Alberta or Izlude."
	wait()
	local mresult[ = menu("Alberta - 600 Zeny","Izlude - 800 Zeny","Cancel")
	if mresult[ == 1 then
		if getvar(VAR_MONEY) < 600 then
			dialog "[Sarumane]"
			dialog "I'm sorry, but you"
			dialog "don't have enough"
			dialog "zeny for the boarding fare."
			close()
		else
			dropgold(600)
			moveto("alberta",192,169)
		end
	elseif mresult[ == 2 then
		if getvar(VAR_MONEY) < 800 then
			dialog "[Sarumane]"
			dialog "I'm sorry, but you"
			dialog "don't have enough"
			dialog "zeny for the boarding fare."
			close()
		else
			dropgold(800)
			moveto("izlude",176,182)
		end
	elseif mresult[ == 3 then
		dialog "[Sarumane]"
		dialog "Travel by ship is"
		dialog "still one of the safest and"
		dialog "dependable methods of"
		dialog "transportation. I invite you"
		dialog "to try Reudelus travel soon~"
		close()
	end
end

npc("comodo","Toruna",spr_4_M_MANAGER,88,97,4,0,0,"comodo_Toruna_8897")
function comodo_Toruna_8897()
	dialog "[Toruna]"
	dialog "When I think about it,"
	dialog "there are many fascinating"
	dialog "facts about Comodo. Can"
	dialog "you believe this entire city"
	dialog "is built inside a natural cave?"
	wait()
	local mresult[ = menu("This cave is huge!","This place sure is strange...","Cancel")
	if mresult[ == 1 then
		dialog "[Toruna]"
		dialog "Oh, this is a huge cave,"
		dialog "but it's not impossible for"
		dialog "nature to create something"
		dialog "of this size and scale if given"
		dialog "thousands, maybe even millions"
		dialog "of years. Let me explain..."
		wait()
		dialog "[Toruna]"
		dialog "Now, water is known as"
		dialog "a universal solvent: running"
		dialog "water will carve its own path"
		dialog "in rock, given enough time."
		dialog "Now, keep in mind that this"
		dialog "cave was once solid limestone."
		wait()
		dialog "[Toruna]"
		dialog "Years and years of running"
		dialog "water from the rains and the"
		dialog "water table have broken down"
		dialog "this giant pocket of limestone,"
		dialog "clearing out this huge, open"
		dialog "area, the Comodo Cave."
		wait()
		dialog "[Toruna]"
		dialog "That may sound incredulous,"
		dialog "but cracks in limestone grow"
		dialog "into faults, then spacious gaps"
		dialog "over years and years of erosion. Now, isn't natural science just"
		dialog "amazing? You've got to agree..."
		close()
	elseif mresult[ == 2 then
		if ((getvar(comodo_npc) == 5) or (getvar(comodo_npc) == 6)) then
			choose v[comodo_npc]
			elseif mresult[ == 5 then
				dialog "[Toruna]"
				dialog "Yes, that is rather"
				dialog "peculiar. What's also"
				dialog "strange is this rumor I've"
				dialog "been hearing about. Now, are^FFFFFF ^000000 you familiar with Comodo Cheese?"
				wait()
				dialog "[Toruna]"
				dialog "It's this urban legend"
				dialog "about this magnificent cheese"
				dialog "that you can only find in Comodo. Now, not too many people believe"
				dialog "it. I mean, you need goats or cows"
				dialog "in order to make any cheese."
				wait()
				dialog "[Toruna]"
				dialog "However, there's this"
				dialog "strange man that insists"
				dialog "on its existence. The locals"
				dialog "here chalk him up to be some"
				dialog "sort of common loon, but who"
				dialog "knows? Maybe it does exist..."
				setitem("comodo_npc",6)
				wait()
				dialog "[Toruna]"
				dialog "Well, you can decide for"
				dialog "yourself whether he's off"
				dialog "his rocker. The last time"
				dialog "I saw him, he was in the"
				dialog "Comodo Bar, so you can"
				dialog "probably find him there."
				close()
			elseif mresult[ == 6 then
				dialog "[Toruna]"
				dialog "Well, I like to think of"
				dialog "Comodo as unique. What's"
				dialog "really strange are some of"
				dialog "the locals in this area. I've"
				dialog "already told you about the"
				dialog "man in the Comodo Bar, yes?"
				wait()
				dialog "[Toruna]"
				dialog "He keeps insisting"
				dialog "that there is a special"
				dialog "kind of cheese in Comodo"
				dialog "that you cannot get anywhere"
				dialog "else. It sounds crazy, but his"
				dialog "claim may be worth verifying..."
				close()
			end
		else
			dialog "[Toruna]"
			dialog "Ah, did you know that"
			dialog "before it was an exotic"
			dialog "village of excitement and"
			dialog "leisure, Comodo was once"
			dialog "a haven for evil creatures, ruled^FFFFFF ^000000 by a witch named Meropusum?"
			wait()
			dialog "[Toruna]"
			dialog "This witch lay dormant for"
			dialog "years until she was awoken"
			dialog "somehow years ago. She was"
			dialog "a huge threat to the people, but then she was finally defeated"
			dialog "in the famous War of the Witch."
			wait()
			dialog "[Toruna]"
			dialog "One of the heroes of that"
			dialog "war became the current Chief"
			dialog "of this village, and it was"
			dialog "through his leadership that"
			dialog "Comodo grew into a thriving"
			dialog "tourist attraction."
			wait()
			dialog "[Toruna]"
			dialog "However, the threat of"
			dialog "Meropusum still exists,"
			dialog "so I would be careful when"
			dialog "exploring the uninhabited"
			dialog "areas of the Comodo region."
			close()
		end
	elseif mresultZ == 3 then
		dialog "[Toruna]"
		dialog "There's much to do"
		dialog "in this city of Comodo,"
		dialog "as well as much to learn"
		dialog "about it. I can never tire of"
		dialog "visiting this exotic city..."
		close()
	end
end

npc("comodo","Rakusa",spr_1_F_MERCHANT_01,164,291,4,0,0,"comodo_Rakusa_164291")
function comodo_Rakusa_164291()
	if ((getvar(comodo_npc) == 6) or (getvar(comodo_npc) == 7)) then
		choose v[comodo_npc]
		elseif mresultY == 6 then
			dialog "[Rakusa]"
			dialog "See that guy sitting"
			dialog "over there? All he does"
			dialog "is talk about Comodo Cheese,"
			dialog "just mumbling nonsense about"
			dialog "its incredible flavors all day"
			dialog "long. He's nuts, I tell you."
			wait()
			dialog "[Rakusa]"
			dialog "First of all, you need"
			dialog "freakin' milk to make any"
			dialog "cheese. You see any cows"
			dialog "around here? Nope, I thought"
			dialog "so! Still, I think he really"
			dialog "believes that it exists..."
			setitem("comodo_npc",7)
			close()
		elseif mresultY == 7 then
			dialog "[Rakusa]"
			dialog "Damn it! I know for a fact"
			dialog "that the idea of Comodo even"
			dialog "having a cheese is crazy, but"
			dialog "that guy's talking has gotten"
			dialog "me curious now! Maybe it does"
			dialog "exist? How would it even taste?"
			close()
		end
	else
		dialog "[Rakusa]"
		dialog "You know, Comodo has"
		dialog "a reputation for offering"
		dialog "high class recreation, so"
		dialog "people forget that we actually"
		dialog "have two dangerous dungeons."
		wait()
		dialog "[Rakusa]"
		dialog "You adventurers need to"
		dialog "be extra careful if you explore"
		dialog "the caves--the monsters there"
		dialog "are unusually strong. Make"
		dialog "sure that you're well prepared"
		dialog "before you even think of going!"
		close()
	end
end

npc("comodo","Kichiri",spr_4W_M_02,169,284,4,0,0,"comodo_Kichiri_169284")
function comodo_Kichiri_169284()
	if ((getvar(comodo_npc) == 7) or (getvar(comodo_npc) == 8)) then
		choose v[comodo_npc]
		elseif mresultX == 7 then
			dialog "[Kichiri]"
			dialog "Freakin' ^3355FFMagatu^000000...!"
			dialog "Can he talk about anything else"
			dialog "aside from Comodo Cheese?"
			dialog "I don't see why he's so excited"
			dialog "about the stuff! Everyone knows"
			dialog "it's just an old wive's tale."
			wait()
			dialog "[Kichiri]"
			dialog "Would you do"
			dialog "me a favor and get"
			dialog "Magatu to shut up?"
			dialog "I just want to drink"
			dialog "my alcohol in peace!"
			setitem("comodo_npc",8)
			close()
		elseif mresultX == 8 then
			dialog "[Kichiri]"
			dialog "Cripes! Now Magatu's"
			dialog "got me wondering! I mean,"
			dialog "just because I've never seen"
			dialog "Comodo Cheese doesn't mean"
			dialog "it doesn't exist, right? Curses!^FFFFFF ^000000 Now I'm thinking about it too!"
			close()
		end
	else
		dialog "[Kichiri]"
		dialog "There's more to do than"
		dialog "gambling in Comodo, you"
		dialog "know. Sometimes, I love"
		dialog "to watch the Dancers on"
		dialog "stage in the middle of the"
		dialog "village. They're so glamorous~"
		wait()
		dialog "[Kichiri]"
		dialog "I hear that the Dance"
		dialog "Academy only accepts female"
		dialog "Archers to become prospective"
		dialog "Dancers. I guess that makes"
		dialog "sense--they're tone and fit,"
		dialog "but not musclebound either..."
		close()
	end
end

npc("comodo","Magatu",spr_1_M_JOBTESTER,163,280,4,0,0,"comodo_Magatu_163280")
function comodo_Magatu_163280()
	if ((getvar(comodo_npc) == 8) or (getvar(comodo_npc) == 9)) then
		choose v[comodo_npc]
		elseif mresultW == 8 then
			dialog "[Magatu]"
			dialog "Comodo Cheese..."
			dialog "It really exists...!"
			dialog "And I'm so close to"
			dialog "having the proof! Oh..."
			dialog "That look in your eyes..."
			dialog "Y-you really believe me!"
			wait()
			dialog "[Magatu]"
			dialog "At long last, not only"
			dialog "someone who believes me,"
			dialog "but an adventurer to boot!"
			dialog "Great, this is perfect! Now,"
			dialog "listen, you want to learn more"
			dialog "about Comodo Cheese, right?"
			wait()
			dialog "[Magatu]"
			dialog "Well, I happen to know"
			dialog "someone who knows someone"
			dialog "that might be able to give you"
			dialog "the chance to try it for yourself! His name is ^3355FFManzi^000000 , and you can"
			dialog "find him in Comodo's Casino."
			wait()
			dialog "[Magatu]"
			dialog "Oh, here, before I forget,"
			dialog "take my lucky bottle cap!"
			dialog "Show this to Manzi, and he'll"
			dialog "know that I sent you, and that"
			dialog "you want to learn more about"
			dialog "the elusive Comodo Cheese."
			wait()
			dialog "^3355FFYou have received"
			dialog "Magatu's lucky bottle"
			dialog "cap to present to Manzi."
			setitem("comodo_npc",9)
			close()
		elseif mresultW == 9 then
			dialog "[Magatu]"
			dialog "Oh, don't forget to"
			dialog "show my lucky bottle cap"
			dialog "to Manzi, okay? You can find"
			dialog "him inside Comodo's Casino~"
			dialog "Good luck, and I hope you get"
			dialog "to try that Comodo Cheese~"
			close()
		end
	else
		dialog "[Magatu]"
		dialog "It's true, it really"
		dialog "exists... Comodo Cheese!"
		dialog "Its flavor must be incomparably"
		dialog "delicious if adventurers have"
		dialog "quested to obtain it for so"
		dialog "many generations..."
		close()
	end
end

npc("cmd_in02","Manzi",spr_4_M_03,189,99,4,0,0,"cmd_in02_Manzi_18999")
function cmd_in02_Manzi_18999()
	if ((getvar(comodo_npc) == 9) or (getvar(comodo_npc) == 10)) then
		choose v[comodo_npc]
		elseif mresultV == 9 then
			dialog("[","+PcName+"]"")
			dialog "Excuse, but I'm"
			dialog "looking for someone"
			dialog "named Manzi. Do you"
			dialog "know where I can find him?"
			wait()
			dialog "[Manzi]"
			dialog "Hey guy, I'm right here."
			dialog "So what exactly do you"
			dialog "want? I'm, um, not in"
			dialog "trouble or anything, am I?"
			wait()
			dialog "^3355FFYou give Manzi the"
			dialog "lucky bottle cap that you"
			dialog "received from Magatsu.^000000"
			wait()
			dialog "[Manzi]"
			dialog "Whoa, Magatsu gave you"
			dialog "this? Ah, okay, so you must"
			dialog "be looking for that Comodo"
			dialog "Cheese he keeps talking about."
			dialog "Alright, I owe him a favor, so"
			dialog "I'll tell you who to talk to..."
			wait()
			dialog "[Manzi]"
			dialog "From the Casino, go north"
			dialog "towards the center of the"
			dialog "village, and then look to"
			dialog "the right where you'll see"
			dialog "the Dance Stage. You'll see"
			dialog "this old woman right there."
			wait()
			dialog "[Manzi]"
			dialog "Don't be fooled by the"
			dialog "way she looks--that old"
			dialog "lady is one of Comodo's"
			dialog "wisest elders. Ask her"
			dialog "about the cheese, and"
			dialog "let her know I sent you~"
			wait()
			dialog "[Manzi]"
			dialog "Ah, she won't take you"
			dialog "very seriously unless you"
			dialog "show her this. Magatsu gave"
			dialog "you his lucky bottle cap, so I'm^FFFFFF ^000000 gonna give you my lucky coin!"
			dialog "The old crone'll recognize it~"
			wait()
			setitem("comodo_npc",10)
			dialog "^3355FFYou received Manzi's"
			dialog "''lucky coin.'' Strangely"
			dialog "enough, both sides"
			dialog "are heads."
			close()
		elseif mresultV == 10 then
			dialog "[Manzi]"
			dialog "Look for the old crone"
			dialog "near the Dance Stage here"
			dialog "in Comodo and ask her about"
			dialog "Comodo Cheese, alright? Ah,"
			dialog "and try not to insult her, kay?"
			dialog "It'll make me look bad~"
			close()
		end
	else
		if getvar(VAR_JOB) == NOVICE then
			dialog "[Manzi]"
			dialog "What th...?"
			dialog "What's a kid like"
			dialog "you doing in a Casino?"
			dialog "Sure, it's not against the"
			dialog "rules, but I think you oughta"
			dialog "scram and play somewhere else!"
			close()
		else
			dialog "[Manzi]"
			dialog "Hey, have a good time in"
			dialog "the Casino, but don't go buck"
			dialog "wild. You wanna walk out of"
			dialog "here with the shirt on your back,^FFFFFF ^000000 you know? Some people don't"
			dialog "even leave here with that..."
			close()
		end
	end
end

npc("comodo","Hullaris",spr_4_F_GODEMOM,187,153,4,0,0,"comodo_Hullaris_187153")
function comodo_Hullaris_187153()
	if ((getvar(comodo_npc) == 10) or (getvar(comodo_npc) == 11) or (getvar(comodo_npc) == 12) or (getvar(comodo_npc) == 13)) then
		choose v[comodo_npc]
		elseif mresultU == 10 then
			dialog "[Hullaris]"
			dialog "Hula~hula~hula~"
			dialog "Love togther, love together,"
			dialog "we've groovin' on some more~"
			dialog "Love togther, love together,"
			dialog "we've living on the floor~"
			wait()
			local mresultV = menu("Present Muzi's Coin","Um... Comodo Cheese?")
			if mresultV == 1 then
				dialog "^3355FFYou present Muzi's lucky"
				dialog "coin to the old woman.^000000"
				wait()
				dialog "[Hullaris]"
				dialog "Love! Love!"
				dialog "Love together~"
				dialog "Love! Love!"
				dialog "Love togeth-hm?"
				dialog "Oh, that's um, Muzi's"
				dialog "cheat coin, isn't it?"
				wait()
				dialog "[Hullaris]"
				dialog "He always said that he"
				dialog "might send someone with"
				dialog "that coin to me as a sign"
				dialog "of his trust in that person."
				dialog "I suppose, then, that I'm"
				dialog "at your service. Now..."
				wait()
				dialog "[Hullaris]"
				dialog "What exactly did you need?"
				dialog "I'm guessing you've come"
				dialog "here to ask me something"
				dialog "about Comodo. As one of the"
				dialog "oldest elders, I know more"
				dialog "about this village than most..."
				wait()
				dialog("[","+PcName+"]"")
				dialog "Actually, I was hoping"
				dialog "you can tell me about"
				dialog "Comodo Cheese. If it really"
				dialog "exists, I'd like to know"
				dialog "where I can get some."
				wait()
				dialog "[Hullaris]"
				dialog "Oh... That. First of all,"
				dialog "Comodo Cheese does exist,"
				dialog "and it's as precious as the"
				dialog "legends say. However, it's"
				dialog "not a true cheese, although^FFFFFF ^000000 you may think so from its taste."
				wait()
				dialog "[Hullaris]"
				dialog "Yes, it's a very rare, natural"
				dialog "substance and isn't made from"
				dialog "cow or goat milk or anything"
				dialog "like that. However, Comodo"
				dialog "Cheese isn't merely food."
				dialog "No, it's much more..."
				wait()
				dialog "[Hullaris]"
				dialog "Those that eat Comodo"
				dialog "Cheese find that their"
				dialog "true potential is unlocked."
				dialog "Comodo Cheese's true name"
				dialog "is the ^3355FFAwakening Stone^000000. Now,"
				dialog "doesn't that sound impressive?"
				wait()
				dialog "[Hullaris]"
				dialog "The Awakening Stone is"
				dialog "one of the keys to obtaining"
				dialog "some kind of forbidden power."
				dialog "That's why only the bravest"
				dialog "adventurers can expect the"
				dialog "chance of ever eating it."
				wait()
				dialog "[Hullaris]"
				dialog "Do you really wish to"
				dialog "eat the Comodo Cheese and"
				dialog "see where its power may lead"
				dialog "you? If so, you'll have to endure great challenges to obtain it..."
				wait()
				dialog "[Hullaris]"
				dialog "When you've decided"
				dialog "to pursue the Awakening"
				dialog "Stone, seek out a man named"
				dialog "^3355FFNigirboran^000000. He will judge"
				dialog "whether you are worthy"
				dialog "of the Comodo Cheese..."
				setitem("comodo_npc",11)
				wait()
				dialog "[Hullaris]"
				dialog "Now, you should be"
				dialog "able to find Nigiroban"
				dialog "training somewhere in one"
				dialog "of Comodo's Dungeon Caves."
				dialog "I'll send him a message to"
				dialog "let him know you're coming..."
				close()
			elseif mresultV == 2 then
				if getvar(VAR_SEX) == 0 then
					dialog "[Hullaris]"
					dialog "Love! Love!"
					dialog "Love together~"
					dialog "Love! Love!"
					dialog "Love togeth-hm?"
					dialog "Girl, you're ruining"
					dialog "my groove! Get away~"
					close()
				else
					dialog "[Hullaris]"
					dialog "Love! Love!"
					dialog "Love together~"
					dialog "Love! Love!"
					dialog "Love togeth-hm?"
					dialog "Boy, you're ruining"
					dialog "my groove! Now beat it!"
					close()
				end
			end
		elseif mresultU == 11 then
			dialog "[Hullaris]"
			dialog "Do you really wish to"
			dialog "eat the Comodo Cheese and"
			dialog "see where its power may lead"
			dialog "you? If so, you'll have to endure great challenges to obtain it..."
			wait()
			dialog "[Hullaris]"
			dialog "When you've decided"
			dialog "to pursue the Awakening"
			dialog "Stone, seek out a man named"
			dialog "^3355FFNigirboran^000000. He will judge"
			dialog "whether you are worthy"
			dialog "of the Comodo Cheese..."
			wait()
			dialog "[Hullaris]"
			dialog "Now, you should be"
			dialog "able to find Nigiroban"
			dialog "training somewhere in one"
			dialog "of Comodo's Dungeon Caves."
			dialog "I'll send him a message to"
			dialog "let him know you're coming..."
			close()
		elseif mresultU == 12 then
			dialog "[Hullaris]"
			dialog "Hmm? So you've failed"
			dialog "Nigirboran's test, have"
			dialog "you? Well, you better train"
			dialog "until you can pass it. Otherwise, eating Comodo Cheese could"
			dialog "mean your death, you know."
			close()
		elseif mresultU == 13 then
			dialog "[Hullaris]"
			dialog "Ah, you've returned."
			dialog "So were you able to pass"
			dialog "Nigirboran's little test? An"
			dialog "adventurer like you should"
			dialog "be able to have no problem"
			dialog "with it. I've got faith in you~"
			wait()
			dialog "^3355FFYou present the token that"
			dialog "signifies that you passed"
			dialog "Nigirboran's test to Hullaris.^000000"
			wait()
			dialog "[Hullaris]"
			dialog "Ah, I was right after all."
			dialog "I'm glad to see that you've"
			dialog "proven worthy of eating this"
			dialog "Comodo Cheese, or more"
			dialog "accurately, the Awakening"
			dialog "Stone. Here, let me get it..."
			wait()
			dialog "[Hullaris]"
			dialog "There you are..."
			dialog "Only brave and worthy"
			dialog "adventurers are allowed to"
			dialog "eat this. Understand that"
			dialog "eating Comodo Cheese is"
			dialog "a rare and coveted honor!"
			wait()
			dialog "^3355FFHullaris carefully"
			dialog "hands you a plate of"
			dialog "Comodo Cheese. You enjoy"
			dialog "the rich, smooth flavor of"
			dialog "each and every morsel..."
			dialog "It's sublimely delicious!^000000"
			wait()
			dialog "^3355FFAfter you finish eating the"
			dialog "Comodo Cheese, you feel"
			dialog "a subtle, yet definite energy"
			dialog "gently pulsing through your"
			dialog "body. You feel a powerful, yet"
			dialog "quiet confidence of being able"
			dialog "to accomplish anything.^000000"
			setitem("comodo_npc",14)
			wait()
			dialog "[Hullaris]"
			dialog "Hahahah! So what"
			dialog "do you think? It's great,"
			dialog "isn't it? It's unreal, how"
			dialog "delicious it is. All other"
			dialog "foods can never match the"
			dialog "quality of Comodo Cheese~"
			wait()
			dialog "[Hullaris]"
			dialog "Now, I know that you probably"
			dialog "have things to do, but might"
			dialog "I suggest that you visit the"
			dialog "town of Al De Baran? There's"
			dialog "a man there that can tell you"
			dialog "about the Slate of Muriniel."
			wait()
			dialog "[Hullaris]"
			dialog "You've already eaten the"
			dialog "Awakening Stone, so you may"
			dialog "as well obtain the other things"
			dialog "that you need to earn one of"
			dialog "the three forbidden swords."
			dialog "It's just a thought..."
			close()
		end
	else
		dialog "[Hullaris]"
		dialog "Ah... Dance."
		dialog "It's more than just a form"
		dialog "of entertainment. It's art,"
		dialog "it's seduction, it's battle,"
		dialog "and it's love. Only a true"
		dialog "Dancer can understand this..."
		wait()
		dialog "[Hullaris]"
		dialog "You know, Comodo is famous"
		dialog "for its Dance Academy and the"
		dialog "Dancers that have been trained"
		dialog "there. If you know any female"
		dialog "Archers, why don't you suggest"
		dialog "visiting the school to them?"
		close()
	end
end

npc("beach_dun3","Nigirboran",spr_4_M_BIBI,30,220,4,0,0,"beach_dun3_Nigirboran_30220")
function beach_dun3_Nigirboran_30220()
	if ((getvar(comodo_npc) == 11) or (getvar(comodo_npc) == 12) or (getvar(comodo_npc) == 13) or (getvar(comodo_npc) == 14)) then
		choose v[comodo_npc]
		elseif mresultT == 11 then
			dialog "[Nigirboran]"
			dialog "You're the one that"
			dialog "Hullaris sent? So you're"
			dialog "here to earn the right to"
			dialog "eat the Awakening Stone..."
			dialog "Or Comodo Cheese, as it's"
			dialog "more commonly known."
			wait()
			dialog "[Nigirboran]"
			dialog "Yes, it has many names..."
			dialog "But it's more than a mere"
			dialog "tasty treat--the Awakening"
			dialog "Stone can help you access"
			dialog "your true potential. But if you're not prepared... then you'll die."
			wait()
			dialog "[Nigirboran]"
			dialog "If your mind and body"
			dialog "aren't sufficiently trained,"
			dialog "your body will reject the"
			dialog "Comodo Cheese and you"
			dialog "would die a slow, painful,"
			dialog "yet incredibly flavorful death."
			wait()
			dialog "[Nigirboran]"
			dialog "But I'm sure that won't"
			dialog "happen to you! If Hullaris"
			dialog "sent you to me, you must"
			dialog "have a fighting chance, right?"
			dialog "So come back when you're"
			dialog "ready for the testing~"
			setitem("comodo_npc",12)
			close()
		elseif mresultT == 12 then
			dialog "[Nigirboran]"
			dialog "Good, you have returned--"
			dialog "I'd expect nothing less of"
			dialog "a brave and daring adventurer."
			dialog "Now hold still as I gauge your"
			dialog "body's internal energies and see^FFFFFF ^000000 if it can handle Comodo Cheese..."
			wait()
			dialog "[Nigirboran]"
			dialog "Alright."
			dialog "Are you ready?"
			dialog "Now... Brace yourself!"
			dialog "Heeeeeyah! Hoooo-HAH!"
			wait()
			if ((getvar(VAR_JOBLEVEL) > 20) and (getvar(VAR_CLEVEL) > 25)) then
				local nigirboran = math.random(1 3
				choose nigirboran
				if mresultT == 1 then
					dialog "^3355FFA powerful current of"
					dialog "warmth immediately coarses"
					dialog "through your body from head"
					dialog "to toe, and you struggle to"
					dialog "keep yourself from writhing.^000000"
					wait()
					dialog "[Nigirboran]"
					dialog "Hmm... Your body seems"
					dialog "well trained, but your mind"
					dialog "is still reeling from the test."
					dialog "If you ate the Comodo Cheese"
					dialog "now, you'd be reduced to an"
					dialog "incoherent invalid..."
					wait()
					dialog "[Nigirboran]"
					dialog "Go and train yourself"
					dialog "a little more, and try"
					dialog "to improve your mind's"
					dialog "sense of clarity. When"
					dialog "you feel ready, come"
					dialog "back to me once more."
					close()
				elseif mresultT == 2 then
					dialog "^3355FFA powerful current of"
					dialog "warmth immediately coarses"
					dialog "through your body from head"
					dialog "to toe, and you struggle to"
					dialog "keep yourself from writhing.^000000"
					wait()
					dialog "[Nigirboran]"
					dialog "Huh. Your body is"
					dialog "strong, but your spirit"
					dialog "is weak. You need more"
					dialog "training. If you were to eat"
					dialog "the Comodo Cheese now..."
					dialog "You would evaporate."
					wait()
					dialog "[Nigirboran]"
					dialog "But don't lose heart,"
					dialog "it's too early for you"
					dialog "to give up. Go out and"
					dialog "train some more, and then"
					dialog "come back to me when you"
					dialog "feel like you're ready."
					close()
				elseif mresultT == 3 then
					dialog "^3355FFA powerful current of"
					dialog "warmth immediately coarses"
					dialog "through your body from head"
					dialog "to toe, and you struggle to"
					dialog "keep yourself from writhing.^000000"
					wait()
					dialog "[Nigirboran]"
					dialog "Yes... Yes..."
					dialog "Your mind, soul, and body"
					dialog "seem well trained. I think you"
					dialog "can eat the Comodo Cheese"
					dialog "without any ill effect. Good,"
					dialog "good, I think you're ready."
					wait()
					dialog "[Nigirboran]"
					dialog "Here, take this little"
					dialog "token to Hullaris. That"
					dialog "will prove to her that"
					dialog "you've passed my little"
					dialog "test. Congratulations~"
					wait()
					dialog "^3355FFYou've received"
					dialog "a token button to"
					dialog "present to Hullaris"
					dialog "from Nigirboran.^000000"
					setitem("comodo_npc",13)
					wait()
					dialog "[Nigirboran]"
					dialog "Ah, I almost forgot"
					dialog "to ask you. Why do you"
					dialog "seek the Comodo Cheese,"
					dialog "or the Awakening Stone?"
					dialog "Are you seeking one of"
					dialog "the 3 forbidden swords?"
					wait()
					dialog "[Nigirboran]"
					dialog "I don't know all the details,"
					dialog "but I do know that you'll need"
					dialog "the ^3355FFAwakening Stone^000000, the ^3355FFBook^000000"
					dialog "^3355FFof the Lamb^000000 and the ^3355FFSlate of^000000"
					dialog "^3355FFMurniel^000000 to even have a chance^FFFFFF ^000000 of obtaining one of those swords."
					wait()
					dialog "[Nigirboran]"
					dialog "Let's see... After you"
					dialog "speak to Hullaris, you"
					dialog "should go to Al De Baran"
					dialog "and find someone named"
					dialog "^3355FFMeteurengut^000000 to learn about"
					dialog "the Slate of Muriniel."
					wait()
					dialog "[Nigirboran]"
					dialog "Anyway, I wish you"
					dialog "the best of luck in"
					dialog "accomplishing your"
					dialog "goals. Godspeed..."
					close()
				end
			else
				dialog "^3355FFA torrent of warmth"
				dialog "coarses through your"
				dialog "entire body, and you"
				dialog "immediately faint from"
				dialog "the rush of energy.^000000"
				wait()
				dialog "[Nigirboran]"
				dialog "Goodness...!"
				dialog "Your mind and body"
				dialog "are far too weak to"
				dialog "handle the Comodo Cheese"
				dialog "now. You must seriously"
				dialog "train yourself much more..."
				wait()
				dialog "[Nigirboran]"
				dialog "After you've developed"
				dialog "some more strength, come"
				dialog "back to me. You can retake"
				dialog "this little test anytime~"
				close()
			end
		elseif mresultS == 13 then
			dialog "[Nigirboran]"
			dialog "I don't know all the details,"
			dialog "but I do know that you'll need"
			dialog "the ^3355FFAwakening Stone^000000, the ^3355FFBook^000000"
			dialog "^3355FFof the Lamb^000000 and the ^3355FFSlate of^000000"
			dialog "^3355FFMurniel^000000 to even have a chance"
			dialog "of obtaining a forbidden sword."
			wait()
			dialog "[Nigirboran]"
			dialog "Let's see... After you"
			dialog "speak to Hullaris, you"
			dialog "should go to Al De Baran"
			dialog "and find someone named"
			dialog "^3355FFMeteurengut^000000 to learn about"
			dialog "the Slate of Muriniel."
			wait()
			dialog "[Nigirboran]"
			dialog "Anyway, I wish you"
			dialog "the best of luck in"
			dialog "accomplishing your"
			dialog "goals. Godspeed..."
			close()
		elseif mresultS == 14 then
			dialog "[Nigirboran]"
			dialog "Somewhere in ^3355FFAl De Baran^000000,"
			dialog "you'll find a man named"
			dialog "^3355FFMeteurengut^000000. He should be"
			dialog "able to help you learn more"
			dialog "about the Slate of Muriniel."
			close()
		end
	else
		dialog "[Nigirboran]"
		dialog "Oh... Hello there."
		dialog "I guess you could say"
		dialog "that I'm something of"
		dialog "a trainer here in Comodo."
		dialog "My name is Nigirboran."
		dialog "I know it's hard to say..."
		wait()
		dialog "[Nigirboran]"
		dialog "If Hullaris hasn't sent"
		dialog "you, then I don't think"
		dialog "I can be of any real help"
		dialog "for you. That seems to be"
		dialog "the case, so I'd appreciate"
		dialog "it if you'd let me train..."
		close()
	end
end

npc("aldebaran","Meteurengut",spr_1_M_WIZARD,44,53,4,0,0,"aldebaran_Meteurengut_4453")
function aldebaran_Meteurengut_4453()
	if ((getvar(comodo_npc) == 14) or (getvar(comodo_npc) == 15) or (getvar(comodo_npc) == 16) or (getvar(comodo_npc) == 17)) then
		choose v[comodo_npc]
		elseif mresultR == 14 then
			dialog "[Meteurengut]"
			dialog "Ah. Your body is surrounded"
			dialog "by the glow of one that has"
			dialog "eaten of the Awakening Stone."
			dialog "That alone may prove your value"
			dialog "as an adventurer, but are you"
			dialog "free from your selfish desires?"
			wait()
			dialog "[Meteurengut]"
			dialog "Even just the smallest"
			dialog "taint of greed or jealousy"
			dialog "can prove to be a corruptive"
			dialog "influence when power is not"
			dialog "tempered by wisdom and a"
			dialog "sense of true compassion."
			wait()
			dialog "[Meteurengut]"
			dialog "Others like you have come"
			dialog "before me in hopes of learning"
			dialog "about the Slate of Muriniel and"
			dialog "eventually obtaining one of the"
			dialog "three accursed blades. You are probably no different from them..."
			wait()
			dialog "[Meteurengut]"
			dialog "The Slate of Muriniel is an"
			dialog "alchemic artifact that can"
			dialog "help one access unimaginable"
			dialog "power, originally developed"
			dialog "by a master of alchemy that was"
			dialog "known as Rikaseh Sumarecon."
			wait()
			dialog "[Meteurengut]"
			dialog "Sumarecon had two apprentices,"
			dialog "and after he had passed down the secrets of the Slate of Muriniel"
			dialog "to only one of his proteges, his other protege killed him and the"
			dialog "other student out of jealousy."
			wait()
			dialog "[Meteurengut]"
			dialog "Sumarecon's secrets were"
			dialog "thought to be lost forever..."
			dialog "Fortunately, years later, an"
			dialog "Alchemist named Kuprite found"
			dialog "Sumarecon's secret documents"
			dialog "containing his knowledge."
			wait()
			dialog "[Meteurengut]"
			dialog "Kuprite then taught these"
			dialog "secrets to a select group of"
			dialog "Alchemy students, one of which"
			dialog "was my ancestor, Burukesaemu."
			dialog "And so, because of my lineage,"
			dialog "I have learned those secrets."
			wait()
			dialog "[Meteurengut]"
			dialog "If you wish for me to"
			dialog "reproduce the Slate of"
			dialog "Muriniel for you, then"
			dialog "please bring me the items"
			dialog "I require to complete the"
			dialog "secret alchemic procedure."
			wait()
			dialog "[Meteurengut]"
			dialog "I shall need"
			dialog "^3355FF1 Sapphire^000000,"
			dialog "^3355FF1 Shining Stone^000000,"
			dialog "^3355FF1 Rough Elunium^000000,"
			dialog "^3355FF1 Emerald^000000, and"
			dialog "^3355FF1 Blue Gemstone^000000."
			setitem("comodo_npc",15)
			close()
		elseif mresultR == 15 then
			if ((getvar(Blue_Gemstone) > 0) and (getvar(Blue_Jewel) > 0) and (getvar(Azure_Jewel) > 0) and (getvar(Shining_Stone) > 0) and (getvar(Elunium_Stone) > 0)) then
				dialog "[Meteurengut]"
				dialog "You've already found"
				dialog "all of the items I require to"
				dialog "create the Slate of Muriniel?"
				dialog "Fantastic. Now I can begin work"
				dialog "on this. However, there is one"
				dialog "more thing I must ask of you."
				dropitem("Blue_Gemstone",1)
				dropitem("Blue_Jewel",1)
				dropitem("Azure_Jewel",1)
				dropitem("Shining_Stone",1)
				dropitem("Elunium_Stone",1)
				setitem("comodo_npc",16)
				wait()
				dialog "[Meteurengut]"
				dialog "Would you please bring me"
				dialog "^3355FF1 Cobweb^000000? You can obtain"
				dialog "them by slaying spiders in"
				dialog "Muriniel Pass which is on the"
				dialog "way to Al De Baran from here."
				wait()
				dialog "[Meteurengut]"
				dialog "I'd have asked for it"
				dialog "sooner, but I need to prepare"
				dialog "all of these stones, and I need"
				dialog "the freshest Cobwebs I can get."
				dialog "I'll make sure that these stones^FFFFFF ^000000 are ready when you return."
				close()
			else
				dialog "[Meteurengut]"
				dialog "If you wish for me to"
				dialog "reproduce the Slate of"
				dialog "Muriniel for you, then"
				dialog "please bring me the items"
				dialog "I require to complete the"
				dialog "secret alchemic procedure."
				wait()
				dialog "[Meteurengut]"
				dialog "I shall need"
				dialog "^3355FF1 Sapphire^000000,"
				dialog "^3355FF1 Shining Stone^000000,"
				dialog "^3355FF1 Rough Elunium^000000,"
				dialog "^3355FF1 Emerald^000000, and"
				dialog "^3355FF1 Blue Gemstone^000000."
				close()
			end
		elseif mresultR == 16 then
			if getvar(Spiderweb) > 0 then
				dialog "[Meteurengut]"
				dialog "I see that you've brought"
				dialog "me a Cobweb. It's hard to"
				dialog "believe, but it's integreal to"
				dialog "creating the Slate of Muriniel."
				dialog "Now, if you'll wait a moment,"
				dialog "I shall complete the slate..."
				wait()
				dropitem("Spiderweb",1)
				dialog "*^3355FFClang Clang Clang!*"
				dialog "*Zaaaaaaaaaaaaaap*"
				dialog "*Ching tink t-t-t-tap*^000000"
				setitem("comodo_npc",17)
				wait()
				dialog "[Meteurengut]"
				dialog "*Whew* It's finished."
				dialog "Please take care of this"
				dialog "slate, and know that I am"
				dialog "entrusting you with an artifact"
				dialog "that can help you access power"
				dialog "beyond your imagination..."
				wait()
				dialog "^3355FFYou have received"
				dialog "the Slate of Muriniel.^000000"
				wait()
				dialog "[Meteurengut]"
				dialog "There. You have eaten of"
				dialog "the Awakening Stone and you"
				dialog "possess the Slate of Muriniel."
				dialog "Now, you must try to obtain the"
				dialog "^3355FFBook of the Lamb^000000 if you are"
				dialog "questing for a doomed sword..."
				wait()
				dialog "[Meteurengut]"
				dialog "I know very little about"
				dialog "that artifact, and its secrets"
				dialog "are as well guarded as that of"
				dialog "the Slate of Muriniel. However,"
				dialog "I do know that a man in Morroc^FFFFFF ^000000 can create the Book of the Lamb..."
				wait()
				dialog "[Meteurengut]"
				dialog "If that man is still in"
				dialog "Morroc, then he will probably"
				dialog "recognize the subtle emanation"
				dialog "of the Awakening Stone and the"
				dialog "Slate of Muriniel from you. Best^FFFFFF ^000000 of luck to you, adventurer..."
				close()
			else
				dialog "[Meteurengut]"
				dialog "Ah, have you brought a"
				dialog "Cobweb? I know it sounds"
				dialog "strange, but I really need the"
				dialog "unique energy found only in"
				dialog "fresh Cobwebs to finish the"
				dialog "Slate of Muriniel for you..."
				close()
			end
		elseif mresultR == 17 then
			dialog "[Meteurengut]"
			dialog "You've eaten of the"
			dialog "Awakening Stone and"
			dialog "now possess the Slate of"
			dialog "Muriniel. Now, all you must"
			dialog "do is obtain the Book of the"
			dialog "Lamb. I know little about it..."
			wait()
			dialog "[Meteurengut]"
			dialog "All I can tell you is that"
			dialog "there should be a man in"
			dialog "Morroc that can create it"
			dialog "for you. A man like that can"
			dialog "sense the Slate of Muriniel,"
			dialog "so he may call out to you..."
			close()
		end
	else
		dialog "[Meteurengut]"
		dialog "The ^3355FFSlate of Muriniel^000000"
		dialog "is an ancient artifact"
		dialog "that can only be created"
		dialog "by the power of Alchemy."
		dialog "It is one of the best kept"
		dialog "secrets of my family..."
		wait()
		dialog "[Meteurengut]"
		dialog "I'm responsible for guarding"
		dialog "the secrets of its creation, but^FFFFFF ^000000 I must also share the power"
		dialog "of the slate with those that"
		dialog "prove themselves worthy of it."
		wait()
		dialog "[Meteurengut]"
		dialog "After all, power is useless"
		dialog "if it is never used. However,"
		dialog "if power is never balanced with"
		dialog "wisdom and compassion, then"
		dialog "it will inevitably do more harm"
		dialog "than good in the very end..."
		close()
	end
end

npc("morocc","Zaka",spr_4W_M_03,201,30,4,0,0,"morocc_Zaka_20130")
function morocc_Zaka_20130()
	if ((getvar(comodo_npc) == 17) or (getvar(comodo_npc) == 18) or (getvar(comodo_npc) == 19) or (getvar(comodo_npc) == 20) or (getvar(comodo_npc) == 21) or (getvar(comodo_npc) == 22)) then
		choose v[comodo_npc]
		elseif mresultQ == 17 then
			dialog "[Zaka]"
			dialog "...You there! Hold it!"
			dialog "Yes, I can feel it from"
			dialog "you... The power of the"
			dialog "Awakening Stone... And..."
			dialog "The Slate of Muriniel?"
			dialog "Finally, you've come."
			wait()
			dialog "[Zaka]"
			dialog "I'm fully aware that only"
			dialog "those that seek to own one"
			dialog "of the doomed swords would"
			dialog "trouble themselve to obtain"
			dialog "those items. All that is left for^FFFFFF ^000000 you is the Book of the Lamb..."
			wait()
			dialog "[Zaka]"
			dialog "I've been waiting for so"
			dialog "long for the opportunity to"
			dialog "create the Book of the Lamb."
			dialog "If you really want the book,"
			dialog "I will help you so long as"
			dialog "you will help me."
			wait()
			dialog "[Zaka]"
			dialog "However, creating the book"
			dialog "is a complicated process and"
			dialog "requires multiple stages of"
			dialog "preparation. Therefore, I shall"
			dialog "ask you to bring me the items"
			dialog "I require in separate batches."
			wait()
			dialog "[Zaka]"
			dialog "Alright..."
			dialog "What was it now?"
			dialog "Ah, yes. The first thing"
			dialog "I need is ^3355FF2 Snake Scales^000000,"
			dialog "so please bring those soon."
			setitem("comodo_npc",18)
			close()
		elseif mresultQ == 18 then
			if getvar(Scale_Of_Snakes) > 1 then
				dropitem("Scale_Of_Snakes",2)
				setitem("comodo_npc",19)
				dialog "[Zaka]"
				dialog "Ah, you've brought"
				dialog "the Snake Scales? Good,"
				dialog "let me take them now and"
				dialog "begin work on the Book of"
				dialog "the Lamb. Now, I need you"
				dialog "to bring me ^3355FF1 Scale Shell^000000."
				wait()
				dialog "[ZAKA"
				dialog "I know it would be more"
				dialog "convenient for you if I told"
				dialog "you everything I needed at"
				dialog "once, but actually, this way"
				dialog "is much more convenient for"
				dialog "me. I'll be waiting right here!"
				close()
			else
				dialog "[Zaka]"
				dialog "The first thing I'll"
				dialog "need to begin creating"
				dialog "the Book of the Lamb is"
				dialog "^3355FF2 Snake Scales^000000. Come back"
				dialog "to me once you get them,"
				dialog "alright? I'll be right here."
				close()
			end
		elseif mresultQ == 19 then
			if getvar(Scales_Shell) > 0 then
				dialog "[Zaka]"
				dialog "Oh, nice! You've brought"
				dialog "this Scale Shell for me,"
				dialog "right? Great, great, this will"
				dialog "help enhance the book's"
				dialog "physical durability, but it"
				dialog "still needs magic durability..."
				wait()
				dialog "[Zaka]"
				dialog "Next, you need to bring"
				dialog "me ^3355FF1 Shining Shell^000000. Hurry"
				dialog "and bring you to me before"
				dialog "I finish this part of the process, okay? Wait, actually, I think"
				dialog "you can take your time..."
				dropitem("Scales_Shell",1)
				setitem("comodo_npc",20)
				close()
			else
				dialog "[Zaka]"
				dialog "I'll be waiting right"
				dialog "here while you go and"
				dialog "look for a ^3355FFScale Shell^000000"
				dialog "that you can bring to me."
				dialog "I'll need that in order to"
				dialog "finish this Book of the Lamb."
				close()
			end
		elseif mresultQ == 20 then
			if getvar(Shining_Scales) > 0 then
				dialog "[Zaka]"
				dialog "Ah, you're just in time!"
				dialog "Have you got the Shining"
				dialog "Scale? Perfect. Now, there"
				dialog "is just one more item that"
				dialog "I want to ask you to bring me:"
				dialog "^3355FF1 Stinky Scale^000000. Easy, right?"
				dropitem("Shining_Scales",1)
				setitem("comodo_npc",21)
				wait()
				dialog "[Zaka]"
				dialog "The energy of a Stinky"
				dialog "Scale can be used to"
				dialog "regulate the power of"
				dialog "incredibly potent artifacts."
				dialog "Without that item, the Book"
				dialog "of the Lamb isn't much use..."
				close()
			else
				dialog "[Zaka]"
				dialog "If you want me to"
				dialog "finish this Book of"
				dialog "the Lamb, you need"
				dialog "to come back here with"
				dialog "^3355FF1 Shining Scale^000000. There's"
				dialog "no way to work around it..."
				close()
			end
		elseif mresultQ == 21 then
			if getvar(Rotten_Scale) > 0 then
				dialog "[Zaka]"
				dialog "What's that sme--?"
				dialog "Oh, right. I asked you to"
				dialog "bring me a Stinky Scale."
				dialog "Now I can finally complete"
				dialog "this Book of the Lamb! I've"
				dialog "been looking forward to this..."
				wait()
				dialog "^3355FFZaka completes"
				dialog "the creation of the"
				dialog "Book of the Lamb.^000000"
				dropitem("Rotten_Scale",1)
				setitem("comodo_npc",22)
				wait()
				dialog "[Zaka]"
				dialog "What...?!"
				dialog "That's it? Well, um,"
				dialog "it's done. That felt"
				dialog "rather anticlimatic, but"
				dialog "I can finally see this"
				dialog "thing with my own eyes!"
				wait()
				dialog "[Zaka]"
				dialog "Alright, you've eaten of the"
				dialog "Awakening Stone, obtained the"
				dialog "Slate of Muriniel, and now have"
				dialog "the Book of the Lamb. You're"
				dialog "getting very close to owning"
				dialog "one of the doomed swords."
				wait()
				dialog "[Zaka]"
				dialog "There is man that you"
				dialog "must find in Comodo named"
				dialog "^3355FFWon^000000. He will judge you, and"
				dialog "then give you the proof that"
				dialog "shows you are qualified to"
				dialog "be a doomed sword bearer."
				wait()
				dialog "[Zaka]"
				dialog "He looks like a simple"
				dialog "man, but he is a true living"
				dialog "legend renown for his wisdom."
				dialog "If you really want a doomed"
				dialog "sword, you need to speak to"
				dialog "Won and ask him to guide you."
				close()
			else
				dialog "[Zaka]"
				dialog "The last thing that I need"
				dialog "to complete the Book of the"
				dialog "Lamb is ^3355FF1 Stinky Scale^000000. Please"
				dialog "bring that to me as soon as"
				dialog "you can. Thank you for being"
				dialog "patient, young adventurer."
				close()
			end
		elseif mresultQ == 22 then
			dialog "[Zaka]"
			dialog "Now, you need to visit a"
			dialog "man named ^3355FFWon^000000 in Comodo"
			dialog "in order to get the proof that"
			dialog "shows that you're qualified to"
			dialog "possess a doomed sword."
			dialog "Hopefully, you'll get it..."
			close()
		end
	else
		dialog "[Zaka]"
		dialog "Have you heard that swords"
		dialog "with the power to change the"
		dialog "world actually exist? It's true"
		dialog "that three swords contain this"
		dialog "immense power, but they are"
		dialog "also bound to powerful curses."
		wait()
		dialog "[Zaka]"
		dialog "Therefore, the Mysteltainn,"
		dialog "Ogretooth, and Executioner"
		dialog "have all been sealed away."
		dialog "Only a truly great adventurer"
		dialog "can release these doomed^FFFFFF ^000000 swords and actually wield them..."
		close()
	end
end

npc("comodo","Won",spr_1_M_MOC_LORD,232,87,4,0,0,"comodo_Won_23287")
function comodo_Won_23287()
	if ((getvar(comodo_npc) == 22) or (getvar(comodo_npc) == 23) or (getvar(comodo_npc) == 24)) then
		choose v[comodo_npc]
		elseif mresultP == 22 then
			dialog "[Won]"
			dialog "Hmm...? It's been a while"
			dialog "since someone came here to"
			dialog "get the qualification to own a"
			dialog "doomed sword. Yeah, I know"
			dialog "that's why you're here..."
			wait()
			dialog "[Won]"
			dialog "To a man like me, the"
			dialog "presenses of the Book of the"
			dialog "Lamb, the Slate of Muriniel,"
			dialog "and one that has eaten of the"
			dialog "Awakening Stone are unmistakable. ^FFFFFF ^000000"
			wait()
			dialog "[Won]"
			dialog "Now, listen. I personally"
			dialog "don't care why you want a"
			dialog "doomed sword. If you abuse"
			dialog "its power, you'll pay the price"
			dialog "eventually. I'm only here to"
			dialog "make sure you're up to snuff."
			wait()
			dialog "[Won]"
			dialog "Of course, I also want to"
			dialog "make sure that you don't bring"
			dialog "great suffering to the world"
			dialog "using a doomed sword. So I'm"
			dialog "going to check if you're, you"
			dialog "know, balanced and all that."
			wait()
			dialog "[Won]"
			dialog "Alright, let me take"
			dialog "a look into your eyes..."
			dialog "Yeah, alright. You seem to"
			dialog "understand the value of the"
			dialog "Awakening Stone, Book of the^FFFFFF ^000000 Lamb, and the Slate of Muriniel."
			wait()
			dialog "[Won]"
			dialog "Yeah, I can't sense any"
			dialog "ill intent from you at all."
			dialog "That's very good. Huh, you"
			dialog "seem pretty experienced in battle, so I'm sure you have the stamina"
			dialog "to handle to a doomed sword..."
			wait()
			dialog "[Won]"
			dialog "Ah, but most importantly,"
			dialog "you don't strike me as crazy"
			dialog "at all. Alright, we're done here. Take this Stamp of Muriniel:"
			dialog "it's the official qualification"
			dialog "token to own a doomed sword."
			wait()
			dialog "^3355FFYou receive the"
			dialog "Stamp of Muriniel.^000000"
			setitem("comodo_npc",23)
			wait()
			dialog "[Won]"
			dialog "Mysteltainn, Executioner,"
			dialog "and Ogretooth... These are"
			dialog "the forbidden blades, the"
			dialog "doomed swords. Remember"
			dialog "that you cannot choose"
			dialog "which weapon you'll wield..."
			wait()
			dialog "[Won]"
			dialog "These swords have a will"
			dialog "of their own. The doomed"
			dialog "sword that finds you most"
			dialog "worthy of it will choose you."
			dialog "You can understand that, right?"
			wait()
			dialog "[Won]"
			dialog "Now that you have this"
			dialog "qualification, I'm supposed"
			dialog "to direct you to the Sages"
			dialog "that can help lead you to"
			dialog "the doomed swords."
			wait()
			dialog "[Won]"
			dialog "The first Sage that you"
			dialog "must visit is ^3355FFSage Yklah^000000"
			dialog "in the city of ^3355FFJuno^000000 in the"
			dialog "Schwaltzvalt Republic."
			dialog "Your quest to obtain a"
			dialog "doomed sword isn't over yet..."
			close()
		elseif mresultP == 23 then
			dialog "[Won]"
			dialog "Now that you have this"
			dialog "qualification, I'm supposed"
			dialog "to direct you to the Sages"
			dialog "that can help lead you to"
			dialog "the doomed swords."
			wait()
			dialog "[Won]"
			dialog "The first Sage that you"
			dialog "must visit is ^3355FFSage Yklah^000000"
			dialog "in the city of ^3355FFJuno^000000 in the"
			dialog "Schwaltzvalt Republic."
			dialog "Your quest to obtain a"
			dialog "doomed sword isn't over yet..."
			close()
		elseif mresultP == 24 then
			dialog "1 2 3 4 5 6 7 8 9 10 1 2 3 4 5"
			close()
		end
	else
		dialog "[Won]"
		dialog "The visitors and even the"
		dialog "people that live here always"
		dialog "seem to be having such a good"
		dialog "time, just lounging in leisure."
		dialog "It's hard to believe the War"
		dialog "of the Witch even happened..."
		wait()
		dialog "[Won]"
		dialog "But not everyone here in"
		dialog "Comodo can afford to relax"
		dialog "so easily. I, for one, have"
		dialog "the responsibility of seeking"
		dialog "out those that are worthy of,^FFFFFF ^000000 well, I don't know if I can say..."
		wait()
		dialog "[Won]"
		dialog "You just have to"
		dialog "trust that I've got an"
		dialog "incredibly important"
		dialog "job to do. I mean, sure,"
		dialog "it doesn't look like I'm doing"
		dialog "anything right now, but..."
		close()
	end
end
