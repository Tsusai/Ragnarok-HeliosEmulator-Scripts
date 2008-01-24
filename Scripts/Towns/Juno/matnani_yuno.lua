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

npc("yuno","A Citizen of Juno",spr_8_F,157,87,4,0,0,"yuno_A_Citizen_of_Juno_15787")
function yuno_A_Citizen_of_Juno_15787()
	dialog "[Shalima]"
	dialog "When you go north from Al De Baran, you will arrive at 'Elmeth Plateau,' a place covered with molten rock."
	wait()
	dialog "[Shalima]"
	dialog "On the top of a mountain connected to the plateau, you can find a bridge which leads you to this place!, ^3355FFJuno,^000000 the city of Sages."
	wait()
	if (getvar(comodo_npc) == 23) then
		dialog "[Shalima]"
		dialog "Oh...?"
		dialog "what is that shining object you're carrying with you? Isn't that...?"
		wait()
		dialog "[Shalima]"
		dialog "The ^3355FFStamp of Muriniel^000000? What a surprise!"
		wait()
		dialog "[Shalima]"
		dialog "When you go East from the entrance of Juno, you will find the Street of Book Stores. If you have some time, please visit ^3355FFSir Yklah^000000 who is one of 3 well-known sages in Juno."
		wait()
		dialog "[Shalima]"
		dialog "I believe he may take some special interest in the Stamp you are carrying."
		close()
	else
		dialog "[Shalima]"
		dialog "In Juno, you can visit places such as the 'Juphero Plaza,' 'Juno Conference Hall,' 'Schweicherbil Magic Academy', or the 'Monster Museum.' These places are famous around the world!"
		wait()
		dialog "[Shalima]"
		dialog "You may also wish to drop by the 'Sage Castle,' where people can change their jobs into 'Sage,' one of the more unique classes."
		wait()
		dialog "[Shalima]"
		dialog "If you're interested in the Sage class, why don't you go look around the castle?"
		close()
	end
end

npc("yuno","Freidrich",spr_4_F_NOVICE,184,173,4,0,0,"yuno_Freidrich_184173")
function yuno_Freidrich_184173()
	local imprezza = math.random(1,5)
	if imprezza == 1 then
		dialog "[Freidrich]"
		dialog "^3355FFJuno^000000 is kept aloft in the air by an ancient and mysterious force."
		wait()
		dialog "[Freidrich]"
		dialog "This power is said to come from a relic from an ancient civilization called ^3355FFJupheros^000000 which existed here long before Juno."
		wait()
		dialog "[Freidrich]"
		dialog "Research revealed that Juno's power source based on ^3355FFPieces of Ymir's Heart^000000. I hear that this power source is found where Jupheros used to exist."
		wait()
		dialog "[Freidrich]"
		dialog "Since many scholars have been coming to Juno to study and research this power source, our city is basically a well known mecca for scholars."
		close()
	else
		dialog "[Freidrich]"
		dialog "The city of Sages,"
		dialog "^3355FFJuno,^000000 is made of"
		dialog "three islands."
		wait()
		dialog "[Freidrich]"
		dialog "These are Solomon, the island of honor, Mineta, the island of prosperity, and Snotora, the island of knowledge."
		wait()
		dialog "[Freidrich]"
		dialog "The location of each island is"
		dialog "North-west : Solomon"
		dialog "North-east : Snotora"
		dialog "South : Mineta."
		close()
	end
end

npc("yuno","Sage Yklah",spr_4_M_JOB_WIZARD,261,99,4,0,0,"yuno_Sage_Yklah_26199")
function yuno_Sage_Yklah_26199()
	if ((getvar(comodo_npc) == 23) or (getvar(comodo_npc) == 24) or (getvar(comodo_npc) == 25)) then
		mresult = getvar("comodo_npc")	
		elseif mresult == 23 then
			dialog "[Yklah]"
			dialog "- ! ! ! -"
			wait()
			dialog "[Yklah]"
			dialog "That item..."
			dialog "That shining item you're carrying, isn't that...? ^3355FFStamp of Muriniel^000000?! Oh! What a surprise!"
			wait()
			dialog "[Yklah]"
			dialog "I've heard that it's from a hot and dry land, but I never dreamed I'd be able to see it with my own eyes!"
			wait()
			dialog "[Yklah]"
			dialog "Who are you...? Who are you carrying this legendary item for?"
			wait()
			local mresulta = menu("(Show him the slate)","I'm a genius!","I'm a GM!")
			if mresulta == 1 then
				dialog "[Yklah]"
				dialog "...I can't believe my eyes! Only a chosen few can possess the Stamp of Muriniel..."
				wait()
				dialog "[Yklah]"
				dialog "Oh yes. That's right, that's right. As far as I can tell, you don't seem to understand how to use this item..."
				wait()
				dialog "[Yklah]"
				dialog "There is one old song in Juno, about ^3355FF'The Doomed Sword'^000000 that you may have been looking for."
				wait()
				dialog "[Yklah]"
				dialog "'Even if you're running toward a light on the other side of the mist, you can't reach it.'"
				wait()
				dialog "[Yklah]"
				dialog "'The chime of the bell from across the valley cannot be held in your hand.'"
				wait()
				dialog "[Yklah]"
				dialog "Yes, it's sort of a difficult song to understand, but it's supposed to express how Sages in ancient times feel about obtaining the doomed swords."
				dialog "that's how exactly sages in ancient ages felt about obtaining the doomed sword."
				wait()
				dialog "[Yklah]"
				dialog "If you're still set on the idea of obtaining the doomed sword, come and talk to me sometime."
				wait()
				dialog "[Yklah]"
				dialog "As you already possess the Stamp of Muriniel, I am more than willing to help you."
				setitem("comodo_npc",24)
				close()
			elseif mresulta == 2 then
				dialog "[Yklah]"
				dialog "Hmm?"
				dialog "A genius you say? How can you say that in a city full of wise men? That's nothing special."
				wait()
				dialog "[Yklah]"
				dialog "Plus, if you're a colleague, I think I would remember you. I don't tend to forget people that I've met at least once."
				close()
			elseif mresulta == 3 then
				dialog "[Yklah]"
				dialog "A..."
				dialog "GM?"
				wait()
				dialog "[Yklah]"
				dialog "I don't understand what you're talking about. But there's an ancient Juno song about this GM you speak of..."
				wait()
				dialog "[Yklah]"
				dialog "'^FF3355Impersonating GMs is punishable with a permanent account block^000000.' But what could it possibly mean?"
				wait()
				dialog "^3355FFHow depressing!^000000"
				close()
			end
			elseif mresult == 24 then
				if ((getvar(Claw_Of_Desert_Wolf) > 2) and (getvar(Tooth_Of_Bat) > 9) and (getvar(Piece_Of_Egg_Shell) > 0)) then
					dialog "[Yklah]"
					dialog "Hmm! Good job, you brought all of the items. Try inserting them in the grooves."
					wait()
					dialog "[Yklah]"
					dialog "To be honest, I thought about it before, but this is the first time that I'll actually try this experiment. Go ahead, I want to see what happens!"
					wait()
					dialog "^3355FFYou inserted items"
					dialog "in the grooves .^000000"
					dropitem("Claw_Of_Desert_Wolf",3)
					dropitem("Tooth_Of_Bat",10)
					dropitem("Piece_Of_Egg_Shell",1)
					wait()
					dialog "^3355FF*Crank Crank*^000000"
					dialog "^3355FFYou hear a strange sound come from inside the statue.^000000"
					wait()
					dialog "^3355FF*Click*"
					dialog "*Click Click*^000000"
					wait()
					dialog "^3355FFA small hole opened near the foot of the statue, and a ^9999FF Stamp of Muriniel^3355FF came out of the hole.^000000"
					wait()
					dialog "^3355FFYou got ^9999FFA piece from the Stamp of Muriniel^3355FF.^000000"
					wait()
					dialog "[Yklah]"
					dialog "Huh?! That piece seems to fit to the stamp you have. Why don't you try joining them together?"
					wait()
					dialog "^3355FFYou join the two stamps together.^000000"
					wait()
					dialog "^3355FFYou got the"
					dialog "True Stamp of Muriniel.^000000"
					setitem("comodo_npc",25)
					wait()
					dialog "[Yklah]"
					dialog "Oh? This pattern is...!! Ah, now I see how it works. Now, please listen..."
					wait()
					dialog "[Yklah]"
					dialog "I'd like you to bring the slate to Snotora, the island of knowledge, that is a part of Juno. You will find a Statue of the Goddess Snotora somewhere on the island."
					wait()
					dialog "[Yklah]"
					dialog "Near the statue, you will find ^3355FFSyklah^000000, one of well-known 3 sages in Juno. Speak to him, he will tell you something about the pattern on the slate."
					wait()
					dialog "[Yklah]"
					dialog "May God"
					dialog "light your way..."
					close()
				else
					dialog "[Yklah]"
					dialog "Let me tell you everything I know about the doomed sword. There's an old song about the legendary doomed sword..."
					wait()
					dialog "[Yklah]"
					dialog "^3355FFYou, the one with sincere faith, who humbly accepts the prosperity of Mineta, the knowledge of Snotora and the honor of Solomon...^000000"
					wait()
					dialog "[Yklah]"
					dialog "^3355FFI hereby grant you this column of light. The Three Sages of Juno will be your guide^000000."
					wait()
					dialog "[Yklah]"
					dialog "Well, if you already know a little bit about Juno, you'd know that Juno consists of 3 islands that represent propsperity, knowledge and honor."
					wait()
					dialog "[Yklah]"
					dialog "The 3 sages described in the song represent each island. By now, you've probably guessed that I am one of them."
					wait()
					dialog "[Yklah]"
					dialog "There is a Juno tradition in which the three best Sages are chosen to represent each of Juno's islands."
					wait()
					dialog "[Yklah]"
					dialog "As one of the three, I will serve as one of your guides in this part of your journey for the doomed sword."
					wait()
					dialog "^3355FFYklah pointed at a pole of the statue with his finger, and you see that there is a strange pattern engraved on the pole.^000000"
					wait()
					dialog "[Yklah]"
					dialog "Now, look at this. This statue was erected to pay tribute to one of the first 3 sages. When you look into the bottom of the pole, you will see several small grooves."
					wait()
					dialog "[Yklah]"
					dialog "If you insert some items in the grooves, we may get some more clues relating to the doomed sword."
					wait()
					dialog "[Yklah]"
					dialog "From the stories that I've been told by great Sages, I've figured exactly which items you'll need to place into those grooves."
					wait()
					dialog "[Yklah]"
					dialog "You will need..."
					dialog "^3355FF3 Claw of Desert Wolf^000000"
					dialog "^3355FF10 Tooth of Bat^000000"
					dialog "^3355FF1 Piece of Egg Shell^000000."
					wait()
					dialog "[Yklah]"
					dialog "Return once you have obtained those items, and we will speak of the doomed sword again."
					wait()
					dialog "[Yklah]"
					dialog "For your information, you can obtain the claw of desert wolf from the Morroc desert, and the tooth of bat can be found in most caves around the world."
					wait()
					dialog "[Yklah]"
					dialog "Lastly, the piece of egg shell can be found from solid egg monsters in the Payon cave."
					close()
				end
			elseif mresult == 25 then
				dialog "[Yklah]"
				dialog "From the stories that I've been told by great Sages, I've figured exactly which items you'll need to place into those grooves."
				wait()
				dialog "[Yklah]"
				dialog "You will need..."
				dialog "^3355FF3 Claw of Desert Wolf^000000"
				dialog "^3355FF10 Tooth of Bat^000000"
				dialog "^3355FF1 Piece of Egg Shell^000000."
				wait()
				dialog "[Yklah]"
				dialog "Return once you have obtained those items, and we will speak of the doomed sword again."
				wait()
				dialog "[Yklah]"
				dialog "For your information, you can obtain the claw of desert wolf from the Morroc desert, and the tooth of bat can be found in most caves around the world."
				wait()
				dialog "[Yklah]"
				dialog "Lastly, the piece of egg shell can be found from solid egg monsters in the Payon cave."
				close()
		end
	else
		dialog "[Yklah]"
		dialog "^3355FFJuphero^000000..."
		dialog "That was the name of the city that once existed in ancient times."
		wait()
		dialog "[Yklah]"
		dialog "The most intelligent and talented people of that time lived there, harnessing the pieces of Ymir's heart to power their civilization."
		wait()
		dialog "[Yklah]"
		dialog "Unfortunately, they happened to abuse that great power and somehow destroyed themselves."
		wait()
		dialog "[Yklah]"
		dialog "If you long to acquire God's knowledge, you must first be humble. Otherwise..."
		close()
	end
end

npc("yuno","Sage Syklah",spr_4_M_JOB_WIZARD,305,207,4,0,0,"yuno_Sage_Syklah_305207")
function yuno_Sage_Syklah_305207()
	if ((getvar(comodo_npc) == 25) or (getvar(comodo_npc) == 26) or (getvar(comodo_npc) == 27)) then
		choose getvar("comodo_npc")
		elseif mresult_ == 25 then
			dialog "[Syklah]"
			dialog "What's that?!"
			dialog "Can it be the Stamp of Muriniel?"
			wait()
			dialog "[Syklah]"
			dialog "Now, we shall battle to the death to see if you are worthy of possessing this item. Prepare yourself!"
			wait()
			dialog "[Syklah]"
			dialog "..."
			dialog "Muhahahahaha!!! Don't worry, I was only messing with you. Yklah told me that you might be coming."
			wait()
			dialog "[Syklah]"
			dialog "It is said that The Stamp of Muriniel chooses its owner by its own will, and will not appear otherwise."
			wait()
			dialog "[Syklah]"
			dialog "Even though I am one of the three great Sages of Juno, I've never even seen this item before."
			wait()
			dialog "[Syklah]"
			dialog "Yklah gave me an idea about the Stamp of Muriniel you've brought, so we'll try it out as well."
			wait()
			dialog "[Syklah]"
			dialog "The pattern engraved on the Stamp of Muriniel has shapes that are similar to the pattern engraved on this^3355FFStatue of the Goddess Snotora^000000."
			wait()
			dialog "^3355FFYou see for yourself that, indeed, the pattern on the statue of the Goddess Snotora matches that on the Stamp of Muriniel.^000000"
			wait()
			dialog "[Syklah]"
			dialog "When I was young, I learned about a legendary stamp ink related to this statue. But at the time, it made no sense to me. Just how legendary can stamp ink be?"
			wait()
			dialog "[Syklah]"
			dialog "But now I believe that this stamping ink can be used with this Stamp of Muriniel."
			wait()
			dialog "[Syklah]"
			dialog "But even though I've learned how to make this special stamping ink, it is too difficult for me to collect the materials that are necessary to create it."
			wait()
			dialog "[Syklah]"
			dialog "Okay, if you're ready, please bring me the following items. I feel like making legendary red ink, so bring me..."
			wait()
			dialog "[Syklah]"
			dialog "^3355FF20 Red Herb^000000,"
			dialog "^3355FF5 Stone^000000 and"
			dialog "^3355FF1 Stone Heart^000000."
			dialog "The Stone Heart will be used as a bottle to hold this special ink."
			wait()
			dialog "[Syklah]"
			dialog "I think that's all I need. Anyway, I believe that gathering these items shouldn't be a difficult task for you. Good luck to you."
			setitem("comodo_npc",26)
			close()
		elseif mresult_ == 26 then
			if ((getvar(Stone) > 4) and (getvar(Stone_Heart) > 0) and (getvar(Red_Herb) > 19)) then
				dialog "[Syklah]"
				dialog "Hahaha...!"
				dialog "So you've already gathered the items I've asked for. Good, good. Let's get started..."
				dropitem("Stone",5)
				dropitem("Stone_Heart",1)
				dropitem("Red_Herb",20)
				wait()
				dialog "^3355FFSage Syklah grinded the stones and stone heart and molded them into a strange shape.^000000"
				wait()
				dialog "^3355FFHe then ground the red herbs and placed them into the stone mold.^000000"
				wait()
				dialog "^3355FFAfterwards, he then took a strangely shaped capsule from his pocket, sprinkled some liquid from it, and began to chant a spell...^000000"
				wait()
				dialog "[Syklah]"
				dialog "Haooooh..."
				dialog "Doo de doo de~ Dah dah dah Dan dan dan Dah dah dah! Nu ha nu ha nu hahaha... Moo hee moo hee moo hee~"
				dialog "- Pah ahhhh !! -"
				wait()
				dialog "^3355FFThe Stamping Ink of Muriniel has been created, and has been given to you by the sage Syklah.^000000"
				setitem("comodo_npc",27)
				wait()
				dialog "[Syklah]"
				dialog "Now, with this stamping ink, you are able to use the Stamp of Muriniel."
				wait()
				dialog "[Syklah]"
				dialog "Now, I don't think you can use the stamp just anywhere.  After all, it is a legendary item."
				wait()
				dialog "[Syklah]"
				dialog "Please visit the Third Sage ^3355FFEsklah^000000 who stays on Solomon, the island of prosperity, here in Juno."
				wait()
				dialog "[Syklah]"
				dialog "He will be able to tell you more about where to use this stamp. However, be careful. He is the most fastidious sage among all of us."
				close()
			else
				dialog "[Syklah]"
				dialog "I hope you will bring me what I need to make the 'Stamp of Muriniel' ink soon."
				wait()
				dialog "[Syklah]"
				dialog "I will need..."
				dialog "^3355FF20 Red Herb^000000,"
				dialog "^3355FF5 Stone^000000 and"
				dialog "^3355FF1 Stone Heart^000000."
				close()
			end
		elseif mresult_ == 27 then
			dialog "[Syklah]"
			dialog "Please visit ^3355FFEsklah^000000 on the island of prosperity, Solomon. But be careful. He is the most exacting Sage out of all of us."
			close()
		end
	else
		dialog "[Syklah]"
		dialog "The people here keep talking of some suspicious man living in Juno."
		wait()
		dialog "[Syklah]"
		dialog "Supposedly, he's pretty dangerous, and is always immersing himself in some kind of research."
		wait()
		dialog "[Syklah]"
		dialog "People already consider him a 'Mad Scientist,' wasting his time studying impractical things beyond the understanding of normal people."
		wait()
		dialog "[Syklah]"
		dialog "It's rumored that this scientist is responsible for creating 'Blazer,' a monster made of magic flame."
		wait()
		dialog "[Syklah]"
		dialog "It's a dangerous and fearsome monster that casts spells like Fire Bolt and Fire Ball that lives outside of Juno."
		close()
	end
end

npc("yuno","Sage Esklah",spr_4_M_JOB_WIZARD,213,298,4,0,0,"yuno_Sage_Esklah_213298")
function yuno_Sage_Esklah_213298()
	if ((getvar(comodo_npc) == 27) or (getvar(comodo_npc) == 28) or (getvar(comodo_npc) == 29) or (getvar(comodo_npc) == 30)) then
		choose getvar("comodo_npc")
		elseif mresult == 27 then
			dialog "[Esklah]"
			dialog "Hm...?"
			dialog "You must be the one who holds the Stamp of Muriniel..."
			wait()
			dialog "[Esklah]"
			dialog "Heh, you don't look like much. But even though you're ordinary looking, you possess the legendary item!"
			wait()
			dialog "[Esklah]"
			dialog "Only a few people in Rune-Midgard's history have been chosen to use the ^3355FFStamp of Muriniel.^000000"
			wait()
			dialog "[Esklah]"
			dialog "However, it's my job to test whether or not you are truly qualified to possess it."
			wait()
			dialog "[Esklah]"
			dialog "Let me tell you about the stamp craftman ^3355FFMuriniel^000000."
			wait()
			dialog "[Esklah]"
			dialog "This man lived long ago, somewhere in Mt. Mjornir. He was eager in his studies, and wanted to recreate every pattern that existed in the world."
			wait()
			dialog "[Esklah]"
			dialog "Believing that people were obstacles to his study of patterns, he lived in seclusion, studying alone."
			wait()
			dialog "[Esklah]"
			dialog "While studying patterns one day, he happened to find a magic circle that connected this world to another world."
			wait()
			dialog "[Esklah]"
			dialog "That circle was totally different from ones used by Mages, Wizards or sages. This pattern had the power to summon an evil creature from the other world."
			wait()
			dialog "[Esklah]"
			dialog "In order to summon the creature, the pattern must be created in the perfect location. Muriniel began to explore various places and finally found the spot he was looking for."
			wait()
			dialog "[Esklah]"
			dialog "The place he found is now ^3355FFMuriniel's Cottage^000000. But to see that place, you will first need the ^3355FFCompass of Muriniel^000000."
			wait()
			dialog "[Esklah]"
			dialog "Heh heh. That's right, making the Compass of Muriniel will be my test for you."
			wait()
			dialog "[Esklah]"
			dialog "Now listen carefully, I won't tell you more than once. I will need you to collect some items to make the ^3355FFCompass of Muriniel^000000."
			wait()
			dialog "[Esklah]"
			dialog "Bring me..."
			dialog "^3355FF2 Iron Ore^000000,"
			dialog "^3355FF10 Acorn^000000 and"
			dialog "^3355FF5 Decayed Nail^000000."
			wait()
			dialog "[Esklah]"
			dialog "For someone seeking the doomed sword, this should be a relatively simple task. Now go, and bring me what I have asked."
			setitem("comodo_npc",28)
			close()
		elseif mresult == 28 then
			if ((getvar(Iron_Ore) > 1) and (getvar(Acorn) > 9) and (getvar(Decayed_Nail) > 4)) then
				dialog "[Esklah]"
				dialog "Let's see."
				dialog "2 Iron Ore..."
				dialog "10 Acorn..."
				dialog "5 Decayed Nail..."
				dialog "Good, that's everything!"
				dropitem("Iron_Ore",2)
				dropitem("Acorn",10)
				dropitem("Decayed_Nail",5)
				wait()
				dialog "[Esklah]"
				dialog "Good work. Now, while I make the body of the compass, you can go and bring me the rest of the items I'll need."
				wait()
				dialog "[Esklah]"
				dialog "Muhahahaha! What's with that look? You know how this kind of business gets done!"
				wait()
				dialog "[Esklah]"
				dialog "Now stop whining"
				dialog "and go bring..."
				dialog "^3355FF2 Brigan^000000 and"
				dialog "^3355FF1 Phracon^000000."
				dialog "Now isn't that simple?"
				dialog "Muhahahaha!!"
				setitem("comodo_npc",29)
				close()
			else
				dialog "[Esklah]"
				dialog "Now listen carefully. I won't tell you more than once. I need some items to create the ^3355FFCompass of Muriniel^000000."
				wait()
				dialog "[Esklah]"
				dialog "Bring me..."
				dialog "^3355FF2 Iron Ore^000000,"
				dialog "^3355FF10 Acorn^000000, and"
				dialog "^3355FF5 Decayed Nail^000000."
				close()
			end
		elseif mresult == 29 then
			if ((getvar(Brigan) > 1) and (getvar(Phracon) > 0)) then
				dialog "[Esklah]"
				dialog "Now..."
				dialog "Show me"
				dialog "what you brought."
				dialog "That's 2 Brigan and..."
				dialog "1 Phracon. Hmm. Very good."
				dialog "Now let me get to work."
				dropitem("Brigan",2)
				dropitem("Phracon",1)
				wait()
				dialog "[Esklah]"
				dialog "Hmm..."
				dialog "Let's see..."
				dialog "There, it's finished."
				wait()
				dialog "^3355FFSage Esklah handed you the ^3355FFCompass of Muriniel^000000."
				wait()
				dialog "^3355FFIn the direction the compass is pointing, some words are engraved...^000000"
				wait()
				dialog "^3355FF- Mountain Mjornir -^000000"
				dialog "^3355FF- mjolnir_02 . 170 193 -^000000"
				wait()
				dialog "[Esklah]"
				dialog "Look at the middle of compass carefully to find the place you must use the stamp. I wish you the best of luck in your journey."
				setitem("comodo_npc",30)
				close()
			else
				dialog "[Esklah]"
				dialog "Listen carefully!"
				dialog "I want you to bring..."
				dialog "^3355FF2 Brigan^000000 and"
				dialog "^3355FF1 Phracon^000000"
				dialog "Isn't that simple and easy?"
				dialog "Muhahaha! Now, get a move on!"
				close()
			end
		elseif mresult == 30 then
			dialog "^3355FFYou look into the compass of Muriniel and take note of the engraving...^000000"
			wait()
			dialog "^3355FF- Mountain Mjornir -^000000"
			dialog "^3355FF- mjolnir_02 . 170 193 -^000000"
			close()
		end
	else
		dialog "[Esklah]"
		dialog "I remember watching a harmless"
		dialog "piece of paper floating"
		dialog "through the air..."
		wait()
		dialog "[Esklah]"
		dialog "As I was thinking of how wonderfully poetic that image was, that paper suddenly attacked me! Me, one of Juno's greatest Sages!"
		wait()
		dialog "[Esklah]"
		dialog "I tried defending myself with my trusty sword, but being paper-thin, that monster managed to dodge all of my blows. I had to cast magic in order to destroy it."
		wait()
		dialog "[Esklah]"
		dialog "Later, I learned that monster is known as ^3355FFThe Paper^000000."
		wait()
		dialog "[Esklah]"
		dialog "It used to be a part of an old book that contained a lot of ancient knowledge about Juno, but somehow, became a monster. Isn't that peculiar?"
		close()
	end
end

npc("mjolnir_02","Muriniel's Cottage",spr_HIDDEN_NPC,170,193,4,0,0,"mjolnir_02_Muriniel's_Cottage_170193")
function mjolnir_02_Muriniel's_Cottage_170193()
	if ((getvar(comodo_npc) == 30) or (getvar(comodo_npc) == 31)) then
		choose getvar("comodo_npc")
		elseif mresult == 30 then
			dialog "^3355FFMuriniel's pattern is carved into the wooden floor.^000000"
			wait()
			dialog "^3355FFUsing the ^9999FFStamp of Muriniel^3355FF and the ^9999FFStamping Ink of Muriniel^3355FF, you fit the stamp into the pattern on the floor.^000000"
			wait()
			dialog "^3355FF*Woon Woon*^000000"
			wait()
			dialog "^3355FFYou can faintly hear someone's voice softly in the distance.^000000"
			wait()
			dialog "[Muriniel's Recording]"
			dialog "You, who are in the future, let me introduce myself."
			wait()
			dialog "[Muriniel's Recording]"
			dialog "My name is Muriniel, the stamp craftman living in your past. I appreciate that you have overcome many obstacles to reach this place."
			wait()
			dialog "[Muriniel's Recording]"
			dialog "However, you must first prove that you are qualified to wield the great power of the doomed sword."
			wait()
			dialog "[Muriniel's Recording]"
			dialog "The great Sages in Juno have helped me to install this magical system in my cottage to leave my message to you, adventurer in the future."
			wait()
			dialog "[Muriniel's Recording]"
			dialog "I know that you seek more power by obtaining a doomed sword. But not just anyone can handle the might of a doomed sword."
			wait()
			dialog "[Muriniel's Recording]"
			dialog "And I shudder to think what would happen if such power were to fall into evil hands. The test I have prepared cannot begin until Autumn follows a hot summer."
			wait()
			dialog "[Muriniel's Recording]"
			dialog "I shall give you an item that  promises you of the quest I will give you in the future. Return to this place when the trees begin to shed their leaves..."
			wait()
			dialog "[Muriniel's Recording]"
			dialog "Until that time comes, prepare yourself. And stay alive."
			wait()
			dialog "^3355FF*Bzzzt!*"
			dialog "*Bzzzzzzt--*^000000"
			wait()
			dialog "^3355FFSuddenly, the Stamp of Muriniel and the Compass of Muriniel break open to reveal a small, shining object.^000000"
			wait()
			dialog "^3355FFYou have received the ^9999FFDignity of Muriniel^000000."
			setitem("comodo_npc",31)
			close()
		elseif mresult == 31 then
			dialog "^3355FFYou can faintly hear someone's voice coming from somewhere...^000000"
			wait()
			dialog "[Muriniel's Recording]"
			dialog "Please remember to return to this place when the trees begin to shed their leaves. Until then, prepare yourself and stay alive."
			close()
		end
	else
		dialog "'Muriniel's Cottage'"
		wait()
		dialog "^3355FFFor some reason, that message is written in this place. But what could be so significant about a cottage like this?^000000"
		close()
	end
end

npc("yuno","Juno Granny",spr_8_F_GRANDMOTHER,337,227,4,0,0,"yuno_Juno_Granny_337227")
function yuno_Juno_Granny_337227()
	local fourzeroracle = math.random(1,50)
	if fourzeroracle == 1 then
		if getvar(VAR_MONEY) > 999 then
			dialog "[Granny]"
			dialog "So, do you enjoy candy?"
			wait()
			dialog "^3355FFGranny hands you some candy^000000."
			wait()
			dialog "[Granny]"
			dialog "You've already chosen. It doesn't matter whether or not you get this candy. That doesn't matter at all. You have to understand why it's happened."
			wait()
			dialog "[Granny]"
			dialog "Here's ^3355FF1,000 zeny^000000."
			dialog "Do you accept this?"
			wait()
			local mresult = menu("Accept","Do not accept")
			if mresult == 1 then
				dialog "[Granny]"
				dialog "*Giggle*"
				dialog "There you go~"
				dropgold(1000)
				getitem("Candy",1)
				wait()
				dialog "[Granny]"
				dialog "*Giggle*"
				dialog "Well then..."
				dialog "See you ~"
				close()
			elseif mresult == 2 then
				dialog "[Granny]"
				dialog "Yes, that's right. Now you must ask yourself why you didn't accept the candy I offered."
				close()
			end
		else
			dialog "[Granny]"
			dialog "*Giggle giggle*"
			dialog "The time has come."
			dialog "Well then..."
			close()
		end
	else
		dialog "[Granny]"
		dialog "I am an old Sage granny who foresees everything..."
		wait()
		dialog "[Granny]"
		dialog "Have you heard of a boss monster that has been around Juno for a long time? It's known only as the ^FF3355Lord of the Dead^000000."
		wait()
		dialog "[Granny]"
		dialog "It is rumored to be from the realm of the dead. It brings many undead monsters with it, intending to lead living creatures to its cold and icy realm."
		wait()
		dialog "[Granny]"
		dialog "You have already chosen whether or not you will challenge the Lord of the Dead. All you need to do right now is understand why you made the decision."
		close()
	end
end


npc("yuno","Juno Fighter",spr_4_M_JOB_HUNTER,328,239,4,0,0,"yuno_Juno_Fighter_328239")
function yuno_Juno_Fighter_328239()
	dialog "[Sergiof]"
	dialog "My name is Sergiof,"
	dialog "the fighter who"
	dialog "serves Granny."
	wait()
	dialog "[Sergiof]"
	dialog "I will tell you about ^3355FFGrand Peco^000000 which is a high level Peco Peco. Grand Peco is faster than Peco Peco and is quite aggressive."
	wait()
	dialog "[Sergiof]"
	dialog "It attacks using its strong bill and many Peco Pecos follow it. There's quite a difference in power between Peco Peco and the Grand Peco."
	close()
end


npc("yuno","Juno Despot",spr_4_M_JOB_ASSASSIN,343,68,4,0,0,"yuno_Juno_Despot_34368")
function yuno_Juno_Despot_34368()
	local ninoh = math.random(1,1000)
	if ninoh == 1 then
		dialog "[Ninno]"
		dialog "You are very lucky to have me tell you this story. This only happens by ^FF33551 out of a 1,000 chance^000000."
		wait()
		dialog "[Ninno]"
		dialog "This world you are experiencing is actually fabricated! It's time for you to see reality for what it is!"
		wait()
		dialog "[Ninno]"
		dialog "Open your eyes! Stop being manipulated by virtual reality!"
		moveto("prontera",182,206)
		close()
	else
		dialog "[Ninno]"
		dialog "Have you ever heard of an Egyptian king who was once believed to be a son of a god? His name is ^3355FFPharoah^000000."
		wait()
		dialog "[Ninno]"
		dialog "He was rumored to be a high sorcerer that used his power to curse innocents. It is said that he is still around, placing his curses on people."
		wait()
		dialog "[Ninno]"
		dialog "As an adventurer, it's possible that you may see him in your travels. Be careful..."
		close()
	end
end


npc("yuno","Juno Sage",spr_2_F_MAGICMASTER,165,111,4,0,0,"yuno_Juno_Sage_165111")
function yuno_Juno_Sage_165111()
	local Rimorpios = math.random(1,50)
	if Rimorpios == 25 then
		if getvar(VAR_MONEY) > 4999 then
			dialog "[Le Morpheus]"
			dialog "Look in my hand. I am holding two different kinds of herbs."
			wait()
			dialog "[Le Morpheus]"
			dialog "One is a ^3355FFBlue Herb^000000 which will make you forget about reality and keep you in this virtual reality^000000."
			wait()
			dialog "[Le Morpheus]"
			dialog "The other is a ^FF3355Red Herb^000000 which will reveal to you what is true and real."
			wait()
			dialog "[Le Morpheus]"
			dialog "Whichever one you choose, you must spend ^3355FF5,000 zeny^000000. Now, please select one."
			wait()
			local mresult] = menu("Choose ^FF3355Red Herb^000000","Choose ^3355FFBlue Herb^000000.")
			if mresult == 1 then
				dialog "[Le Morpheus]"
				dialog "As you have chosen, you will forget everything, and remain in this virtual reality."
				dropgold(5000)
				getitem("Red_Herb",1)
				moveto("prontera",182,206)
				close()
			elseif mresult == 2 then
				dialog "[Le Morpheus]"
				dialog "You will see the truth."
				dropgold(5000)
				getitem("Blue_Herb",1)
				moveto("pay_dun03",200,222)
				close()
			end
		else
			dialog "[Le Morpheus]"
			dialog "Hmm. I'm sorry to say you just missed a fortunate chance. However, I can tell you don't have enough wealth to bring this fortune to fruition."
			close()
		end
	else
		dialog "[Le Morpheus]"
		dialog "^3355FFApocalypse^000000..."
		dialog "It is the name of an android that used to guard Juno long ago."
		wait()
		dialog "[Le Morpheus]"
		dialog "Because its artificial intelligence has corrupted over the years, it can no longer distinguish comrades from enemies. Sadly, that android is nothing but a mindless monster now."
		close()
	end
end

npc("yuno","Juno Artisan",spr_1_M_JOBGUIDER,157,205,4,0,0,"yuno_Juno_Artisan_157205")
function yuno_Juno_Artisan_157205()
	dialog "[Artisan]"
	dialog "*Mumble mumble...*"
	wait()
	dialog "[Artisan]"
	dialog "Oh, hello there. Let me introduce myself. I am an artisan who tries to succeed the rights and duties of item makers in Juno."
	wait()
	local mresult] = menu("About Powerful Equipment","About Unique Items","About Authentic Food","End Conversation")
	if mresult] == 1 then
		dialog "[Artisan]"
		dialog "Let me suggest the ^3355FFHoly Guard^000000 and ^3355FFHoly Avenger^000000 which are special items for Crusaders."
		wait()
		dialog "[Artisan]"
		dialog "These pieces of equipment are very light and have sufficient abilities. They also happen to possess holy power."
		wait()
		dialog "[Artisan]"
		dialog "Therefore, this equipment is more powerful over some kinds of monsters such as Ghosts or the Undead."
		wait()
		dialog "[Artisan]"
		dialog "However it is rumored that only a few chosen Crusaders are able to obtain those items due of their rarity."
		close()
	elseif mresult] == 2 then
		dialog "[Artisan]"
		dialog "It looks like a simple scroll marked with concentric circles and a star. Although the ^FF3355Worn-Out Magic Scroll^000000 is very old, it's wanted by many Sages for research purposes."
		wait()
		dialog "[Artisan]"
		dialog "It seems you can use that item when you chant a high-level magic spell."
		close()
	elseif mresult] == 3 then
		dialog "[Artisan]"
		dialog "^3355FFRice Cake^000000! Yes, it's a traditional food that's favored by a lot of people. There's a lot of nostalgic memories of old fashioned markets that are connected to the Rice Cake."
		wait()
		dialog "[Artisan]"
		dialog "Ahhh~"
		dialog "I wish I could eat a bit of Rice Cake right now."
		close()
	elseif mresult] == 4 then
		dialog "[Artisan]"
		dialog "Although Juno is known as a city of Sages, I hope you understand that ordinary people live and propser here as well. Please enjoy the unique atmosphere that Juno has to offer."
		close()
	end
end

npc("yuno","Juno Soldier",spr_8W_SOLDIER,150,283,4,0,0,"yuno_Juno_Soldier_150283")
function yuno_Juno_Soldier_150283()
	dialog "[Juno Soldier]"
	dialog "Welcome to Juno, the city of noble-mindedness."
	wait()
	dialog "[Juno Soldier]"
	dialog "There is a monster near here known as Lava Golem. This golem is made from a stone heart whose power happened to be amplified with magic power when it was swept away by molten rock."
	wait()
	dialog "[Juno Soldier]"
	dialog "The lava dripping from its body is so hot that it can melt down armor and weapons made out of high quality steel."
	wait()
	dialog "[Juno Soldier]"
	dialog "You'd better be careful when you encounter this monster. It will damage armor and weapons in the twinkling of an eye."
	close()
end

npc("yuno","Juno Soldier",spr_8W_SOLDIER,165,283,4,0,0,"yuno_Juno_Soldier_165283")
function yuno_Juno_Soldier_165283()
	dialog "[Juno Soldier]"
	dialog "Welcome to Juno, the city of noble-mindedness."
	wait()
	dialog "[Juno Soldier]"
	dialog "Geographer..."
	dialog "That monster looks like a flower blooming from the ground."
	wait()
	dialog "[Juno Soldier]"
	dialog "Strangely, it can extend its body a long distance. Even if you're far away from it, it can still pose a threat."
	wait()
	dialog "[Juno Soldier]"
	dialog "The name of this monster originated from a story about a poor geographer who, unfortunately, was eaten by this monster while he was immersed in his studies."
	close()
end

npc("yuno","Juno Soldier",spr_8W_SOLDIER,227,292,4,0,0,"yuno_Juno_Soldier_227292")
function yuno_Juno_Soldier_227292()
	dialog "[Juno Soldier]"
	dialog "Welcome to Juno, the city of noble-mindedness."
	wait()
	dialog "[Juno Soldier]"
	dialog "Near Juno, there exists a fallen angel named 'False Angel.' It feigns innocence, pretending to bless adventurers and then stabbing them in the back without any warning."
	wait()
	dialog "[Juno Soldier]"
	dialog "Don't be fooled by its appearance, or you'll find yourself in trouble."
	close()
end

npc("yuno","Juno Soldier",spr_8W_SOLDIER,165,228,4,0,0,"yuno_Juno_Soldier_165228")
function yuno_Juno_Soldier_165228()
	dialog "[Juno Soldier]"
	dialog "Welcome to Juno, the city of noble-mindedness."
	wait()
	dialog "[Juno Soldier]"
	dialog "'Goat' is a monster that was an antelope living in the high mountains that was somehow turned into a monster."
	wait()
	dialog "[Juno Soldier]"
	dialog "Even if you manage to dodge to its horns, you still need to be wary of its powerful legs."
	wait()
	dialog "[Juno Soldier]"
	dialog "Goat's legs are so strong because it's always climbing cliffs when it's not busy slaughtering the innocent."
	close()
end

npc("yuno","Juno Soldier",spr_8W_SOLDIER,150,228,4,0,0,"yuno_Juno_Soldier_150228")
function yuno_Juno_Soldier_150228()
	dialog "[Juno Soldier]"
	dialog "Welcome to Juno, the city of noble-mindedness."
	wait()
	dialog "[Juno Soldier]"
	dialog "Have you ever"
	dialog "seen a Large Jellopy?"
	dialog "Those things are huuuge!"
	wait()
	dialog "[Juno Soldier]"
	dialog "It's hard to believe"
	dialog "that such a large and"
	dialog "shining jellopy even exists!"
	close()
end

npc("yuno","Juno Soldier",spr_8W_SOLDIER,334,182,4,0,0,"yuno_Juno_Soldier_334182")
function yuno_Juno_Soldier_334182()
	dialog "[Juno Soldier]"
	dialog "Welcome to Juno, the city of noble-mindedness."
	wait()
	dialog "[Juno Soldier]"
	dialog "Among the Sage's weapons, there is a 'Dagger of Counter.'"
	wait()
	dialog "[Juno Soldier]"
	dialog "Its use is limited to the Sage class, and it increases the chance of inflicting critical attacks. So, for Sages, that dagger can be very useful, as well as make them look stylish in battle."
	close()
end


npc("yuno","Juno Soldier",spr_8W_SOLDIER,263,320,4,0,0,"yuno_Juno_Soldier_263320")
function yuno_Juno_Soldier_263320()
	dialog "[Juno Soldier]"
	dialog "Welcome to Juno, the city of noble-mindedness."
	wait()
	dialog "[Juno Soldier]"
	dialog "There is a holy shield named 'Sacred Mission' which can only be used by Crusaders."
	wait()
	dialog "[Juno Soldier]"
	dialog "It's a long and narrow shield with an angel wing engraved in the center of the front side. Against Devil and Undead monsters, it is especially powerful."
	close()
end
